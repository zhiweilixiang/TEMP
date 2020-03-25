#include "stdhdr.h"
#include "acdef.h"
#include "wpndef.h"
#include "helodef.h"
#include "gnddef.h"
#include "simfile.h"
#include "soundfx.h"
#include <string> //RERUN
//RERUN #define SIM_VEHICLE_DEFINITION_FILE    "sim\\vehdef\\vehicle.lst"
#define SIM_VEHICLE_DEFINITION_FILE    "Zips\\sim\\vehdef\\vehicle.lst"

#ifdef USE_SH_POOLS
extern MEM_POOL gReadInMemPool;
#endif

SimMoverDefinition** moverDefinitionData = NULL;
int NumSimMoverDefinitions = 0;

SimMoverDefinition::SimMoverDefinition (void)
{
   numSensors = 0;
   sensorData = NULL;
}

SimMoverDefinition::~SimMoverDefinition (void)
{
}

void SimMoverDefinition::ReadSimMoverDefinitionData (void)
{
	int i;
	SimlibFileClass* vehList;
	int vehicleType;

	vehList = SimlibFileClass::Open(SIM_VEHICLE_DEFINITION_FILE, SIMLIB_READ);

	NumSimMoverDefinitions = atoi (vehList->GetNext());
	#ifdef USE_SH_POOLS
	moverDefinitionData = (SimMoverDefinition **)MemAllocPtr(gReadInMemPool, sizeof(SimMoverDefinition*)*NumSimMoverDefinitions,0);
	#else
	moverDefinitionData = new SimMoverDefinition*[NumSimMoverDefinitions];
	#endif

	for (i=0; i<NumSimMoverDefinitions; i++)
	{
      vehicleType = atoi (vehList->GetNext());
      switch (vehicleType)
      {
         case Aircraft:
            moverDefinitionData[i] = new SimACDefinition (vehList->GetNext());
         break;
         
         case Ground:
            moverDefinitionData[i] = new SimGroundDefinition(vehList->GetNext());
         break;
         
         case Helicopter:
            moverDefinitionData[i] = new SimHeloDefinition(vehList->GetNext());
         break;
         
         case Weapon:
            moverDefinitionData[i] = new SimWpnDefinition (vehList->GetNext());
         break;
         
         case Sea:
            vehList->GetNext();
            moverDefinitionData[i] = new SimMoverDefinition;
         break;

         default:
            vehList->GetNext();
            moverDefinitionData[i] = new SimMoverDefinition;
         break;
      }
	}
	vehList->Close();
   delete vehList;
}

void SimMoverDefinition::FreeSimMoverDefinitionData (void)
{
int i;

	for (i=0; i<NumSimMoverDefinitions; i++)
	{
      delete moverDefinitionData[i];
      moverDefinitionData[i] = NULL;
   }

    delete [] moverDefinitionData;
    moverDefinitionData = NULL;
}

SimACDefinition::SimACDefinition (char* fileName)
{
    int i;
    SimlibFileClass* acFile;

    //RERUN acFile = SimlibFileClass::Open ("fileName, SIMLIB_READ);
    //RERUN add Zips in front of fileName
    std::string zippedFileName(fileName);
    zippedFileName = "Zips\\" + zippedFileName;
    char* newFileName = new char[zippedFileName.length() + 1];
    strcpy(newFileName, zippedFileName.c_str());
    acFile = SimlibFileClass::Open(newFileName, SIMLIB_READ);

   // What type of combat does it do?
   combatClass = (CombatClass)atoi(acFile->GetNext());

   airframeIndex = atoi(acFile->GetNext());
   numPlayerSensors  =  atoi(acFile->GetNext());

	#ifdef USE_SH_POOLS
	playerSensorData = (int *)MemAllocPtr(gReadInMemPool, sizeof(int)*numPlayerSensors * 2,0);
	#else
    playerSensorData = new int [numPlayerSensors * 2];
	#endif
   for (i=0; i<numPlayerSensors; i++)
   {
      playerSensorData[i * 2]  =  atoi(acFile->GetNext());
      playerSensorData[i * 2 + 1]  =  atoi(acFile->GetNext());
   }

   numSensors  =  atoi(acFile->GetNext());

	#ifdef USE_SH_POOLS
	sensorData = (int *)MemAllocPtr(gReadInMemPool, sizeof(int)*numSensors * 2,0);
	#else
    sensorData = new int [numSensors * 2];
	#endif
   for (i=0; i<numSensors; i++)
   {
      sensorData[i * 2]  =  atoi(acFile->GetNext());
      sensorData[i * 2 + 1]  =  atoi(acFile->GetNext());
   }

	acFile->Close();
   delete acFile;
   delete[] newFileName; //RERUN
}

SimACDefinition::~SimACDefinition (void)
{
   	delete [] sensorData;
    sensorData = NULL;
   	delete [] playerSensorData;
    playerSensorData = NULL;
}

SimWpnDefinition::SimWpnDefinition (char* fileName)
{
SimlibFileClass* wpnFile;

   //RERUN wpnFile = SimlibFileClass::Open (fileName, SIMLIB_READ);
   //RERUN add Zips in front of fileName
   std::string zippedFileName(fileName);
   zippedFileName = "Zips\\" + zippedFileName;
   char* newFileName = new char[zippedFileName.length() + 1];
   strcpy(newFileName, zippedFileName.c_str());
   wpnFile = SimlibFileClass::Open(newFileName, SIMLIB_READ);

   flags = atoi(wpnFile->GetNext());
   cd  = (float)atof(wpnFile->GetNext());
   weight = (float)atof(wpnFile->GetNext());
   area  = (float)atof(wpnFile->GetNext());
   xEjection  = (float)atof(wpnFile->GetNext());
   yEjection  = (float)atof(wpnFile->GetNext());
   zEjection  = (float)atof(wpnFile->GetNext());
   strcpy (mnemonic, wpnFile->GetNext());
   weaponClass  = atoi(wpnFile->GetNext());
   domain  = atoi(wpnFile->GetNext());
   weaponType  = atoi(wpnFile->GetNext());
   dataIdx  = atoi(wpnFile->GetNext());

   wpnFile->Close();
   delete wpnFile;
   delete[] newFileName;
}

SimWpnDefinition::~SimWpnDefinition (void)
{
}

SimHeloDefinition::SimHeloDefinition (char* fileName)
{
int i;
SimlibFileClass* heloFile;

   //RERUN heloFile = SimlibFileClass::Open (fileName, SIMLIB_READ);
   //RERUN add Zips in front of fileName
   std::string zippedFileName(fileName);
   zippedFileName = "Zips\\" + zippedFileName;
   char* newFileName = new char[zippedFileName.length() + 1];
   strcpy(newFileName, zippedFileName.c_str());
   heloFile = SimlibFileClass::Open(newFileName, SIMLIB_READ);

   airframeIndex = atoi(heloFile->GetNext());
   numSensors  =  atoi(heloFile->GetNext());

	#ifdef USE_SH_POOLS
	sensorData = (int *)MemAllocPtr(gReadInMemPool, sizeof(int)*numSensors * 2,0);
	#else
    sensorData = new int [numSensors * 2];
	#endif
   for (i=0; i<numSensors; i++)
   {
      sensorData[i * 2]  =  atoi(heloFile->GetNext());
      sensorData[i * 2 + 1]  =  atoi(heloFile->GetNext());
   }
	heloFile->Close();
   delete heloFile;
   delete[] newFileName;
}

SimHeloDefinition::~SimHeloDefinition (void)
{
   	delete [] sensorData;
    sensorData = NULL;
}

SimGroundDefinition::SimGroundDefinition (char* fileName)
{
int i;
SimlibFileClass* gndFile;

   //RERUN gndFile = SimlibFileClass::Open (fileName, SIMLIB_READ);
   //RERUN add Zips in front of fileName
   std::string zippedFileName(fileName);
   zippedFileName = "Zips\\" + zippedFileName;
   char* newFileName = new char[zippedFileName.length() + 1];
   strcpy(newFileName, zippedFileName.c_str());
   gndFile = SimlibFileClass::Open(newFileName, SIMLIB_READ);

   numSensors  =  atoi(gndFile->GetNext());

	#ifdef USE_SH_POOLS
	sensorData = (int *)MemAllocPtr(gReadInMemPool, sizeof(int)*numSensors * 2,0);
	#else
    sensorData = new int [numSensors * 2];
	#endif
   for (i=0; i<numSensors; i++)
   {
      sensorData[i * 2]  =  atoi(gndFile->GetNext());
      sensorData[i * 2 + 1]  =  atoi(gndFile->GetNext());
   }
	gndFile->Close();
   delete gndFile;
   delete[] newFileName; //RERUN
}

SimGroundDefinition::~SimGroundDefinition (void)
{
   	delete [] sensorData;
    sensorData = NULL;
}
