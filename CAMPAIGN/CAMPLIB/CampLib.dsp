# Microsoft Developer Studio Project File - Name="CampLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=CampLib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "CampLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CampLib.mak" CFG="CampLib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CampLib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "CampLib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CampLib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Campaign\CampLib"
# PROP Intermediate_Dir "..\..\build/release_win32\Campaign\CampLib"
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

!ELSEIF  "$(CFG)" == "CampLib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Campaign\CampLib"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Campaign\CampLib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Campaign\CampLib"
# PROP Intermediate_Dir "..\..\build/debug_win32\Campaign\CampLib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\Include" /I "..\..\Falclib\include" /I "..\.." /I "..\..\Sim\Include" /I "..\..\codelib\include" /I "..\..\vu2\include" /I "..\..\UI\Include" /I "..\..\Graphics/Include" /D "VC_EXTRALEAN" /D "CAMPTOOL" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "CampLib - Win32 Release"
# Name "CampLib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AIInput.cpp
# End Source File
# Begin Source File

SOURCE=.\Asearch.cpp
# End Source File
# Begin Source File

SOURCE=.\atcBrain.cpp
# End Source File
# Begin Source File

SOURCE=.\CampBase.cpp
# End Source File
# Begin Source File

SOURCE=.\Campcell.cpp
# End Source File
# Begin Source File

SOURCE=.\CampList.cpp
# End Source File
# Begin Source File

SOURCE=.\Campterr.cpp
# End Source File
# Begin Source File

SOURCE=.\Campwp.cpp
# End Source File
# Begin Source File

SOURCE=.\CmpRadar.cpp
# End Source File
# Begin Source File

SOURCE=.\Feature.cpp
# End Source File
# Begin Source File

SOURCE=.\Find.cpp
# End Source File
# Begin Source File

SOURCE=.\Listadt.cpp
# End Source File
# Begin Source File

SOURCE=.\Loadout.cpp
# End Source File
# Begin Source File

SOURCE=.\Name.cpp
# End Source File
# Begin Source File

SOURCE=.\Objectiv.cpp
# End Source File
# Begin Source File

SOURCE=.\Path.cpp
# End Source File
# Begin Source File

SOURCE=.\persist.cpp
# End Source File
# Begin Source File

SOURCE=.\PtData.cpp
# End Source File
# Begin Source File

SOURCE=.\Relation.cpp
# End Source File
# Begin Source File

SOURCE=.\Team.cpp
# End Source File
# Begin Source File

SOURCE=.\Unit.cpp
# End Source File
# Begin Source File

SOURCE=.\Vehicle.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\aiinput.h
# End Source File
# Begin Source File

SOURCE=..\include\airunit.h
# End Source File
# Begin Source File

SOURCE=..\include\asearch.h
# End Source File
# Begin Source File

SOURCE=..\..\sim\include\atcbrain.h
# End Source File
# Begin Source File

SOURCE=..\include\campbase.h
# End Source File
# Begin Source File

SOURCE=..\include\campcell.h
# End Source File
# Begin Source File

SOURCE=..\include\camplist.h
# End Source File
# Begin Source File

SOURCE=..\include\campterr.h
# End Source File
# Begin Source File

SOURCE=..\Include\Campweap.h
# End Source File
# Begin Source File

SOURCE=..\include\campwp.h
# End Source File
# Begin Source File

SOURCE=..\Include\CmpRadar.h
# End Source File
# Begin Source File

SOURCE=..\include\find.h
# End Source File
# Begin Source File

SOURCE=..\include\listadt.h
# End Source File
# Begin Source File

SOURCE=..\include\loadout.h
# End Source File
# Begin Source File

SOURCE=..\include\objectiv.h
# End Source File
# Begin Source File

SOURCE=..\Include\Path.h
# End Source File
# Begin Source File

SOURCE=..\include\persist.h
# End Source File
# Begin Source File

SOURCE=..\include\ptdata.h
# End Source File
# Begin Source File

SOURCE=..\include\team.h
# End Source File
# Begin Source File

SOURCE=..\include\unit.h
# End Source File
# Begin Source File

SOURCE=..\include\vehicle.h
# End Source File
# End Group
# End Target
# End Project
