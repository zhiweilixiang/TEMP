# Microsoft Developer Studio Project File - Name="HDigi" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=HDigi - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "HDigi.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "HDigi.mak" CFG="HDigi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "HDigi - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "HDigi - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "HDigi - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\Falcon4___Winew_Release\Sim\HDigi"
# PROP BASE Intermediate_Dir "..\..\Falcon4___Winew_Release\Sim\HDigi"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\HDigi"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\HDigi"
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

!ELSEIF  "$(CFG)" == "HDigi - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\HDigi"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\HDigi"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\HDigi"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\HDigi"
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

# Name "HDigi - Win32 Release"
# Name "HDigi - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\h_Actions.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Cavoid.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Digimain.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Dlogic.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Engage.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Flitlead.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Gengage.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Ground.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Gunsjink.cpp
# End Source File
# Begin Source File

SOURCE=.\h_landme.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Mdefeat.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Mengage.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Mnvers.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Randp.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Sfusion.cpp
# End Source File
# Begin Source File

SOURCE=.\h_waypoint.cpp
# End Source File
# Begin Source File

SOURCE=.\h_Wingman.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\Hdigi.h
# End Source File
# End Group
# End Target
# End Project
