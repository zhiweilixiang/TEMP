# Microsoft Developer Studio Project File - Name="SimLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=SimLib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "SimLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "SimLib.mak" CFG="SimLib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "SimLib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "SimLib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "SimLib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\SimLib"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\SimLib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\SimLib"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\SimLib"
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

!ELSEIF  "$(CFG)" == "SimLib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Simlib"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Simlib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Simlib"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Simlib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "USE_SMARTHEAP" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "SimLib - Win32 Release"
# Name "SimLib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Datafile.cpp
# End Source File
# Begin Source File

SOURCE=.\File.cpp
# End Source File
# Begin Source File

SOURCE=.\Geometry.cpp
# End Source File
# Begin Source File

SOURCE=.\Handoff.cpp
# End Source File
# Begin Source File

SOURCE=.\Io.cpp
# End Source File
# Begin Source File

SOURCE=.\Math.cpp
# End Source File
# Begin Source File

SOURCE=.\memory.cpp
# End Source File
# Begin Source File

SOURCE=.\Message.cpp
# End Source File
# Begin Source File

SOURCE=.\OwnResult.cpp
# End Source File
# Begin Source File

SOURCE=.\PilotInputs.cpp
# End Source File
# Begin Source File

SOURCE=.\sensclas.cpp
# End Source File
# Begin Source File

SOURCE=.\simbase.cpp
# End Source File
# Begin Source File

SOURCE=.\simfiltr.cpp
# End Source File
# Begin Source File

SOURCE=.\simmover.cpp
# End Source File
# Begin Source File

SOURCE=.\Simobj.cpp
# End Source File
# Begin Source File

SOURCE=.\simstatic.cpp
# End Source File
# Begin Source File

SOURCE=.\simveh.cpp
# End Source File
# Begin Source File

SOURCE=.\simvudrv.cpp
# End Source File
# Begin Source File

SOURCE=.\simWeapn.cpp
# End Source File
# Begin Source File

SOURCE=.\vehdef.cpp
# End Source File
# Begin Source File

SOURCE=.\Wpnstatn.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\datafile.h
# End Source File
# Begin Source File

SOURCE=..\include\geometry.h
# End Source File
# Begin Source File

SOURCE=..\Include\handoff.h
# End Source File
# Begin Source File

SOURCE=..\include\pilotinputs.h
# End Source File
# Begin Source File

SOURCE=..\include\sensclas.h
# End Source File
# Begin Source File

SOURCE=..\include\simbase.h
# End Source File
# Begin Source File

SOURCE=..\Include\simfiltr.h
# End Source File
# Begin Source File

SOURCE=..\include\simmover.h
# End Source File
# Begin Source File

SOURCE=..\include\simobj.h
# End Source File
# Begin Source File

SOURCE=..\Include\simstatc.h
# End Source File
# Begin Source File

SOURCE=..\include\simveh.h
# End Source File
# Begin Source File

SOURCE=..\Include\SimVuDrv.h
# End Source File
# Begin Source File

SOURCE=..\include\simweapn.h
# End Source File
# End Group
# End Target
# End Project
