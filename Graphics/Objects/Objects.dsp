# Microsoft Developer Studio Project File - Name="Objects" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Objects - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Objects.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Objects.mak" CFG="Objects - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Objects - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Objects - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Objects - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Graphics\Objects"
# PROP Intermediate_Dir "..\..\build/release_win32\Graphics\Objects"
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

!ELSEIF  "$(CFG)" == "Objects - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Graphics\Objects"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Graphics\Objects"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Graphics\Objects"
# PROP Intermediate_Dir "..\..\build/debug_win32\Graphics\Objects"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "Objects - Win32 Release"
# Name "Objects - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\draw2d.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawBldg.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawBrdg.cpp
# End Source File
# Begin Source File

SOURCE=.\Drawbsp.cpp
# End Source File
# Begin Source File

SOURCE=.\drawcld.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawGrnd.cpp
# End Source File
# Begin Source File

SOURCE=.\drawguys.cpp
# End Source File
# Begin Source File

SOURCE=.\drawovc.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawParticleSys.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawPlat.cpp
# End Source File
# Begin Source File

SOURCE=.\drawpnt.cpp
# End Source File
# Begin Source File

SOURCE=.\drawpole.cpp
# End Source File
# Begin Source File

SOURCE=.\drawpuff.cpp
# End Source File
# Begin Source File

SOURCE=.\DrawRdbd.cpp
# End Source File
# Begin Source File

SOURCE=.\Drawsgmt.cpp
# End Source File
# Begin Source File

SOURCE=.\drawshdw.cpp
# End Source File
# Begin Source File

SOURCE=.\Drawtrcr.cpp
# End Source File
# Begin Source File

SOURCE=.\Objlist.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\draw2d.h
# End Source File
# Begin Source File

SOURCE=..\include\drawbldg.h
# End Source File
# Begin Source File

SOURCE=..\include\drawbrdg.h
# End Source File
# Begin Source File

SOURCE=..\include\drawbsp.h
# End Source File
# Begin Source File

SOURCE=..\Include\drawcld.h
# End Source File
# Begin Source File

SOURCE=..\include\drawgrnd.h
# End Source File
# Begin Source File

SOURCE=..\Include\drawguys.h
# End Source File
# Begin Source File

SOURCE=..\include\drawobj.h
# End Source File
# Begin Source File

SOURCE=..\include\drawovc.h
# End Source File
# Begin Source File

SOURCE=..\Include\DrawParticleSys.h
# End Source File
# Begin Source File

SOURCE=..\Include\DrawPlat.h
# End Source File
# Begin Source File

SOURCE=..\Include\drawpnt.h
# End Source File
# Begin Source File

SOURCE=..\Include\drawpole.h
# End Source File
# Begin Source File

SOURCE=..\include\drawpuff.h
# End Source File
# Begin Source File

SOURCE=..\include\drawrdbd.h
# End Source File
# Begin Source File

SOURCE=..\include\drawsgmt.h
# End Source File
# Begin Source File

SOURCE=..\Include\drawshdw.h
# End Source File
# Begin Source File

SOURCE=..\Include\Drawtrcr.h
# End Source File
# Begin Source File

SOURCE=..\include\objlist.h
# End Source File
# End Group
# End Target
# End Project
