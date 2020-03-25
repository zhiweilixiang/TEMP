# Microsoft Developer Studio Project File - Name="CampUI" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=CampUI - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "CampUI.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CampUI.mak" CFG="CampUI - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CampUI - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "CampUI - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CampUI - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Campaign\CampUI"
# PROP Intermediate_Dir "..\..\build/release_win32\Campaign\CampUI"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\Include" /I "..\..\Falclib\include" /I "..\.." /I "..\..\Sim\Include" /I "..\..\codelib\include" /I "..\..\vu2\include" /I "..\..\UI\Include" /I "..\..\Graphics" /I "..\..\Graphics\Include" /D "VC_EXTRALEAN" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "CampUI - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Campaign\CampUI"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Campaign\CampUI"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Campaign\CampUI"
# PROP Intermediate_Dir "..\..\build/debug_win32\Campaign\CampUI"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\Include" /I "..\..\Falclib\include" /I "..\.." /I "..\..\Sim\Include" /I "..\..\codelib\include" /I "..\..\vu2\include" /I "..\..\UI\Include" /I "..\..\Graphics" /I "..\..\Graphics\Include" /D "VC_EXTRALEAN" /D "CAMPTOOL" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
# SUBTRACT CPP /Fr /YX
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

# Name "CampUI - Win32 Release"
# Name "CampUI - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\ACSelect.cpp
# End Source File
# Begin Source File

SOURCE=.\Brief.cpp
# End Source File
# Begin Source File

SOURCE=.\CampJoin.cpp
# End Source File
# Begin Source File

SOURCE=.\CampMap.cpp
# End Source File
# Begin Source File

SOURCE=.\CampStr.cpp
# End Source File
# Begin Source File

SOURCE=.\CUIEvent.cpp
# End Source File
# Begin Source File

SOURCE=.\EvtParse.cpp
# End Source File
# Begin Source File

SOURCE=.\MissEval.cpp
# End Source File
# Begin Source File

SOURCE=.\Options.cpp
# End Source File
# Begin Source File

SOURCE=.\Pilot.cpp

!IF  "$(CFG)" == "CampUI - Win32 Release"

# ADD CPP /O1 /Ob1

!ELSEIF  "$(CFG)" == "CampUI - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\SquadUI.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\ACSelect.h
# End Source File
# Begin Source File

SOURCE=..\Include\Brief.h
# End Source File
# Begin Source File

SOURCE=..\Include\CampJoin.h
# End Source File
# Begin Source File

SOURCE=..\include\campmap.h
# End Source File
# Begin Source File

SOURCE=..\Include\CampStr.h
# End Source File
# Begin Source File

SOURCE=..\include\cuievent.h
# End Source File
# Begin Source File

SOURCE=..\Include\EvtParse.h
# End Source File
# Begin Source File

SOURCE=..\Include\MissEval.h
# End Source File
# Begin Source File

SOURCE=..\Include\Options.h
# End Source File
# Begin Source File

SOURCE=..\include\pilot.h
# End Source File
# Begin Source File

SOURCE=..\include\squadui.h
# End Source File
# End Group
# End Target
# End Project
