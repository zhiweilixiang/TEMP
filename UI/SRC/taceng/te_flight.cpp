///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//
// Tactical Engagement - Robin Heydon
//
// Implements the user interface for the tactical engagement section
// of falcon 4.0
//
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#include <windows.h>
#include <ddraw.h>
#include "unit.h"
#include "team.h"
#include "CmpGlobl.h"
#include "CampCell.h"
#include "CampTerr.h"
#include "Listadt.h"
#include "objectiv.h"
#include "Campaign.h"
#include "campmap.h"
#include "campwp.h"
#include "campstr.h"
#include "squadron.h"
#include "feature.h"
#include "pilot.h"
#include "team.h"
#include "find.h"
#include "misseval.h"
#include "cmpclass.h"
#include "ui95_dd.h"
#include "chandler.h"
#include "ui95_ext.h"
#include "AirUnit.h"
#include "uicomms.h"
#include "userids.h"
#include "classtbl.h"
#include "chandler.h"
#include "ui95_ext.h"
#include "uicomms.h"
#include "userids.h"
#include "textids.h"
#include "tac_class.h"
#include "te_defs.h"
#include "division.h"
#include "cmap.h"
#include "ui_cmpgn.h"
#include "ACSelect.h"

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

void GetFlightStatus (Flight element, _TCHAR buffer[]);
void MakeIndividualATO(VU_ID flightID);
void GetMissionTarget(Package curpackage,Flight curflight,_TCHAR Buffer[]);
void SetupFlightSpecificControls (Flight flt);
void PickCampaignPlaneCB(long ID,short hittype,C_Base *control);

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

#define MAX_TACTICAL_MISSIONS	1000

typedef struct
{
	double CampTime;
	VU_ID MissionID;
	_TCHAR StartTime[20];
	_TCHAR MissionType[20];
	_TCHAR Package[20];
	_TCHAR Status[20];
} FlightInfo;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

static uint mission_count;
static FlightInfo flights[MAX_TACTICAL_MISSIONS];

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

extern VU_ID
	gPlayerFlightID,
	gCurrentFlightID,
	gSelectedFlightID,
	gActiveFlightID;

extern C_Map
	*gMapMgr;

#if 0
static long PlaneIDTable[4][4]=
{
	{ TAC_1_1,0,0,0,},
	{ TAC_2_1,TAC_2_2,0,0,},
	{ TAC_3_1,TAC_3_2,TAC_3_3,0,},
	{ TAC_4_1,TAC_4_2,TAC_4_3,TAC_4_4,},
};
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

static void pick_tactical_plane (long ID, short hittype, C_Base *control);
#endif
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

void hookup_tactical_pick (C_Window *win)
{
	C_Button
		*button;

	button=(C_Button *)win->FindControl(CB_1_1);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_2_1);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_2_2);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_3_1);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_3_2);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_3_3);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_4_1);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_4_2);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_4_3);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);

	button=(C_Button *)win->FindControl(CB_4_4);
	if(button)
		button->SetCallback(PickCampaignPlaneCB);
}

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

extern MissionDataType MissionData[];

// KCK: These are used by the UI to create it's list boxes.
int IsValidMission (int dindex, MissionTypeEnum mission)
	{
	int					role = MissionData[(uchar)mission].skill;
	UnitClassDataType	*uc;

	switch (mission)
		{
		case MissionTypeEnum::AMIS_NONE:
		case MissionTypeEnum::AMIS_SAD:
		case MissionTypeEnum::AMIS_BAI:
		case MissionTypeEnum::AMIS_ABORT:
		case MissionTypeEnum::AMIS_ALERT:
		case MissionTypeEnum::AMIS_INTSTRIKE:
			return FALSE;
			break;
		case MissionTypeEnum::AMIS_STSTRIKE:
			uc = (UnitClassDataType*) (Falcon4ClassTable[dindex].dataPtr);
			if (uc->Scores[role] && (uc->Flags & VEH_STEALTH))
				return TRUE;
			break;
		case MissionTypeEnum::AMIS_PATROL:
		case MissionTypeEnum::AMIS_RECONPATROL:
		case MissionTypeEnum::AMIS_AIRCAV:
		case MissionTypeEnum::AMIS_SAR:
			// Helo only
			uc = (UnitClassDataType*) (Falcon4ClassTable[dindex].dataPtr);
			if (uc->Scores[role]) //  && 0)	// Need to check for helo types
				return TRUE;
			break;
		case MissionTypeEnum::AMIS_TRAINING:
		case MissionTypeEnum::AMIS_STRIKE:
		default:
			uc = (UnitClassDataType*) (Falcon4ClassTable[dindex].dataPtr);
			if (uc->Scores[role])
				return TRUE;
		}
	return FALSE;
	}

int IsValidTarget (Team team, MissionTypeEnum mission, CampEntity target)
	{
//	if (mission < 0)
//		return FALSE;
	if (!target && (MissionData[(uchar)mission].target == AMIS_TAR_LOCATION || MissionData[(uchar)mission].target == AMIS_TAR_NONE))
		return TRUE;
	else if (target && target->IsUnit() && ((Unit)target)->Real() && !target->IsSquadron() && MissionData[(uchar)mission].target == AMIS_TAR_UNIT)
		{
		switch (mission)
			{
			case MissionTypeEnum::AMIS_HAVCAP:
			case MissionTypeEnum::AMIS_ESCORT:
			case MissionTypeEnum::AMIS_SEADESCORT:
				// Friendly air units only
				if (target->GetTeam() == team && target->IsFlight())
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_INTERCEPT:
				// Enemy air units only
				if (target->IsFlight() && GetRoE(team,target->GetTeam(),ROE_AIR_FIRE) == ROE_ALLOWED)
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_PRPLANCAS:
				// Enemy ground units only
				if (target->IsBattalion() && GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE) == ROE_ALLOWED)
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_SEADSTRIKE:
				// Enemy air defense units only
				if (target->IsBattalion() && ((Unit)target)->GetUnitNormalRole() == GRO_AIRDEFENSE && GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE) == ROE_ALLOWED)
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_ASW:
			case MissionTypeEnum::AMIS_ASHIP:
				if (target->IsTaskForce() && GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE) == ROE_ALLOWED)
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_AIRCAV:
				if (target->IsBattalion() && ((Unit)target)->GetSType() == STYPE_UNIT_AIRMOBILE)
					return TRUE;
			default:
				break;
			}
		}
	else if (target && target->IsObjective() && MissionData[(uchar)mission].target == AMIS_TAR_OBJECTIVE)
		{
		switch (mission)
			{
			case MissionTypeEnum::AMIS_OCASTRIKE:
				// Enemy airbases, airstrips, radar, & CCC
				if (GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE) &&
				   (target->GetType() == TYPE_AIRBASE || target->GetType() == TYPE_AIRSTRIP || target->GetType() == TYPE_RADAR || target->GetType() == TYPE_COM_CONTROL))
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_INTSTRIKE:
				// Enemy bridges, production facilities, ports, depots, etc.
				if (GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE) &&
				   (target->GetType() == TYPE_BRIDGE || target->GetType() == TYPE_CHEMICAL || target->GetType() == TYPE_DEPOT || target->GetType() == TYPE_FACTORY ||
				    target->GetType() == TYPE_NUCLEAR || target->GetType() == TYPE_PORT || target->GetType() == TYPE_POWERPLANT || target->GetType() == TYPE_RAIL_TERMINAL ||
				    target->GetType() == TYPE_REFINERY))
					return TRUE;
				break;
			case MissionTypeEnum::AMIS_STRIKE:
			case MissionTypeEnum::AMIS_DEEPSTRIKE:
			case MissionTypeEnum::AMIS_STRATBOMB:
			case MissionTypeEnum::AMIS_RECON:
			case MissionTypeEnum::AMIS_BDA:
				// Any enemy objective
				if (GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE))
					return TRUE;
				break;
			default:
				break;
			}
		}
	return FALSE;
	}

int IsValidAction (MissionTypeEnum mission, int action)
	{
	switch (action)
		{
		case WP_NOTHING:	
		case WP_TAKEOFF:	
		case WP_ASSEMBLE:	
		case WP_POSTASSEMBLE:
		case WP_REFUEL:      	
		case WP_LAND:			
			return TRUE;
			break;
		case WP_REARM:     	
			break;
		case WP_PICKUP:
		case WP_AIRDROP:
			if (mission == MissionTypeEnum::AMIS_AIRCAV)
				return TRUE;
			break;
		case WP_STRIKE:
			if (mission == MissionTypeEnum::AMIS_TRAINING)
				return TRUE;
			// KCK: allow drop into the following routine -\v
		default:
			if (action == MissionData[(uchar)mission].targetwp)
				return TRUE;
			break;
		}
	return FALSE;
	}

int IsValidEnrouteAction (MissionTypeEnum mission, int action)
	{
	switch (action)
		{
		case WP_NOTHING:	
			return TRUE;
			break;
		default:
			if (action == MissionData[(uchar)mission].routewp)
				return TRUE;
			break;
		}
	return FALSE;
	}

// This is pretty hackish, but hey.. it works
MissionTypeEnum GetMissionFromTarget (Team team, int dindex, CampEntity target)
	{
	if (target && target->IsObjective())
		{
		if (!GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE))
			target = NULL;
		else if ((target->GetType() == TYPE_AIRBASE || target->GetType() == TYPE_AIRSTRIP || target->GetType() == TYPE_RADAR || target->GetType() == TYPE_COM_CONTROL) &&
				 IsValidMission(dindex, MissionTypeEnum::AMIS_OCASTRIKE))
			return MissionTypeEnum::AMIS_OCASTRIKE;
		else if ((target->GetType() == TYPE_BRIDGE || target->GetType() == TYPE_CHEMICAL || target->GetType() == TYPE_DEPOT || target->GetType() == TYPE_FACTORY ||
				  target->GetType() == TYPE_NUCLEAR || target->GetType() == TYPE_PORT || target->GetType() == TYPE_POWERPLANT || target->GetType() == TYPE_RAIL_TERMINAL ||
				  target->GetType() == TYPE_REFINERY) &&
				 IsValidMission(dindex, MissionTypeEnum::AMIS_INTSTRIKE))
			return MissionTypeEnum::AMIS_INTSTRIKE;
		else if (IsValidMission(dindex, MissionTypeEnum::AMIS_STRIKE))
			return MissionTypeEnum::AMIS_STRIKE;
		target = NULL;
		}
	if (target && target->IsUnit())
		{
		if (!GetRoE(team,target->GetTeam(),ROE_GROUND_FIRE))
			{
			if (target->IsFlight() && IsValidMission(dindex, MissionTypeEnum::AMIS_HAVCAP))
				return MissionTypeEnum::AMIS_HAVCAP;
			else
				target = NULL;
			}
		else if (target->IsFlight() && IsValidMission(dindex, MissionTypeEnum::AMIS_INTERCEPT))
			return MissionTypeEnum::AMIS_INTERCEPT;
		else if (target->IsBattalion() && ((Unit)target)->GetUnitNormalRole() == GRO_AIRDEFENSE && IsValidMission(dindex, MissionTypeEnum::AMIS_SEADSTRIKE))
			return MissionTypeEnum::AMIS_SEADSTRIKE;
		else if (target->IsBattalion() && IsValidMission(dindex, MissionTypeEnum::AMIS_PRPLANCAS))
			return MissionTypeEnum::AMIS_PRPLANCAS;
		else if (target->IsTaskForce() && IsValidMission(dindex, MissionTypeEnum::AMIS_ASHIP))
			return MissionTypeEnum::AMIS_ASHIP;
		target = NULL;
		}
	if (!target)
		{
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_BARCAP))
			return MissionTypeEnum::AMIS_BARCAP;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_FAC))
			return MissionTypeEnum::AMIS_FAC;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_ONCALLCAS))
			return MissionTypeEnum::AMIS_ONCALLCAS;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_AWACS))
			return MissionTypeEnum::AMIS_AWACS;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_JSTAR))
			return MissionTypeEnum::AMIS_JSTAR;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_TANKER))
			return MissionTypeEnum::AMIS_TANKER;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_ECM))
			return MissionTypeEnum::AMIS_ECM;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_AIRLIFT))
			return MissionTypeEnum::AMIS_AIRLIFT;
		if (IsValidMission(dindex, MissionTypeEnum::AMIS_RECONPATROL))
			return MissionTypeEnum::AMIS_RECONPATROL;
		}
	return MissionTypeEnum::AMIS_NONE;
	}
