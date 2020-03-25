# Microsoft Developer Studio Project File - Name="UICommon" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=UICommon - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Common.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Common.mak" CFG="UICommon - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "UICommon - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "UICommon - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "UICommon - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\build/release_win32\UI\Common"
# PROP BASE Intermediate_Dir "..\..\..\build/release_win32\UI\Common"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\build/release_win32\UI\Common"
# PROP Intermediate_Dir "..\..\..\build/release_win32\UI\Common"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\AMD\Inc\\" /I "..\..\include" /I "..\..\..\ui95" /I "..\..\..\ui95_ext" /I "..\..\..\falclib\include" /I "..\..\..\vu2\include" /I "..\..\..\Graphics/Include" /I "..\..\..\codelib\include" /I "..\..\.." /I "..\..\..\campaign\include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "UICommon - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\build/debug_win32\UI\Common"
# PROP BASE Intermediate_Dir "..\..\..\build/debug_win32\UI\Common"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\build/debug_win32\UI\Common"
# PROP Intermediate_Dir "..\..\..\build/debug_win32\UI\Common"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\include" /I "..\..\..\ui95" /I "..\..\..\ui95_ext" /I "..\..\..\falclib\include" /I "..\..\..\vu2\include" /I "..\..\..\Graphics/Include" /I "..\..\..\codelib\include" /I "..\..\.." /I "..\..\..\campaign\include" /I "..\..\AMD\Inc\\" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "UICommon - Win32 Release"
# Name "UICommon - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\ato.cpp
# End Source File
# Begin Source File

SOURCE=.\common.cpp
# End Source File
# Begin Source File

SOURCE=.\events.cpp
# End Source File
# Begin Source File

SOURCE=.\filters.cpp
# End Source File
# Begin Source File

SOURCE=.\gps.cpp
# End Source File
# Begin Source File

SOURCE=.\icondefs.cpp
# End Source File
# Begin Source File

SOURCE=.\missions.cpp
# End Source File
# Begin Source File

SOURCE=.\oob.cpp
# End Source File
# Begin Source File

SOURCE=.\printer.cpp
# End Source File
# Begin Source File

SOURCE=.\targets.cpp
# End Source File
# Begin Source File

SOURCE=.\teamdata.cpp
# End Source File
# Begin Source File

SOURCE=.\units.cpp
# End Source File
# Begin Source File

SOURCE=.\urefresh.cpp
# End Source File
# Begin Source File

SOURCE=.\waypoint.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\Include\events.h
# End Source File
# Begin Source File

SOURCE=..\..\Include\filters.h
# End Source File
# Begin Source File

SOURCE=..\..\Include\gps.h
# End Source File
# Begin Source File

SOURCE=..\..\Include\icondefs.h
# End Source File
# Begin Source File

SOURCE=..\..\Include\teamdata.h
# End Source File
# Begin Source File

SOURCE=..\..\Include\urefresh.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\GMPrint.tlb
# End Source File
# End Target
# End Project
