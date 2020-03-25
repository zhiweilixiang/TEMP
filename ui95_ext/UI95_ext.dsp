# Microsoft Developer Studio Project File - Name="UI95_ext" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=UI95_ext - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "UI95_ext.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "UI95_ext.mak" CFG="UI95_ext - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "UI95_ext - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "UI95_ext - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "UI95_ext - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\build/release_win32\UI95_Ext"
# PROP BASE Intermediate_Dir "..\build/release_win32\UI95_Ext"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\build/release_win32\UI95_Ext"
# PROP Intermediate_Dir "..\build/release_win32\UI95_Ext"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\AMD\Inc\\" /I "..\\" /I "..\Falclib\Include" /I "..\Graphics/Include" /I "..\Codelib\Include" /I "..\vu2\include" /I "..\ui95" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "UI95_ext - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\build/debug_win32\UI95_Ext"
# PROP BASE Intermediate_Dir "..\build/debug_win32\UI95_Ext"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\build/debug_win32\UI95_Ext"
# PROP Intermediate_Dir "..\build/debug_win32\UI95_Ext"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\Falclib\Include" /I "..\Graphics/Include" /I "..\Codelib\Include" /I "..\vu2\include" /I "..\ui95" /I "..\..\AMD\Inc\\" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /YX"stdafx.h" /FD /GZ /c
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

# Name "UI95_ext - Win32 Release"
# Name "UI95_ext - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\cbeye.cpp
# End Source File
# Begin Source File

SOURCE=.\cdogflt.cpp
# End Source File
# Begin Source File

SOURCE=.\cdrawlst.cpp
# End Source File
# Begin Source File

SOURCE=.\centity.cpp
# End Source File
# Begin Source File

SOURCE=.\cfeature.cpp
# End Source File
# Begin Source File

SOURCE=.\cflight.cpp
# End Source File
# Begin Source File

SOURCE=.\chistory.cpp
# End Source File
# Begin Source File

SOURCE=.\cicons.cpp
# End Source File
# Begin Source File

SOURCE=.\clevel.cpp
# End Source File
# Begin Source File

SOURCE=.\cmapmvr.cpp
# End Source File
# Begin Source File

SOURCE=.\cmission.cpp
# End Source File
# Begin Source File

SOURCE=.\cpackage.cpp
# End Source File
# Begin Source File

SOURCE=.\cpilot.cpp
# End Source File
# Begin Source File

SOURCE=.\cplayer.cpp
# End Source File
# Begin Source File

SOURCE=.\csquad.cpp
# End Source File
# Begin Source File

SOURCE=.\cthreat.cpp
# End Source File
# Begin Source File

SOURCE=.\cvictory.cpp
# End Source File
# Begin Source File

SOURCE=.\cwaypnt.cpp
# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\cbeye.h
# End Source File
# Begin Source File

SOURCE=.\cdogflt.h
# End Source File
# Begin Source File

SOURCE=.\cdrawlst.h
# End Source File
# Begin Source File

SOURCE=.\centity.h
# End Source File
# Begin Source File

SOURCE=.\cfeature.h
# End Source File
# Begin Source File

SOURCE=.\cflight.h
# End Source File
# Begin Source File

SOURCE=.\chistory.h
# End Source File
# Begin Source File

SOURCE=.\cicons.h
# End Source File
# Begin Source File

SOURCE=.\clevel.h
# End Source File
# Begin Source File

SOURCE=.\cmapmvr.h
# End Source File
# Begin Source File

SOURCE=.\cmission.h
# End Source File
# Begin Source File

SOURCE=.\cpackage.h
# End Source File
# Begin Source File

SOURCE=.\cpilot.h
# End Source File
# Begin Source File

SOURCE=.\cplayer.h
# End Source File
# Begin Source File

SOURCE=.\csquad.h
# End Source File
# Begin Source File

SOURCE=.\cthreat.h
# End Source File
# Begin Source File

SOURCE=.\cvictory.h
# End Source File
# Begin Source File

SOURCE=.\cwaypnt.h
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# Begin Source File

SOURCE=.\ui95_ext.h
# End Source File
# End Group
# End Target
# End Project
