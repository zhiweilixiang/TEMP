# Microsoft Developer Studio Project File - Name="Rwr" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Rwr - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Rwr.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Rwr.mak" CFG="Rwr - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Rwr - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Rwr - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Rwr - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\Rwr"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\Rwr"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\Rwr"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\Rwr"
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

!ELSEIF  "$(CFG)" == "Rwr - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Rwr"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Rwr"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Rwr"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Rwr"
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

# Name "Rwr - Win32 Release"
# Name "Rwr - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AdvancedHTS.cpp
# End Source File
# Begin Source File

SOURCE=.\ALR56.cpp
# End Source File
# Begin Source File

SOURCE=.\Detect.cpp
# End Source File
# Begin Source File

SOURCE=.\EasyHTS.cpp
# End Source File
# Begin Source File

SOURCE=.\HarmPod.cpp
# End Source File
# Begin Source File

SOURCE=.\HarmSeeker.cpp
# End Source File
# Begin Source File

SOURCE=.\PlayerRWR.cpp
# End Source File
# Begin Source File

SOURCE=.\Rwr.cpp
# End Source File
# Begin Source File

SOURCE=.\tracklst.cpp
# End Source File
# Begin Source File

SOURCE=.\VehRwr.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\advancedhts.h
# End Source File
# Begin Source File

SOURCE=..\include\alr56.h
# End Source File
# Begin Source File

SOURCE=..\include\easyhts.h
# End Source File
# Begin Source File

SOURCE=..\include\harmpod.h
# End Source File
# Begin Source File

SOURCE=..\Include\HarmSeeker.h
# End Source File
# Begin Source File

SOURCE=..\include\playerrwr.h
# End Source File
# Begin Source File

SOURCE=..\include\rwr.h
# End Source File
# Begin Source File

SOURCE=..\include\rwrdata.h
# End Source File
# Begin Source File

SOURCE=..\include\vehrwr.h
# End Source File
# End Group
# End Target
# End Project
