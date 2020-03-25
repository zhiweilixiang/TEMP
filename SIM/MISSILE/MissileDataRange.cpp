#include "Graphics/Include/drawbsp.h"
#include "Graphics/Include/drawsgmt.h"
#include "Graphics/Include/rviewpnt.h"
#include "stdhdr.h"
#include "Classtbl.h"
#include "sensclas.h"
#include "eyeball.h"
#include "irst.h"
#include "initdata.h"
#include "mavdisp.h"
#include "object.h"
#include "falcmesg.h"
#include "otwdrive.h"
#include "MsgInc/DamageMsg.h"
#include "campBase.h"
#include "simdrive.h"
#include "simveh.h"
#include "sfx.h"
#include "wpndef.h"
#include "fsound.h"
#include "soundfx.h"
#include "fakerand.h"
#include "radarMissile.h"
#include "BeamRider.h"
#include "acmi/src/include/acmirec.h"
#include "falcsess.h"
#include "camp2sim.h"
#include "playerop.h"
#include "Graphics/Include/terrtex.h"
#include "persist.h"
#include "campList.h"
#include "HarmSeeker.h"
#include "ground.h"
#include "battalion.h"
#include "navunit.h"
#include "missdata.h"
#include "missile.h"

MissileRangeData::MissileRangeData(void)
{
	altBreakpoints = NULL;
	velBreakpoints = NULL;
	aspectBreakpoints = NULL;
	data = NULL;
}


MissileRangeData::~MissileRangeData(void)
{
	delete altBreakpoints; 
	delete velBreakpoints;
	delete aspectBreakpoints; 
	delete data;
	altBreakpoints = NULL;
	velBreakpoints = NULL;
	aspectBreakpoints = NULL;
	data = NULL;
}