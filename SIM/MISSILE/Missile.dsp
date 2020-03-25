# Microsoft Developer Studio Project File - Name="Missile" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Missile - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Missile.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Missile.mak" CFG="Missile - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Missile - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Missile - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Missile - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\Missile"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\Missile"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\Missile"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\Missile"
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

!ELSEIF  "$(CFG)" == "Missile - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Missile"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Missile"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Missile"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Missile"
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

# Name "Missile - Win32 Release"
# Name "Missile - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Accel.cpp
# End Source File
# Begin Source File

SOURCE=.\Aero.cpp
# End Source File
# Begin Source File

SOURCE=.\Apprch.cpp
# End Source File
# Begin Source File

SOURCE=.\Atmos.cpp
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

SOURCE=.\Flight.cpp
# End Source File
# Begin Source File

SOURCE=.\Gains.cpp
# End Source File
# Begin Source File

SOURCE=.\Guidance.cpp
# End Source File
# Begin Source File

SOURCE=.\Init1.cpp
# End Source File
# Begin Source File

SOURCE=.\Init2.cpp
# End Source File
# Begin Source File

SOURCE=.\Launch.cpp
# End Source File
# Begin Source File

SOURCE=.\Mavdisp.cpp
# End Source File
# Begin Source File

SOURCE=.\Misldisp.cpp
# End Source File
# Begin Source File

SOURCE=.\Missfunc.cpp
# End Source File
# Begin Source File

SOURCE=.\Missmain.cpp
# End Source File
# Begin Source File

SOURCE=.\msltrail.cpp
# End Source File
# Begin Source File

SOURCE=.\Pitch.cpp
# End Source File
# Begin Source File

SOURCE=.\Readin.cpp
# End Source File
# Begin Source File

SOURCE=.\Seeker.cpp
# End Source File
# Begin Source File

SOURCE=.\Status.cpp
# End Source File
# Begin Source File

SOURCE=.\Target.cpp
# End Source File
# Begin Source File

SOURCE=.\Trig.cpp
# End Source File
# Begin Source File

SOURCE=.\Yaw.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\INCLUDE\mavdisp.h
# End Source File
# Begin Source File

SOURCE=..\INCLUDE\Misldisp.h
# End Source File
# Begin Source File

SOURCE=..\Include\Missdata.h
# End Source File
# Begin Source File

SOURCE=..\include\missile.h
# End Source File
# End Group
# End Target
# End Project
