# Microsoft Developer Studio Project File - Name="Displays" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Displays - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Displays.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Displays.mak" CFG="Displays - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Displays - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Displays - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Displays - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\..\build/release_win32\Sim\Displays"
# PROP BASE Intermediate_Dir "..\..\build/release_win32\Sim\Displays"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Sim\Displays"
# PROP Intermediate_Dir "..\..\build/release_win32\Sim\Displays"
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

!ELSEIF  "$(CFG)" == "Displays - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Sim\Displays"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Sim\Displays"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Sim\Displays"
# PROP Intermediate_Dir "..\..\build/debug_win32\Sim\Displays"
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

# Name "Displays - Win32 Release"
# Name "Displays - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\BlankMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\Bombsms.cpp
# End Source File
# Begin Source File

SOURCE=.\DataInput.cpp
# End Source File
# Begin Source File

SOURCE=.\Drawable.cpp
# End Source File
# Begin Source File

SOURCE=.\DteMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\FlcsMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\FlirMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\Gndhud.cpp
# End Source File
# Begin Source File

SOURCE=.\Gunhud.cpp
# End Source File
# Begin Source File

SOURCE=.\Gunsms.cpp
# End Source File
# Begin Source File

SOURCE=.\helpers.cpp
# End Source File
# Begin Source File

SOURCE=.\Hud.cpp
# End Source File
# Begin Source File

SOURCE=.\InvSms.cpp
# End Source File
# Begin Source File

SOURCE=.\Lantirn.cpp
# End Source File
# Begin Source File

SOURCE=.\LantMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\MenuMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\Mfd.cpp
# End Source File
# Begin Source File

SOURCE=.\Mislhud.cpp
# End Source File
# Begin Source File

SOURCE=.\Mslsms.cpp
# End Source File
# Begin Source File

SOURCE=.\navhud.cpp
# End Source File
# Begin Source File

SOURCE=.\Sms.cpp
# End Source File
# Begin Source File

SOURCE=.\smsdraw.cpp
# End Source File
# Begin Source File

SOURCE=.\TestMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\TgpMfd.cpp
# End Source File
# Begin Source File

SOURCE=.\WpnMfd.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\include\drawable.h
# End Source File
# Begin Source File

SOURCE=..\INCLUDE\Hardpnt.h
# End Source File
# Begin Source File

SOURCE=..\include\hud.h
# End Source File
# Begin Source File

SOURCE=..\Include\lantirn.h
# End Source File
# Begin Source File

SOURCE=..\include\mfd.h
# End Source File
# Begin Source File

SOURCE=..\include\sms.h
# End Source File
# Begin Source File

SOURCE=..\include\smsdraw.h
# End Source File
# End Group
# End Target
# End Project
