# Microsoft Developer Studio Project File - Name="UISetup" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=UISetup - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "UISetup.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "UISetup.mak" CFG="UISetup - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "UISetup - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "UISetup - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "UISetup - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\..\build/release_win32\UI\Setup"
# PROP BASE Intermediate_Dir "..\..\..\build/release_win32\UI\Setup"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\..\build/release_win32\UI\Setup"
# PROP Intermediate_Dir "..\..\..\build/release_win32\UI\Setup"
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

!ELSEIF  "$(CFG)" == "UISetup - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\..\build/debug_win32\UI\Setup"
# PROP BASE Intermediate_Dir "..\..\..\build/debug_win32\UI\Setup"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\..\build/debug_win32\UI\Setup"
# PROP Intermediate_Dir "..\..\..\build/debug_win32\UI\Setup"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\..\sim\include" /I "..\..\include" /I "..\..\..\ui95" /I "..\..\..\ui95_ext" /I "..\..\..\falclib\include" /I "..\..\..\vu2\include" /I "..\..\..\Graphics/Include" /I "..\..\..\codelib\include" /I "..\..\.." /I "..\..\..\campaign\include" /I "..\..\AMD\Inc\\" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "UISetup - Win32 Release"
# Name "UISetup - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\ControlTab.cpp
# End Source File
# Begin Source File

SOURCE=.\GraphicsTab.cpp
# End Source File
# Begin Source File

SOURCE=.\keydescrips.cpp
# End Source File
# Begin Source File

SOURCE=.\SimOptn.cpp
# End Source File
# Begin Source File

SOURCE=.\SimTab.cpp
# End Source File
# Begin Source File

SOURCE=.\SoundTab.cpp
# End Source File
# Begin Source File

SOURCE=.\ui_setup.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\Include\ui_setup.h
# End Source File
# End Group
# End Target
# End Project
