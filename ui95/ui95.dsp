# Microsoft Developer Studio Project File - Name="ui95" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=ui95 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ui95.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ui95.mak" CFG="ui95 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ui95 - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "ui95 - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "ui95 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\build/release_win32\UI95"
# PROP BASE Intermediate_Dir "..\build/release_win32\UI95"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\build/release_win32\UI95"
# PROP Intermediate_Dir "..\build/release_win32\UI95"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\AMD\Inc\\" /I "..\\" /I "..\Falclib\Include" /I "..\Graphics/Include" /I "..\Codelib\Include" /I "..\vu2\include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "ui95 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\build/debug_win32\UI95"
# PROP BASE Intermediate_Dir "..\build/debug_win32\UI95"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\build/debug_win32\UI95"
# PROP Intermediate_Dir "..\build/debug_win32\UI95"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\Falclib\Include" /I "..\Graphics/Include" /I "..\Codelib\Include" /I "..\vu2\include" /I "..\..\AMD\Inc\\" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Fp"..\build/debug_win32\UI95/stdafx.pch" /YX"stdafx.h" /FD /GZ /c
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

# Name "ui95 - Win32 Release"
# Name "ui95 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\canim.cpp
# End Source File
# Begin Source File

SOURCE=.\canimrc.cpp
# End Source File
# Begin Source File

SOURCE=.\cbitmap.cpp
# End Source File
# Begin Source File

SOURCE=.\cblip.cpp
# End Source File
# Begin Source File

SOURCE=.\cbox.cpp
# End Source File
# Begin Source File

SOURCE=.\cbuttons.cpp
# End Source File
# Begin Source File

SOURCE=.\cclock.cpp
# End Source File
# Begin Source File

SOURCE=.\ccolor.cpp
# End Source File
# Begin Source File

SOURCE=.\ccontrol.cpp
# End Source File
# Begin Source File

SOURCE=.\ccursor.cpp
# End Source File
# Begin Source File

SOURCE=.\ccustom.cpp
# End Source File
# Begin Source File

SOURCE=.\ceditbox.cpp
# End Source File
# Begin Source File

SOURCE=.\cfill.cpp
# End Source File
# Begin Source File

SOURCE=.\cfontres.cpp
# End Source File
# Begin Source File

SOURCE=.\cfonts.cpp
# End Source File
# Begin Source File

SOURCE=.\chandler.cpp
# End Source File
# Begin Source File

SOURCE=.\chash.cpp
# End Source File
# Begin Source File

SOURCE=.\chelp.cpp
# End Source File
# Begin Source File

SOURCE=.\cimagerc.cpp
# End Source File
# Begin Source File

SOURCE=.\cline.cpp
# End Source File
# Begin Source File

SOURCE=.\clistbox.cpp
# End Source File
# Begin Source File

SOURCE=.\cmarque.cpp
# End Source File
# Begin Source File

SOURCE=.\cmovie.cpp
# End Source File
# Begin Source File

SOURCE=.\cpanner.cpp
# End Source File
# Begin Source File

SOURCE=.\cparser.cpp
# End Source File
# Begin Source File

SOURCE=.\cpopmgr.cpp
# End Source File
# Begin Source File

SOURCE=.\cpopup.cpp
# End Source File
# Begin Source File

SOURCE=.\cresmgr.cpp
# End Source File
# Begin Source File

SOURCE=.\csclbmp.cpp
# End Source File
# Begin Source File

SOURCE=.\cscroll.cpp
# End Source File
# Begin Source File

SOURCE=.\cslider.cpp
# End Source File
# Begin Source File

SOURCE=.\csndbite.cpp
# End Source File
# Begin Source File

SOURCE=.\csoundrc.cpp
# End Source File
# Begin Source File

SOURCE=.\cstringrc.cpp
# End Source File
# Begin Source File

SOURCE=.\ctext.cpp
# End Source File
# Begin Source File

SOURCE=.\cthook.cpp
# End Source File
# Begin Source File

SOURCE=.\ctile.cpp
# End Source File
# Begin Source File

SOURCE=.\ctree.cpp
# End Source File
# Begin Source File

SOURCE=.\cwindow.cpp
# End Source File
# Begin Source File

SOURCE=.\imagersc.cpp
# End Source File
# Begin Source File

SOURCE=.\ooutput.cpp
# End Source File
# Begin Source File

SOURCE=.\soundrsc.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# End Source File
# Begin Source File

SOURCE=.\ui95_dd.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\canim.h
# End Source File
# Begin Source File

SOURCE=.\canimrc.h
# End Source File
# Begin Source File

SOURCE=.\cbase.h
# End Source File
# Begin Source File

SOURCE=.\cbitmap.h
# End Source File
# Begin Source File

SOURCE=.\cblip.h
# End Source File
# Begin Source File

SOURCE=.\cbox.h
# End Source File
# Begin Source File

SOURCE=.\cbuttons.h
# End Source File
# Begin Source File

SOURCE=.\cclock.h
# End Source File
# Begin Source File

SOURCE=.\ccolor.h
# End Source File
# Begin Source File

SOURCE=.\ccontrol.h
# End Source File
# Begin Source File

SOURCE=.\ccursor.h
# End Source File
# Begin Source File

SOURCE=.\ccustom.h
# End Source File
# Begin Source File

SOURCE=.\ceditbox.h
# End Source File
# Begin Source File

SOURCE=.\cfill.h
# End Source File
# Begin Source File

SOURCE=.\cfontres.h
# End Source File
# Begin Source File

SOURCE=.\cfonts.h
# End Source File
# Begin Source File

SOURCE=.\chandler.h
# End Source File
# Begin Source File

SOURCE=.\chash.h
# End Source File
# Begin Source File

SOURCE=.\chelp.h
# End Source File
# Begin Source File

SOURCE=.\cimagerc.h
# End Source File
# Begin Source File

SOURCE=.\ckbd.h
# End Source File
# Begin Source File

SOURCE=.\cline.h
# End Source File
# Begin Source File

SOURCE=.\clistbox.h
# End Source File
# Begin Source File

SOURCE=.\cmarque.h
# End Source File
# Begin Source File

SOURCE=.\cmovie.h
# End Source File
# Begin Source File

SOURCE=.\cpanner.h
# End Source File
# Begin Source File

SOURCE=.\cparser.h
# End Source File
# Begin Source File

SOURCE=.\cpopmgr.h
# End Source File
# Begin Source File

SOURCE=.\cpopup.h
# End Source File
# Begin Source File

SOURCE=.\cresmgr.h
# End Source File
# Begin Source File

SOURCE=.\csclbmp.h
# End Source File
# Begin Source File

SOURCE=.\cscroll.h
# End Source File
# Begin Source File

SOURCE=.\cslider.h
# End Source File
# Begin Source File

SOURCE=.\csndbite.h
# End Source File
# Begin Source File

SOURCE=.\csoundrc.h
# End Source File
# Begin Source File

SOURCE=.\cstringrc.h
# End Source File
# Begin Source File

SOURCE=.\ctext.h
# End Source File
# Begin Source File

SOURCE=.\cthook.h
# End Source File
# Begin Source File

SOURCE=.\ctile.h
# End Source File
# Begin Source File

SOURCE=.\ctree.h
# End Source File
# Begin Source File

SOURCE=.\cwindow.h
# End Source File
# Begin Source File

SOURCE=.\flatrsc.h
# End Source File
# Begin Source File

SOURCE=.\imagersc.h
# End Source File
# Begin Source File

SOURCE=.\ooutput.h
# End Source File
# Begin Source File

SOURCE=.\soundrsc.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# Begin Source File

SOURCE=.\ui95_dd.h
# End Source File
# Begin Source File

SOURCE=.\ui95defs.h
# End Source File
# End Group
# End Target
# End Project
