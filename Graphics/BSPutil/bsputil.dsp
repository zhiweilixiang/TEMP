# Microsoft Developer Studio Project File - Name="bsputil" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=bsputil - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "bsputil.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "bsputil.mak" CFG="bsputil - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "bsputil - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "bsputil - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "bsputil - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\..\build/release_win32\Graphics\BSPUtil"
# PROP Intermediate_Dir "..\..\build/release_win32\Graphics\BSPUtil"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GX /Zi /O1 /I "..\..\Codelib\Include" /I "..\..\\" /I "..\Include" /I "..\..\vu2\include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "bsputil - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\..\build/debug_win32\Graphics\BSPutil"
# PROP Intermediate_Dir "..\..\build/debug_win32\Graphics\BSPutil"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\Codelib\Include" /I "..\..\\" /I "..\Include" /I "..\..\vu2\include" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "bsputil - Win32 Release"
# Name "bsputil - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AlphaPatch.cpp
# End Source File
# Begin Source File

SOURCE=.\BSPnodeWriter.cpp
# End Source File
# Begin Source File

SOURCE=.\ColorBuildList.cpp
# End Source File
# Begin Source File

SOURCE=.\DynamicPatch.cpp
# End Source File
# Begin Source File

SOURCE=.\FLTtoGeometry.cpp
# End Source File
# Begin Source File

SOURCE=.\FLTtoParent.cpp
# End Source File
# Begin Source File

SOURCE=.\LODBuildList.cpp
# End Source File
# Begin Source File

SOURCE=.\PalBuildList.cpp
# End Source File
# Begin Source File

SOURCE=.\ParentBuildList.cpp
# End Source File
# Begin Source File

SOURCE=.\PolyWriter.cpp
# End Source File
# Begin Source File

SOURCE=.\PosBuildList.cpp
# End Source File
# Begin Source File

SOURCE=.\ScriptNames.cpp
# End Source File
# Begin Source File

SOURCE=.\TexBuildList.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AlphaPatch.h
# End Source File
# Begin Source File

SOURCE=.\BSPnodeWriter.h
# End Source File
# Begin Source File

SOURCE=.\ColorBuildList.h
# End Source File
# Begin Source File

SOURCE=.\DynamicPatch.h
# End Source File
# Begin Source File

SOURCE=.\LODBuildList.h
# End Source File
# Begin Source File

SOURCE=.\PalBuildList.h
# End Source File
# Begin Source File

SOURCE=.\ParentBuildList.h
# End Source File
# Begin Source File

SOURCE=.\PolyWriter.h
# End Source File
# Begin Source File

SOURCE=.\PosBuildList.h
# End Source File
# Begin Source File

SOURCE=.\TexBuildList.h
# End Source File
# End Group
# End Target
# End Project
