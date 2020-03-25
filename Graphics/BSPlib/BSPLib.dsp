# Microsoft Developer Studio Project File - Name="BSPLib" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=BSPLib - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "BSPLib.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "BSPLib.mak" CFG="BSPLib - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "BSPLib - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "BSPLib - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "..\.."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "BSPLib - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Graphics\BSPLib"
# PROP Intermediate_Dir "..\..\build/release_win32\Graphics\BSPLib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\..\Codelib\Include" /I "..\..\\" /I "..\Include" /I "..\..\vu2\include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "BSPLib - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\..\build/debug_win32\Graphics\BSPLib"
# PROP BASE Intermediate_Dir "..\..\build/debug_win32\Graphics\BSPLib"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Graphics\BSPLib"
# PROP Intermediate_Dir "..\..\build/debug_win32\Graphics\BSPLib"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Codelib\Include" /I "..\..\\" /I "..\Include" /I "..\..\vu2\include" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "BSPLib - Win32 Release"
# Name "BSPLib - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\BSPnodes.cpp
# End Source File
# Begin Source File

SOURCE=.\ColorBank.cpp
# End Source File
# Begin Source File

SOURCE=.\ObjectInstance.cpp
# End Source File
# Begin Source File

SOURCE=.\ObjectLOD.cpp
# End Source File
# Begin Source File

SOURCE=.\ObjectParent.cpp
# End Source File
# Begin Source File

SOURCE=.\PalBank.cpp
# End Source File
# Begin Source File

SOURCE=.\PolyLib.cpp
# End Source File
# Begin Source File

SOURCE=.\PolyLibClip.cpp
# End Source File
# Begin Source File

SOURCE=.\PolyLibDraw.cpp
# End Source File
# Begin Source File

SOURCE=.\PolyLibRestore.cpp
# End Source File
# Begin Source File

SOURCE=.\Scripts.cpp
# End Source File
# Begin Source File

SOURCE=.\StateStack.cpp
# End Source File
# Begin Source File

SOURCE=.\TexBank.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Include\BSPnodes.h
# End Source File
# Begin Source File

SOURCE=..\Include\ColorBank.h
# End Source File
# Begin Source File

SOURCE=..\Include\ObjectInstance.h
# End Source File
# Begin Source File

SOURCE=..\Include\ObjectLOD.h
# End Source File
# Begin Source File

SOURCE=..\Include\ObjectParent.h
# End Source File
# Begin Source File

SOURCE=..\Include\PalBank.h
# End Source File
# Begin Source File

SOURCE=..\Include\PolyLib.h
# End Source File
# Begin Source File

SOURCE=..\Include\Scripts.h
# End Source File
# Begin Source File

SOURCE=..\Include\StateStack.h
# End Source File
# Begin Source File

SOURCE=..\Include\TexBank.h
# End Source File
# End Group
# End Target
# End Project
