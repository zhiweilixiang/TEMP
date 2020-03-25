# Microsoft Developer Studio Project File - Name="Digi" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Digi - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Digi.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Digi.mak" CFG="Digi - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Digi - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Digi - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Digi - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\Digi"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\Digi"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\Digi"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\Digi"
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

!ELSEIF  "$(CFG)" == "Digi - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Digi"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Digi"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Digi"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Digi"
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

# Name "Digi - Win32 Release"
# Name "Digi - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\Actions.cpp
# End Source File
# Begin Source File

SOURCE=.\autopilot.cpp
# End Source File
# Begin Source File

SOURCE=.\BvrEngage.cpp
# End Source File
# Begin Source File

SOURCE=.\Cavoid.cpp
# End Source File
# Begin Source File

SOURCE=.\Digifunc.cpp
# End Source File
# Begin Source File

SOURCE=.\Digimain.cpp
# End Source File
# Begin Source File

SOURCE=.\Dlogic.cpp
# End Source File
# Begin Source File

SOURCE=.\facbrain.cpp
# End Source File
# Begin Source File

SOURCE=.\Flitlead.cpp
# End Source File
# Begin Source File

SOURCE=.\Formdata.cpp
# End Source File
# Begin Source File

SOURCE=.\Gengage.cpp
# End Source File
# Begin Source File

SOURCE=.\gndAttck.cpp
# End Source File
# Begin Source File

SOURCE=.\Ground.cpp
# End Source File
# Begin Source File

SOURCE=.\Gunsjink.cpp
# End Source File
# Begin Source File

SOURCE=.\HandleThreat.cpp
# End Source File
# Begin Source File

SOURCE=.\landme.cpp
# End Source File
# Begin Source File

SOURCE=.\Mdefeat.cpp
# End Source File
# Begin Source File

SOURCE=.\Mengage.cpp
# End Source File
# Begin Source File

SOURCE=.\Merge.cpp
# End Source File
# Begin Source File

SOURCE=.\Mnvers.cpp
# End Source File
# Begin Source File

SOURCE=.\Randp.cpp
# End Source File
# Begin Source File

SOURCE=.\Refuel.cpp
# End Source File
# Begin Source File

SOURCE=.\Separate.cpp
# End Source File
# Begin Source File

SOURCE=.\Sfusion.cpp
# End Source File
# Begin Source File

SOURCE=.\simbrain.cpp
# End Source File
# Begin Source File

SOURCE=.\tankbrn.cpp
# End Source File
# Begin Source File

SOURCE=.\targeting.cpp
# End Source File
# Begin Source File

SOURCE=.\waypoint.cpp
# End Source File
# Begin Source File

SOURCE=.\wingactions.cpp
# End Source File
# Begin Source File

SOURCE=.\wingai.cpp
# End Source File
# Begin Source File

SOURCE=.\winglogic.cpp
# End Source File
# Begin Source File

SOURCE=.\Wingman.cpp
# End Source File
# Begin Source File

SOURCE=.\wingmnvers.cpp
# End Source File
# Begin Source File

SOURCE=.\wingorder.cpp
# End Source File
# Begin Source File

SOURCE=.\wingradio.cpp
# End Source File
# Begin Source File

SOURCE=.\WvrEngage.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\digi.h
# End Source File
# Begin Source File

SOURCE=..\include\facbrain.h
# End Source File
# Begin Source File

SOURCE=..\include\simbrain.h
# End Source File
# Begin Source File

SOURCE=..\include\tankbrn.h
# End Source File
# End Group
# End Target
# End Project
