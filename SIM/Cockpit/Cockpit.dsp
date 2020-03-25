# Microsoft Developer Studio Project File - Name="Cockpit" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Cockpit - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Cockpit.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Cockpit.mak" CFG="Cockpit - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Cockpit - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Cockpit - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Cockpit - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\Cockpit"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\Cockpit"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\Cockpit"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\Cockpit"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "Cockpit - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Cockpit"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Cockpit"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Cockpit"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Cockpit"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "USE_SMARTHEAP" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Yu"stdafx.h" /FD /GZ /c
# SUBTRACT CPP /Fr
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

# Name "Cockpit - Win32 Release"
# Name "Cockpit - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\button.cpp
# End Source File
# Begin Source File

SOURCE=.\cbbuttons.cpp
# End Source File
# Begin Source File

SOURCE=.\cbdials.cpp
# End Source File
# Begin Source File

SOURCE=.\cbdigits.cpp
# End Source File
# Begin Source File

SOURCE=.\cbindicators.cpp
# End Source File
# Begin Source File

SOURCE=.\cblights.cpp
# End Source File
# Begin Source File

SOURCE=.\cbmachasi.cpp
# End Source File
# Begin Source File

SOURCE=.\cbtext.cpp
# End Source File
# Begin Source File

SOURCE=.\cpadi.cpp
# End Source File
# Begin Source File

SOURCE=.\cpcb.cpp
# End Source File
# Begin Source File

SOURCE=.\cpchev.cpp
# End Source File
# Begin Source File

SOURCE=.\cpcursor.cpp
# End Source File
# Begin Source File

SOURCE=.\cpded.cpp
# End Source File
# Begin Source File

SOURCE=.\cpdial.cpp
# End Source File
# Begin Source File

SOURCE=.\cpdigits.cpp
# End Source File
# Begin Source File

SOURCE=.\cphsi.cpp
# End Source File
# Begin Source File

SOURCE=.\cpindicator.cpp
# End Source File
# Begin Source File

SOURCE=.\cpkneeview.cpp
# End Source File
# Begin Source File

SOURCE=.\cplift.cpp
# End Source File
# Begin Source File

SOURCE=.\cplight.cpp
# End Source File
# Begin Source File

SOURCE=.\cpmachasi.cpp
# End Source File
# Begin Source File

SOURCE=.\cpmanager.cpp
# End Source File
# Begin Source File

SOURCE=.\cpmisc.cpp
# End Source File
# Begin Source File

SOURCE=.\cpobject.cpp
# End Source File
# Begin Source File

SOURCE=.\cppanel.cpp
# End Source File
# Begin Source File

SOURCE=.\cpsound.cpp
# End Source File
# Begin Source File

SOURCE=.\cpsurface.cpp
# End Source File
# Begin Source File

SOURCE=.\cptext.cpp
# End Source File
# Begin Source File

SOURCE=.\cpvbounds.cpp
# End Source File
# Begin Source File

SOURCE=.\KneeBoard.cpp
# End Source File
# Begin Source File

SOURCE=.\popcb.cpp
# End Source File
# Begin Source File

SOURCE=.\popmenu.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "Cockpit - Win32 Release"

!ELSEIF  "$(CFG)" == "Cockpit - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\button.h
# End Source File
# Begin Source File

SOURCE=..\Include\cbackproto.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpadi.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpbutton.h
# End Source File
# Begin Source File

SOURCE=..\include\cpcb.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpchev.h
# End Source File
# Begin Source File

SOURCE=..\include\cpcursor.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpded.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpdial.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpdigits.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpgauge.h
# End Source File
# Begin Source File

SOURCE=..\Include\cphsi.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpindicator.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpkneeview.h
# End Source File
# Begin Source File

SOURCE=..\Include\cplift.h
# End Source File
# Begin Source File

SOURCE=..\Include\cplight.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpmachasi.h
# End Source File
# Begin Source File

SOURCE=..\include\cpmanager.h
# End Source File
# Begin Source File

SOURCE=..\include\cpmisc.h
# End Source File
# Begin Source File

SOURCE=..\include\cpobject.h
# End Source File
# Begin Source File

SOURCE=..\include\cppanel.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpsound.h
# End Source File
# Begin Source File

SOURCE=..\include\cpsurface.h
# End Source File
# Begin Source File

SOURCE=..\Include\cpswitch.h
# End Source File
# Begin Source File

SOURCE=..\Include\cptext.h
# End Source File
# Begin Source File

SOURCE=..\include\cpvbounds.h
# End Source File
# Begin Source File

SOURCE=..\Include\KneeBoard.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# End Group
# End Target
# End Project
