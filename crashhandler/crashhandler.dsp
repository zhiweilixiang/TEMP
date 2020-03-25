# Microsoft Developer Studio Project File - Name="crashhandler" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=crashhandler - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "crashhandler.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "crashhandler.mak" CFG="crashhandler - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "crashhandler - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "crashhandler - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "crashhandler - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\build/release_win32\crashhandler"
# PROP Intermediate_Dir "..\build/release_win32\crashhandler"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /O1 /Op /Ob2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "BUILDING_BUGSUTILITY_DLL" /D "STRICT" /D "WORK_AROUND_SRCLINE_BUG" /YX"pch.h" /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "crashhandler - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\build/debug_win32\crashhandler"
# PROP Intermediate_Dir "..\build/debug_win32\crashhandler"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "BUILDING_BUGSUTILITY_DLL" /D "STRICT" /D "WORK_AROUND_SRCLINE_BUG" /YX"pch.h" /FD /GZ /c
# SUBTRACT CPP /Fr
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "crashhandler - Win32 Release"
# Name "crashhandler - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AllocAndFillProcessModuleList.cpp
# End Source File
# Begin Source File

SOURCE=.\BSUFunctions.cpp
# End Source File
# Begin Source File

SOURCE=.\CrashHandler.cpp
# End Source File
# Begin Source File

SOURCE=.\DiagAssert.cpp
# End Source File
# Begin Source File

SOURCE=.\GetLoadedModules.cpp
# End Source File
# Begin Source File

SOURCE=.\IsNT.cpp
# End Source File
# Begin Source File

SOURCE=.\NT4ProcessInfo.cpp
# End Source File
# Begin Source File

SOURCE=.\PCH.cpp
# End Source File
# Begin Source File

SOURCE=.\TLHELPProcessInfo.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\BugslayerUtil.h
# End Source File
# Begin Source File

SOURCE=.\CrashHandler.h
# End Source File
# Begin Source File

SOURCE=.\CRTDBG_Internals.h
# End Source File
# Begin Source File

SOURCE=.\DiagAssert.h
# End Source File
# Begin Source File

SOURCE="..\..\Program Files\Microsoft Platform SDK\Include\Guiddef.h"
# End Source File
# Begin Source File

SOURCE=.\Internal.h
# End Source File
# Begin Source File

SOURCE=.\MemDumperValidator.h
# End Source File
# Begin Source File

SOURCE=.\MSJDBG.h
# End Source File
# Begin Source File

SOURCE=.\PCH.h
# End Source File
# Begin Source File

SOURCE=.\SymbolEngine.h
# End Source File
# Begin Source File

SOURCE="..\..\Program Files\Microsoft Platform SDK\Include\Tvout.h"
# End Source File
# Begin Source File

SOURCE=.\WarningsOff.h
# End Source File
# Begin Source File

SOURCE=.\WarningsOn.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\Readme.txt
# End Source File
# End Target
# End Project
