# Microsoft Developer Studio Project File - Name="CampTask" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=CampTask - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "CampTask.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CampTask.mak" CFG="CampTask - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CampTask - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "CampTask - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CampTask - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Campaign\CampTask"
# PROP Intermediate_Dir "..\..\build/release_win32\Campaign\CampTask"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\Include" /I "..\..\Falclib\include" /I "..\.." /I "..\..\Sim\Include" /I "..\..\codelib\include" /I "..\..\vu2\include" /I "..\..\UI\Include" /I "..\..\Graphics/Include" /D "VC_EXTRALEAN" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "CampTask - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Campaign\CampTask"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Campaign\CampTask"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Campaign\CampTask"
# PROP Intermediate_Dir "..\..\build/debug_win32\Campaign\CampTask"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\Include" /I "..\..\Falclib\include" /I "..\.." /I "..\..\Sim\Include" /I "..\..\codelib\include" /I "..\..\vu2\include" /I "..\..\UI\Include" /I "..\..\Graphics/Include" /D "VC_EXTRALEAN" /D "CAMPTOOL" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Fr /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "CampTask - Win32 Release"
# Name "CampTask - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Airunit.cpp
# End Source File
# Begin Source File

SOURCE=.\Atm.cpp
# End Source File
# Begin Source File

SOURCE=.\Battalio.cpp
# End Source File
# Begin Source File

SOURCE=.\Brigade.cpp
# End Source File
# Begin Source File

SOURCE=.\Division.cpp
# End Source File
# Begin Source File

SOURCE=.\Flight.cpp
# End Source File
# Begin Source File

SOURCE=.\Gndunit.cpp
# End Source File
# Begin Source File

SOURCE=.\Gtm.cpp
# End Source File
# Begin Source File

SOURCE=.\Gtmobj.cpp
# End Source File
# Begin Source File

SOURCE=.\Manager.cpp
# End Source File
# Begin Source File

SOURCE=.\Mission.cpp
# End Source File
# Begin Source File

SOURCE=.\Navunit.cpp
# End Source File
# Begin Source File

SOURCE=.\NTM.cpp
# End Source File
# Begin Source File

SOURCE=.\Package.cpp
# End Source File
# Begin Source File

SOURCE=.\Squadron.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\airunit.h
# End Source File
# Begin Source File

SOURCE=..\Include\Atm.h
# End Source File
# Begin Source File

SOURCE=..\Include\Battalion.h
# End Source File
# Begin Source File

SOURCE=..\Include\Brigade.h
# End Source File
# Begin Source File

SOURCE=..\Include\Division.h
# End Source File
# Begin Source File

SOURCE=..\Include\flight.h
# End Source File
# Begin Source File

SOURCE=..\Include\Gndunit.h
# End Source File
# Begin Source File

SOURCE=..\Include\Gtm.h
# End Source File
# Begin Source File

SOURCE=..\Include\Gtmobj.h
# End Source File
# Begin Source File

SOURCE=..\Include\Manager.h
# End Source File
# Begin Source File

SOURCE=..\include\mission.h
# End Source File
# Begin Source File

SOURCE=..\Include\Navunit.h
# End Source File
# Begin Source File

SOURCE=..\Include\Ntm.h
# End Source File
# Begin Source File

SOURCE=..\include\package.h
# End Source File
# Begin Source File

SOURCE=..\include\squadron.h
# End Source File
# End Group
# End Target
# End Project
