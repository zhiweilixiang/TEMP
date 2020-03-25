# Microsoft Developer Studio Project File - Name="Airframe" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Airframe - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Airframe.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Airframe.mak" CFG="Airframe - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Airframe - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Airframe - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Airframe - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\airfarme"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\airframe"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Fo"..\..\build/release_win32\Sim\SixDof/" /Fd"..\..\build/release_win32\Sim\SixDof/" /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "Airframe - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Airframe"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Airframe"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Sim\Include" /I "..\..\Falclib\Include" /I "..\..\Campaign\Include" /I "..\..\Graphics/Include" /I "..\..\Vu2\Include" /I "..\..\Codelib\Include" /I "..\.." /D "USE_SMARTHEAP" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Fo"..\..\build/debug_win32\Sim\Sixdof/" /Fd"..\..\build/debug_win32\Sim\Sixdof/" /FD /GZ /c
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

# Name "Airframe - Win32 Release"
# Name "Airframe - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Aero.cpp
# End Source File
# Begin Source File

SOURCE=.\afsimple.cpp
# End Source File
# Begin Source File

SOURCE=.\Airframe.cpp
# End Source File
# Begin Source File

SOURCE=.\Atmos.cpp
# End Source File
# Begin Source File

SOURCE=.\Axial.cpp
# End Source File
# Begin Source File

SOURCE=.\Cruise.cpp
# End Source File
# Begin Source File

SOURCE=.\Engine.cpp
# End Source File
# Begin Source File

SOURCE=.\Eom.cpp
# End Source File
# Begin Source File

SOURCE=.\Fcs.cpp
# End Source File
# Begin Source File

SOURCE=.\Gain.cpp
# End Source File
# Begin Source File

SOURCE=.\Gear.cpp
# End Source File
# Begin Source File

SOURCE=.\Init.cpp
# End Source File
# Begin Source File

SOURCE=.\limiters.cpp
# End Source File
# Begin Source File

SOURCE=.\Meters.cpp
# End Source File
# Begin Source File

SOURCE=.\Pitch.cpp
# End Source File
# Begin Source File

SOURCE=.\Readin.cpp
# End Source File
# Begin Source File

SOURCE=.\Roll.cpp
# End Source File
# Begin Source File

SOURCE=.\SuperSimple.cpp
# End Source File
# Begin Source File

SOURCE=.\Trig.cpp
# End Source File
# Begin Source File

SOURCE=.\Trim.cpp
# End Source File
# Begin Source File

SOURCE=.\Yaw.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\airframe.h
# End Source File
# Begin Source File

SOURCE=..\Include\Arfrmdat.h
# End Source File
# Begin Source File

SOURCE=..\INCLUDE\Limiters.h
# End Source File
# End Group
# End Target
# End Project
