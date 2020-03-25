/*
* Machine Generated source file for message "ATC Message".
* NOTE: The functions here must be completed by hand.
* Generated on 27-January-1997 at 18:34:07
* Generated from file EVENTS.XLS by Leon Rosenshein
*/

#include "MsgInc/ATCMsg.h"
#include "MsgInc/ATCCmdMsg.h"
#include "mesg.h"
#include "atcbrain.h"
#include "objectiv.h"
#include "aircrft.h"
#include "ptdata.h"
#include "MsgInc/RadioChatterMsg.h"
#include "airframe.h"
#include "PlayerOp.h"
#include "falclib.h"

#include "digi.h"
#include "flight.h"
#include "falcmesg.h"
#include "falcgame.h"
#include "falcsess.h"
#include "InvalidBufferException.h"

FalconATCMessage::FalconATCMessage(VU_ID entityId, VuTargetEntity *target, VU_BOOL loopback) : FalconEvent (ATCMsg, FalconEvent::SimThread, entityId, target, loopback)
{
//me123	RequestOutOfBandTransmit ();
		RequestReliableTransmit ();//me123
}

FalconATCMessage::FalconATCMessage(VU_MSG_TYPE type, VU_ID senderid, VU_ID target) : FalconEvent (ATCMsg, FalconEvent::SimThread, senderid, target)
{
	// Your Code Goes Here
}

FalconATCMessage::~FalconATCMessage(void)
{
	// Your Code Goes Here
}

void HandleInboundFlight(ObjectiveClass *atc, Flight flight)
{
	if (!atc || !flight){
		return;
	}

	Objective	o = (Objective)(flight->GetUnitAirbase());	
	// JBLOOK Added by M.N. for now to prevent CTD
	// when user issues "Inbound" on a carrier
	if (o && o->IsUnit()){								
		return;
	}
	
	int index, tod, time_in_minutes;
	FalconRadioChatterMessage *radioMessage = NULL;
	ATCBrain* atcBrain = atcBrain = atc->brain;
	AircraftClass *aircraft = (AircraftClass*)flight->GetComponentLead();
	int delay = 7 * CampaignSeconds;
	if (!PlayerOptions.PlayerRadioVoice){
	    delay = 500;
	}
	atcBrain->AddInboundFlight(flight);

	index = atcBrain->FindBestLandingRunway( aircraft, TRUE);

	if(index)
	{
		int randNum = rand()%3;
		switch(randNum)
		{
		case 0:
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND1, FalconLocalGame);
			//M.N. changed to 32767 -> flexibly use randomized value of max available eval indexes
			radioMessage->dataBlock.edata[4]	= 32767;
			radioMessage->dataBlock.edata[5]	= (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(index));
			if(rand()%2)
				radioMessage->dataBlock.edata[6]	= 4;
			else
				radioMessage->dataBlock.edata[6]	= -1;
			break;

		case 1:
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND2, FalconLocalGame);

			if(rand()%2)
			{
				radioMessage->dataBlock.edata[3]	= (short)(rand()%3);
			}
			else
			{
				time_in_minutes =  TheCampaign.GetMinutesSinceMidnight();
				if (time_in_minutes < 180)//3am
					tod = 1;
				else if(time_in_minutes < 720 )//noon
					tod = 0;
				else if(time_in_minutes < 1020 ) //5pm
					tod = 2;
				else
					tod = 1;

				radioMessage->dataBlock.edata[3]	= (short)(3 + tod + (rand()%3)*3);
			}

			if(rand()%2)
				radioMessage->dataBlock.edata[4]	= 4;
			else
				radioMessage->dataBlock.edata[4]	= -1;
			break;

		case 2:
		default: // keep intelliSense happy
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND3, FalconLocalGame);
			radioMessage->dataBlock.edata[4]	= -1;
			radioMessage->dataBlock.edata[5]	= -1;
			radioMessage->dataBlock.edata[6]	= 32767;
			radioMessage->dataBlock.edata[7]	= (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(index));
			if(rand()%2)
				radioMessage->dataBlock.edata[8]	= 4;
			else
				radioMessage->dataBlock.edata[8]	= -1;
			break;
		}
		
		radioMessage->dataBlock.time_to_play= delay;
		FalconSendMessage(radioMessage, TRUE);
	}
	else
	{
		VuListIterator		flightIter(flight->GetComponents());
		aircraft = (AircraftClass*) flightIter.GetFirst();
		while(aircraft)
		{
			//all runways destroyed, divert 'em
			FalconATCCmdMessage* ATCCmdMessage = new FalconATCCmdMessage( aircraft->Id(), FalconLocalGame );
			ATCCmdMessage->dataBlock.from		= atc->Id();
			ATCCmdMessage->dataBlock.type		= FalconATCCmdMessage::Divert;
			ATCCmdMessage->dataBlock.rwindex	= 0;
			FalconSendMessage(ATCCmdMessage, FALSE);						// Send it
			aircraft = (AircraftClass*) flightIter.GetNext();
		}		
	}
}

void HandleInbound( ObjectiveClass *atc, AircraftClass *aircraft)
{
	if(!atc || !aircraft){
		return;
	}

	int index, tod, time_in_minutes;
	FalconRadioChatterMessage *radioMessage = NULL;
	ATCBrain* atcBrain = atcBrain = atc->brain;
	int delay = 7 * CampaignSeconds;
	if (!PlayerOptions.PlayerRadioVoice){
	    delay = (int)(0.5 * CampaignSeconds);
	}

	atcBrain->AddInbound(aircraft);

	index = atcBrain->FindBestLandingRunway( aircraft, TRUE);
	if(index)
	{
		int randNum = rand()%3;
		switch(randNum)
		{
		case 0:
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND1, FalconLocalGame);
			radioMessage->dataBlock.edata[4]	= 32767;
			radioMessage->dataBlock.edata[5]	= (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(index));
			if(rand()%2)
				radioMessage->dataBlock.edata[6]	= 4;
			else
				radioMessage->dataBlock.edata[6]	= -1;
			break;

		case 1:
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND2, FalconLocalGame);

			if(rand()%2)
			{
				radioMessage->dataBlock.edata[3]	= (short)(rand()%3);
			}
			else
			{
				time_in_minutes =  TheCampaign.GetMinutesSinceMidnight();
				if (time_in_minutes < 180)//3am
					tod = 1;
				else if(time_in_minutes < 720 )//noon
					tod = 0;
				else if(time_in_minutes < 1020 ) //5pm
					tod = 2;
				else
					tod = 1;

				radioMessage->dataBlock.edata[3]	= (short)(3 + tod + (rand()%3)*3);
			}

			if(rand()%2)
				radioMessage->dataBlock.edata[4]	= 4;
			else
				radioMessage->dataBlock.edata[4]	= -1;
			break;

		case 2:
		default:// keep intelliSense happy
			radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND3, FalconLocalGame);
			radioMessage->dataBlock.edata[4]	= -1;
			radioMessage->dataBlock.edata[5]	= -1;
			radioMessage->dataBlock.edata[6]	= 32767;
			radioMessage->dataBlock.edata[7]	= (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(index));
			if(rand()%2)
				radioMessage->dataBlock.edata[8]	= 4;
			else
				radioMessage->dataBlock.edata[8]	= -1;
			break;
		}
		
		radioMessage->dataBlock.time_to_play= delay;
		FalconSendMessage(radioMessage, TRUE);
	}
	else
	{
		//all runways destroyed, divert 'em
		FalconATCCmdMessage* ATCCmdMessage = new FalconATCCmdMessage( aircraft->Id(), FalconLocalGame );
		ATCCmdMessage->dataBlock.from		= atc->Id();
		ATCCmdMessage->dataBlock.type		= FalconATCCmdMessage::Divert;
		ATCCmdMessage->dataBlock.rwindex	= 0;
		FalconSendMessage(ATCCmdMessage, FALSE);						// Send it
	}
}

int FalconATCMessage::Process(uchar autodisp)
{
	AircraftClass *aircraft = (AircraftClass*)vuDatabase->Find(dataBlock.from );
	ObjectiveClass *atc = (ObjectiveClass*)vuDatabase->Find(EntityId());
	runwayQueueStruct *info = NULL;
	FalconRadioChatterMessage *radioMessage = NULL;
	
	if (autodisp)
		return 0;

	float cosAngle=0.0F, dx=0.0F, dy=0.0F, finalHdg=0.0F;
	float finalX=0.0F, finalY=0.0F, baseX=0.0F, baseY=0.0F, x=0.0F ,y=0.0F,z=0.0F, dist=0.0F;
	int	taxiPoint=0, tod=0, time_in_minutes=0;
	int delay = 7 * CampaignSeconds;
	if (!PlayerOptions.PlayerRadioVoice)
	    delay = (int)(0.5 * CampaignSeconds);

	if (aircraft && aircraft->IsAirplane())
	{      
		DigitalBrain *acBrain = aircraft->DBrain();
		ATCBrain*	atcBrain = NULL;

		if(atc)
		{
			// RV - Biker - This should avoid CTD when calling clearance for landing on carrier
			if (!atc->IsObjective())
				return 0;

			atcBrain = atc->brain;
			dx = aircraft->XPos() - atc->XPos();
			dy = aircraft->YPos() - atc->YPos();
			dist = dx*dx + dy*dy;
		}

		switch (dataBlock.type)
		{
		case ContactApproach:
        case RequestClearance:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
			{
				if(aircraft->pctStrength < STRENGTH_PCT_FOR_EMERG_LDG)
					SendCallToATC(aircraft, EntityId(), rcLANDCLEAREMERGENCY, FalconLocalSession);
				else
					SendCallToATC(aircraft, EntityId(), rcLANDCLEARANCE, FalconLocalSession);
			}
			
			if(atcBrain && atc->IsLocal())
			{
				info = atcBrain->InList(aircraft->Id());
				if( info )
				{
					cosAngle = atcBrain->DetermineAngle(aircraft, acBrain->Runway(), AtcStatusEnum::lOnFinal);

					if(info->status >= AtcStatusEnum::tReqTaxi)
					{
						if(!aircraft->OnGround())
						{
							if(dist < (TOWER_RANGE + 100) * NM_TO_FT * NM_TO_FT)
							{
								if(!aircraft->IsPlayer() && aircraft->pctStrength < STRENGTH_PCT_FOR_EMERG_LDG)
									atcBrain->RequestEmerClearance(aircraft);
								else
									atcBrain->RequestClearance(aircraft);
							}
							else if(dist < APPROACH_RANGE * NM_TO_FT * NM_TO_FT && dist >= (TOWER_RANGE + 100) * NM_TO_FT * NM_TO_FT)
							{
								if(!aircraft->IsPlayer() && aircraft->GetCampaignObject()->GetComponentLead() == aircraft)
									HandleInboundFlight( atc, (Flight)aircraft->GetCampaignObject());
								else
									HandleInbound(atc, aircraft);			
							}
							else
							{
								//note this comm should be rcOUTSIDEAIRSPACE, but Joe misnamed it
								radioMessage = CreateCallFromATC(atc, aircraft, rcOUTSIDEAIRSPEED, FalconLocalGame);
								radioMessage->dataBlock.edata[4]	= (short)(rand()%2);
								radioMessage->dataBlock.time_to_play= delay;
								atcBrain->RemoveTraffic(aircraft->Id(), PtHeaderDataTable[info->rwindex].runwayNum);
							}
							info->lastContacted = SimLibElapsedTime;
						}
						break;
					}
					else if(info->rwindex)
					{
						switch(info->status)
						{
						case AtcStatusEnum::noATC:

						case AtcStatusEnum::lReqClearance:
						case AtcStatusEnum::lReqEmerClearance:

						case AtcStatusEnum::lIngressing:
						case AtcStatusEnum::lTakingPosition:
							ShiWarning("This should never happen!");
							radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND1, FalconLocalGame);
							//M.N. changed to 32767 -> flexibly use randomized value of max available eval indexes
							radioMessage->dataBlock.edata[4]	= 32767;
							radioMessage->dataBlock.edata[5]	= (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(info->rwindex));
							if(rand()%2)
								radioMessage->dataBlock.edata[6]	= 4;
							else
								radioMessage->dataBlock.edata[6]	= -1;
							break;

						case AtcStatusEnum::lAborted:
							atcBrain->FindAbortPt(aircraft, &x, &y, &z);
							radioMessage = CreateCallFromATC (atc, aircraft, rcATCGOAROUND, FalconLocalSession);
					
							atcBrain->CalculateStandRateTurnToPt(aircraft, x, y, &finalHdg);
							radioMessage->dataBlock.edata[3] = (short)FloatToInt32(finalHdg);
							//M.N. changed to 32767 -> flexibly use randomized value of max available eval indexes
							radioMessage->dataBlock.edata[4] = 32767;
							break;

						case AtcStatusEnum::lEmerHold:
						case AtcStatusEnum::lHolding:
							radioMessage = CreateCallFromATC (atc, aircraft, rcATCORBIT2, FalconLocalGame);
							radioMessage->dataBlock.edata[2] = -1; //altitude in thousands
							radioMessage->dataBlock.edata[3] = -1; //altitude in thousands
							break;

						case AtcStatusEnum::lFirstLeg:
						case AtcStatusEnum::lToBase:
						case AtcStatusEnum::lToFinal:
							radioMessage = CreateCallFromATC(atc, aircraft, rcATCLANDSEQUENCE, FalconLocalGame);
							radioMessage->dataBlock.edata[4] = (short)atcBrain->GetLandingNumber(info);
							break;

						case AtcStatusEnum::lOnFinal:
						case AtcStatusEnum::lClearToLand:
							if(aircraft->DBrain()->IsSetATC(DigitalBrain::ClearToLand))
							{
								radioMessage = CreateCallFromATC (atc, aircraft, rcCLEAREDLAND, FalconLocalGame);
								radioMessage->dataBlock.edata[4] = (short)atcBrain->GetRunwayName(atcBrain->GetOppositeRunway(acBrain->Runway()));
							}
							else
							{
								radioMessage = CreateCallFromATC(atc, aircraft, rcATCLANDSEQUENCE, FalconLocalGame);
								radioMessage->dataBlock.edata[4] = (short)atcBrain->GetLandingNumber(info);
							}
							break;

						case AtcStatusEnum::lLanded:
							radioMessage = CreateCallFromATC (atc, aircraft, rcTAXICLEAR, FalconLocalGame);
							break;

						case AtcStatusEnum::lTaxiOff:
							//there isn't anything better to say, oh well :)
							radioMessage = CreateCallFromATC (atc, aircraft, rcTAXICLEAR, FalconLocalGame);
							break;

						case AtcStatusEnum::lEmergencyToBase:
						case AtcStatusEnum::lEmergencyToFinal:
						case AtcStatusEnum::lEmergencyOnFinal:
							atcBrain->RequestClearance(aircraft);
							return 1;
							break;

						case AtcStatusEnum::lCrashed:
							radioMessage = CreateCallFromATC (atc, aircraft, rcCLEAREDEMERGLAND, FalconLocalGame);
							radioMessage->dataBlock.edata[3] = -1;

							radioMessage->dataBlock.edata[4] = -1;
							//M.N. changed to 32767 -> flexibly use randomized value of max available eval indexes
							radioMessage->dataBlock.edata[5] = 32767;
							break;
						}
					}
					else
					{
						radioMessage = CreateCallFromATC(atc, aircraft, rcCONTINUEINBOUND2, FalconLocalGame);

						if(rand()%2)
						{
							radioMessage->dataBlock.edata[3]	= (short)(rand()%3);
						}
						else
						{
							time_in_minutes =  TheCampaign.GetMinutesSinceMidnight();
							if (time_in_minutes < 180)//3am
								tod = 1;
							else if(time_in_minutes < 720 )//noon
								tod = 0;
							else if(time_in_minutes < 1020 ) //5pm
								tod = 2;
							else
								tod = 1;

							radioMessage->dataBlock.edata[3]	= (short)(3 + tod + (rand()%3)*3);
						}

						if(rand()%2)
							radioMessage->dataBlock.edata[4]	= 4;
						else
							radioMessage->dataBlock.edata[4]	= -1;

						atcBrain->SendCmdMessage(aircraft, info);
					}
					if (radioMessage)
					{
						info->lastContacted = SimLibElapsedTime;
						if (PlayerOptions.PlayerRadioVoice)
						    radioMessage->dataBlock.time_to_play= 2 * CampaignSeconds;
						else 
						    radioMessage->dataBlock.time_to_play= delay;
						FalconSendMessage(radioMessage, TRUE);
					}
				}
				else
				{
					if(dist <= (TOWER_RANGE + 100) * NM_TO_FT * NM_TO_FT)
					{
						if(aircraft->GetCampaignObject()->GetComponentLead() == aircraft){
							AircraftClass *element = NULL;
							Flight flight = (Flight)aircraft->GetCampaignObject();
							VuListIterator	flightIter(flight->GetComponents());
							element = (AircraftClass*) flightIter.GetFirst();
							while(element)
							{
								runwayQueueStruct *tempinfo = atcBrain->InList(element->Id());
								if(!tempinfo)
								{
									if( !element->IsPlayer() && element->pctStrength < STRENGTH_PCT_FOR_EMERG_LDG)
									{
										SendCallToATC(element, EntityId(), rcLANDCLEAREMERGENCY, FalconLocalGame);
										atcBrain->RequestEmerClearance(element);
									}
									else
										atcBrain->RequestClearance(element);
								}
								element = (AircraftClass*) flightIter.GetNext();
							}
						}
						else
						{
							if(!aircraft->IsPlayer() && aircraft->pctStrength < STRENGTH_PCT_FOR_EMERG_LDG)
							{
								SendCallToATC(aircraft, EntityId(), rcLANDCLEAREMERGENCY, FalconLocalGame);
								atcBrain->RequestEmerClearance(aircraft);
							}
							else
								atcBrain->RequestClearance(aircraft);
						}
					}
					else if(dist < APPROACH_RANGE * NM_TO_FT * NM_TO_FT && dist > (TOWER_RANGE + 100) * NM_TO_FT * NM_TO_FT)
					{
						if(aircraft->GetCampaignObject()->GetComponentLead() == aircraft)
							HandleInboundFlight( atc, (Flight)aircraft->GetCampaignObject());
						else
							HandleInbound(atc, aircraft);						
					}
					else
					{
						//note this comm should be rcOUTSIDEAIRSPACE, but Joe misnamed it
						radioMessage = CreateCallFromATC(atc, aircraft, rcOUTSIDEAIRSPEED, FalconLocalGame);
						radioMessage->dataBlock.edata[4]	= (short)(rand()%2);
						radioMessage->dataBlock.time_to_play= delay;
						FalconSendMessage(radioMessage, TRUE);
					}
				}
			}
			break;
			
        case RequestEmerClearance:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
				SendCallToATC(aircraft, EntityId(), rcLANDCLEAREMERGENCY, FalconLocalSession);
			if(atcBrain && atc->IsLocal())
				atcBrain->RequestEmerClearance(aircraft);			
			break;
		
        case RequestTakeoff:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
				SendCallToATC(aircraft, EntityId(), rcREADYFORDERARTURE, FalconLocalSession);
			if(atcBrain && atc->IsLocal())
				atcBrain->RequestTakeoff(aircraft);
			break;
			
        case RequestTaxi:
#define TEST_RADIO 0
#if TEST_RADIO
			// sfr: testing client problem
			// im just echoing an answer here, nothing more
			if(atcBrain && atc->IsLocal()){
				//SendCallFromAwacs((Flight)aircraft->GetCampaignObject(), rcNOTASKING , static_cast<VuTargetEntity*>(vuDatabase->Find(this->Sender())));
				SendCallFromATC(atc, aircraft, rcOUTSIDEAIRSPEED, static_cast<VuTargetEntity*>(vuDatabase->Find(aircraft->OwnerId())));
				//SendCallToATC(aircraft, atc->Id(), rcREADYFORDERARTURE, static_cast<VuTargetEntity*>(vuDatabase->Find(aircraft->OwnerId())));
			}
#else
			// sfr: comment for testing... wanna hear only answer...
			if(!aircraft->IsPlayer() || !aircraft->IsLocal()){
				SendCallToATC(aircraft, EntityId(), rcREADYFORDERARTURE, FalconLocalSession);
			}
			if(atcBrain && atc->IsLocal()){
				atcBrain->RequestTaxi(aircraft);
			}

#endif
			break;
// M.N. 2001-12-20
		case AbortApproach:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
				SendCallToATC(aircraft, EntityId(), rcABORTAPPROACH, FalconLocalSession);
				//atcBrain->AbortApproach(aircraft);//Cobra sfr: changed to match repo
			if (atcBrain && atc->IsLocal())
				atcBrain->AbortApproach(aircraft);
			break;

// RAS - 22Jan04 - Set flag for traffic in sight call 
		case TrafficInSight:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
				SendCallToATC(aircraft, EntityId(), rcCOPY, FalconLocalSession);
			if (atcBrain && atc->IsLocal())
				atcBrain->trafficInSightFlag = TRUE;
			break;
// TJL 08/16/04 - Set flag for Hotpit Refueling //Cobra 10/31/04 TJL
 		case RequestHotpitRefuel:
			if(!aircraft->IsPlayer() || !aircraft->IsLocal())
 				SendCallToATC(aircraft, EntityId(), rcCOPY, FalconLocalSession);
				aircraft->requestHotpitRefuel = TRUE; //Cobra 11/13/04 TJL will this make online work?
 			if (atcBrain && atc->IsLocal())
 				aircraft->requestHotpitRefuel = TRUE;
 			break;
		case UpdateStatus:
			if(atcBrain)
			{
				if(atc->IsLocal())
				{
					info = atcBrain->InList(aircraft->Id());
					if(info)
					{
						switch(dataBlock.status)
						{
						case AtcStatusEnum::noATC:
							if(info->rwindex)
								atcBrain->RemoveTraffic(aircraft->Id(), PtHeaderDataTable[info->rwindex].runwayNum);
							else
								atcBrain->RemoveInbound(info);
							break;
						case AtcStatusEnum::lReqClearance:
						case AtcStatusEnum::lReqEmerClearance:
						case AtcStatusEnum::tReqTaxi:
						case AtcStatusEnum::tReqTakeoff:
						case AtcStatusEnum::lIngressing:
						case AtcStatusEnum::lTakingPosition:
							break;
						case AtcStatusEnum::tFlyOut:
							info->lastContacted = SimLibElapsedTime;
							info->status = AtcStatusEnum::noATC;
							break;
						case AtcStatusEnum::lCrashed:
							info->lastContacted = SimLibElapsedTime;
							info->status = AtcStatusEnum::lCrashed;
							{
								atcBrain->RemoveFromAllOtherATCs(aircraft);
								int Runway = atcBrain->IsOverRunway(aircraft);
								if(GetQueue(Runway) != GetQueue(info->rwindex))
								{
									atcBrain->RemoveTraffic(aircraft->Id(), GetQueue(info->rwindex));
									atcBrain->AddTraffic(aircraft->Id(), AtcStatusEnum::lCrashed, Runway, SimLibElapsedTime);
								}
								atcBrain->FindNextEmergency(GetQueue(Runway));
								atcBrain->SetEmergency(GetQueue(Runway));
							}
							break;
						default:
							info->lastContacted = SimLibElapsedTime;
							info->status = (AtcStatusEnum)dataBlock.status;
							break;
						}
					}
					else
					{
						//he thinks we already know about him, orig owner of atc must have dropped
						//offline, so we need to put him into the appropriate list
						switch(dataBlock.status)
						{
							case AtcStatusEnum::lIngressing:
								break;
							case AtcStatusEnum::lTakingPosition:
							case AtcStatusEnum::lAborted:
							case AtcStatusEnum::lEmerHold:
							case AtcStatusEnum::lHolding:
							case AtcStatusEnum::lFirstLeg:
							case AtcStatusEnum::lToBase:
							case AtcStatusEnum::lToFinal:
							case AtcStatusEnum::lOnFinal:
							case AtcStatusEnum::lLanded:
							case AtcStatusEnum::lTaxiOff:
							case AtcStatusEnum::lEmergencyToBase:
							case AtcStatusEnum::lEmergencyToFinal:
							case AtcStatusEnum::lEmergencyOnFinal:
							case AtcStatusEnum::lClearToLand:
								atcBrain->RequestClearance(aircraft);			
								break;
							case AtcStatusEnum::lCrashed:
								{
									atcBrain->RemoveFromAllOtherATCs(aircraft);
									int Runway = atcBrain->IsOverRunway(aircraft);
									atcBrain->AddTraffic(aircraft->Id(), AtcStatusEnum::lCrashed, Runway, SimLibElapsedTime);
									atcBrain->FindNextEmergency(GetQueue(Runway));
									atcBrain->SetEmergency(GetQueue(Runway));
								}
								break;
							case AtcStatusEnum::tEmerStop:
							case AtcStatusEnum::tTaxi:
							case AtcStatusEnum::tHoldShort:
							case AtcStatusEnum::tPrepToTakeRunway:
							case AtcStatusEnum::tTakeRunway:
							case AtcStatusEnum::tTakeoff:
								atcBrain->RequestTaxi(aircraft);
								break;
							case AtcStatusEnum::tFlyOut:
								break;
							default:
								break;
						}
					}
				}

				//update track point, taxi point, timer, status, etc...
				switch(dataBlock.status)
				{
				case AtcStatusEnum::noATC:
					break;
				case AtcStatusEnum::lClearToLand:
					break;
				case AtcStatusEnum::lIngressing:
				case AtcStatusEnum::lTakingPosition:
					atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &x, &y);
					acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lTakingPosition));
					break;
				case AtcStatusEnum::lEmerHold:
				case AtcStatusEnum::lHolding:
					acBrain->SetTrackPoint(aircraft->XPos(), aircraft->YPos(), atcBrain->GetAltitude(aircraft, AtcStatusEnum::lHolding));
					break;

				case AtcStatusEnum::lFirstLeg:
					if(acBrain->ATCStatus() != AtcStatusEnum::lFirstLeg && acBrain->ATCStatus() <= AtcStatusEnum::lOnFinal)
					{
						atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &finalX, &finalY);
						cosAngle = atcBrain->DetermineAngle(aircraft, acBrain->Runway(), AtcStatusEnum::lFirstLeg);
						if(cosAngle < 0.0F)
						{
							atcBrain->FindBasePt(aircraft, acBrain->Runway(), finalX, finalY, &baseX, &baseY);
							atcBrain->FindFirstLegPt(aircraft, acBrain->Runway(), acBrain->RwTime(), baseX, baseY, TRUE, &x, &y);
						}
						else
						{
							atcBrain->FindFirstLegPt(aircraft, acBrain->Runway(), acBrain->RwTime(), finalX, finalY, FALSE, &x, &y);
						}

						acBrain->SetATCStatus(AtcStatusEnum::lFirstLeg);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lFirstLeg));
						acBrain->CalculateNextTurnDistance();
					}

					if( !aircraft->IsPlayer() )
					{
						atcBrain->MakeVectorCall(aircraft, FalconLocalSession);
					}
					break;

				case AtcStatusEnum::lToBase:
					if(acBrain->ATCStatus() != AtcStatusEnum::lToBase && acBrain->ATCStatus() <= AtcStatusEnum::lOnFinal)
					{
						atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &finalX, &finalY);
						atcBrain->FindBasePt(aircraft, acBrain->Runway(), finalX, finalY, &baseX, &baseY);
						acBrain->SetATCStatus(AtcStatusEnum::lToBase);
						acBrain->SetTrackPoint(baseX, baseY, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lToBase));
						acBrain->CalculateNextTurnDistance();
					}

					if( !aircraft->IsPlayer() )
					{
						atcBrain->MakeVectorCall(aircraft, FalconLocalSession);
					}
					break;

				case AtcStatusEnum::lToFinal:
					if(acBrain->ATCStatus() != AtcStatusEnum::lToFinal && acBrain->ATCStatus() <= AtcStatusEnum::lOnFinal)
					{
						atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &finalX, &finalY);
						acBrain->SetATCStatus(AtcStatusEnum::lToFinal);
						acBrain->SetTrackPoint(finalX, finalY, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lToFinal));
						acBrain->CalculateNextTurnDistance();
					}

					if( !aircraft->IsPlayer() )
					{
						atcBrain->MakeVectorCall(aircraft, FalconLocalSession);
					}
					break;

				case AtcStatusEnum::lOnFinal:
					TranslatePointData (atc, GetFirstPt(acBrain->Runway()), &x, &y);
					//if we sent the message we already know this				
					if(acBrain->ATCStatus() != AtcStatusEnum::lOnFinal && acBrain->ATCStatus() <= AtcStatusEnum::lOnFinal)
					{						
						acBrain->SetATCStatus(AtcStatusEnum::lOnFinal);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lOnFinal));
						acBrain->CalculateNextTurnDistance();
					}

					if( !aircraft->IsPlayer() )
					{
						radioMessage = CreateCallFromATC (atc, aircraft, rcTURNTOFINAL, FalconLocalSession);
#if 0
						//MI Turn final for AI fix
						if(atcBrain->CalculateStandRateTurnToPt(aircraft, x, y, &finalHdg) > 0)
							radioMessage->dataBlock.edata[2] = 1;
						else
							radioMessage->dataBlock.edata[2] = 0;
#else
						if(atcBrain->CalculateStandRateTurnToPt(aircraft, x, y, &finalHdg) > 0)
							radioMessage->dataBlock.edata[2] = 0;
						else
							radioMessage->dataBlock.edata[2] = 1;
#endif	
						finalHdg = PtHeaderDataTable[acBrain->Runway()].data + 180.0F;
						if(finalHdg > 360)
							finalHdg -= 360;

						radioMessage->dataBlock.edata[3] = (short)FloatToInt32(finalHdg);
						//M.N. changed to 32767 -> flexibly use randomized value of max available eval indexes
						radioMessage->dataBlock.edata[4] = 32767; //vector type
						FalconSendMessage(radioMessage, TRUE);
					}
					break;


				case AtcStatusEnum::lLanded:
					//if we sent the message we already know this	
					if(acBrain->ATCStatus() != AtcStatusEnum::lLanded)
					{
						acBrain->SetATCStatus(AtcStatusEnum::lLanded);
						taxiPoint = GetFirstPt(acBrain->Runway());
						TranslatePointData (atc,GetNextPt(taxiPoint) , &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lLanded));
					}
					break;

				case AtcStatusEnum::lTaxiOff:
					break;

				case AtcStatusEnum::lAborted:
					if(acBrain->ATCStatus() != AtcStatusEnum::lAborted)
					{
						atcBrain->FindAbortPt(aircraft, &x, &y, &z);
						acBrain->SetATCStatus(AtcStatusEnum::lAborted);
						acBrain->SetTrackPoint(x, y, z);
					}

					if(atc->IsLocal())
					{
						atcBrain->RemoveTraffic(aircraft->Id(), PtHeaderDataTable[acBrain->Runway()].runwayNum);
					}
					break;

				case AtcStatusEnum::lEmergencyToBase:
					if(acBrain->ATCStatus() != AtcStatusEnum::lEmergencyToBase)
					{
						atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &finalX, &finalY);
						atcBrain->FindBasePt(aircraft, acBrain->Runway(), finalX, finalY, &baseX, &baseY);
						acBrain->SetATCStatus(AtcStatusEnum::lEmergencyToBase);
						acBrain->SetTrackPoint(baseX, baseY, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lEmergencyToBase));
					}
					break;

				case AtcStatusEnum::lEmergencyToFinal:
					if(acBrain->ATCStatus() != AtcStatusEnum::lEmergencyToFinal)
					{
						atcBrain->FindFinalPt(aircraft, acBrain->Runway(), &finalX, &finalY);
						acBrain->SetATCStatus(AtcStatusEnum::lEmergencyToFinal);
						acBrain->SetTrackPoint(finalX, finalY, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lEmergencyToFinal));
					}
					break;

				case AtcStatusEnum::lEmergencyOnFinal:
					if(acBrain->ATCStatus() != AtcStatusEnum::lEmergencyOnFinal)
					{
						TranslatePointData (atc, GetFirstPt(acBrain->Runway()), &x, &y);
						acBrain->SetATCStatus(AtcStatusEnum::lEmergencyOnFinal);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::lEmergencyOnFinal));
					}
					break;

				case AtcStatusEnum::lCrashed:
					acBrain->SetATCStatus(AtcStatusEnum::lCrashed);
					break;

				case AtcStatusEnum::tEmerStop:
					acBrain->SetATCStatus(AtcStatusEnum::tEmerStop);
					break;

				case AtcStatusEnum::tTaxi:
					if(acBrain->ATCStatus() != AtcStatusEnum::tTaxi)
					{
						acBrain->SetATCStatus(AtcStatusEnum::tTaxi);
						TranslatePointData (atc,acBrain->GetTaxiPoint() , &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::tTaxi));
					}
					break;

				case AtcStatusEnum::tHoldShort:
					acBrain->ClearATCFlag(DigitalBrain::PermitRunway);
					acBrain->ClearATCFlag(DigitalBrain::PermitTakeoff);

					if(acBrain->ATCStatus() != AtcStatusEnum::tHoldShort)
					{
						acBrain->SetATCStatus(AtcStatusEnum::tHoldShort);
						taxiPoint = GetFirstPt(acBrain->Runway());
						taxiPoint = GetNextPt(taxiPoint);
						TranslatePointData (atc,taxiPoint , &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::tHoldShort));
					}
					break;

				case AtcStatusEnum::tPrepToTakeRunway:
					acBrain->SetATCFlag(DigitalBrain::PermitTakeRunway);
					if(acBrain->ATCStatus() != AtcStatusEnum::tTaxi)
					{
						acBrain->SetATCStatus(AtcStatusEnum::tTaxi);
						if(PtDataTable[acBrain->GetTaxiPoint()].type == TakeoffPt)
							atcBrain->FindTakeoffPt((Flight)aircraft->GetCampaignObject(), aircraft->vehicleInUnit, acBrain->Runway(), &x, &y);
						else
							TranslatePointData (atc,acBrain->GetTaxiPoint() , &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::tTaxi));
					}
					break;

				case AtcStatusEnum::tTakeRunway:
					if(acBrain->ATCStatus() != AtcStatusEnum::tTakeRunway)
					{
						acBrain->SetATCFlag(DigitalBrain::PermitTakeRunway);
						acBrain->SetATCStatus(AtcStatusEnum::tTakeRunway);
						atcBrain->FindTakeoffPt((Flight)aircraft->GetCampaignObject(), aircraft->vehicleInUnit, acBrain->Runway(), &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::tTakeRunway));
					}
					break;

				case AtcStatusEnum::tTakeoff:
					if(acBrain->ATCStatus() != AtcStatusEnum::tTakeoff)
					{
						acBrain->SetATCFlag(DigitalBrain::PermitRunway);
						acBrain->SetATCFlag(DigitalBrain::PermitTakeoff);
						acBrain->SetATCStatus(AtcStatusEnum::tTakeRunway);
						atcBrain->FindRunwayPt((Flight)aircraft->GetCampaignObject(), aircraft->vehicleInUnit, acBrain->Runway(), &x, &y);
						acBrain->SetTrackPoint(x, y, atcBrain->GetAltitude(aircraft, AtcStatusEnum::tTakeRunway));
					}
					break;

				case AtcStatusEnum::tTaxiBack:
					if(acBrain->ATCStatus() != AtcStatusEnum::tTaxiBack)
					{
						acBrain->SetATCStatus(AtcStatusEnum::tTaxiBack);
					}
					break;

				case AtcStatusEnum::tFlyOut:
					if(acBrain->ATCStatus() != AtcStatusEnum::tFlyOut)
					{
						acBrain->ResetATC();
					}
				default:
					break;
				}
			}
			break;
		}
	}
	return 1;
}

