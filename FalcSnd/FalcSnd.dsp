# Microsoft Developer Studio Project File - Name="FalcSnd" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=FalcSnd - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "FalcSnd.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "FalcSnd.mak" CFG="FalcSnd - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "FalcSnd - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "FalcSnd - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "FalcSnd - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\build/release_win32\FalcSnd"
# PROP BASE Intermediate_Dir "..\build/release_win32\FalcSnd"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\build/release_win32\FalcSnd"
# PROP Intermediate_Dir "..\build/release_win32\FalcSnd"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\Falclib\Include" /I "..\\" /I "..\Codelib\Include" /I "..\Vu2\Include" /I "..\Graphics/Include" /I "..\Campaign\Include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "FalcSnd - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\build/debug_win32\FalcSnd"
# PROP BASE Intermediate_Dir "..\build/debug_win32\FalcSnd"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\build/debug_win32\FalcSnd"
# PROP Intermediate_Dir "..\build/debug_win32\FalcSnd"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\Falclib\Include" /I "..\\" /I "..\Codelib\Include" /I "..\Vu2\Include" /I "..\Graphics" /I "..\Graphics\Include" /I "..\Campaign\Include" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "FalcSnd - Win32 Release"
# Name "FalcSnd - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\adpcm.cpp
# End Source File
# Begin Source File

SOURCE=.\FalcVoice.cpp
# End Source File
# Begin Source File

SOURCE=.\fsound.cpp
# End Source File
# Begin Source File

SOURCE=.\LHSP.cpp
# End Source File
# Begin Source File

SOURCE=.\mlrVoice.cpp
# End Source File
# Begin Source File

SOURCE=.\mlrVoiceHandle.cpp
# End Source File
# Begin Source File

SOURCE=.\psound.cpp
# End Source File
# Begin Source File

SOURCE=.\silence.cpp
# End Source File
# Begin Source File

SOURCE=.\Soundfx.cpp
# End Source File
# Begin Source File

SOURCE=.\Talkio.cpp
# End Source File
# Begin Source File

SOURCE=.\transprt.cpp
# End Source File
# Begin Source File

SOURCE=.\voiceFilter.cpp
# End Source File
# Begin Source File

SOURCE=.\VoiceManager.cpp
# End Source File
# Begin Source File

SOURCE=.\VoiceMapper.cpp
# End Source File
# Begin Source File

SOURCE=.\winampfrontend.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\comp.h
# End Source File
# Begin Source File

SOURCE=.\conv.h
# End Source File
# Begin Source File

SOURCE=.\FalcVoice.h
# End Source File
# Begin Source File

SOURCE=.\FRONTEND.H
# End Source File
# Begin Source File

SOURCE=..\Falclib\Include\Fsound.h
# End Source File
# Begin Source File

SOURCE=.\LHSP.h
# End Source File
# Begin Source File

SOURCE=.\mlrVoice.h
# End Source File
# Begin Source File

SOURCE=.\psound.h
# End Source File
# Begin Source File

SOURCE=..\Falclib\Include\SoundFX.h
# End Source File
# Begin Source File

SOURCE=..\Falclib\Include\SoundGroups.h
# End Source File
# Begin Source File

SOURCE=.\SoundPos.h
# End Source File
# Begin Source File

SOURCE=.\Talkio.h
# End Source File
# Begin Source File

SOURCE=.\transprt.h
# End Source File
# Begin Source File

SOURCE=.\VoiceFilter.h
# End Source File
# Begin Source File

SOURCE=.\VoiceManager.h
# End Source File
# Begin Source File

SOURCE=.\VoiceMapper.h
# End Source File
# Begin Source File

SOURCE=.\winampfrontend.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\Obsolete.txt
# End Source File
# End Target
# End Project
