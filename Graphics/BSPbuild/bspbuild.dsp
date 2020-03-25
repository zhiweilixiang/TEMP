# Microsoft Developer Studio Project File - Name="bspbuild" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=bspbuild - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "bspbuild.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "bspbuild.mak" CFG="bspbuild - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "bspbuild - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "bspbuild - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "bspbuild - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MT /W3 /GX /O1 /I "..\..\codelib\include" /I "..\include" /I "..\..\\" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\..\amd\lib\Debug\amd3d.lib d3dx.lib ddraw.lib /nologo /subsystem:console /machine:I386
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "bspbuild - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\..\codelib\include" /I "..\include" /I "..\..\\" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib ..\..\amd\lib\Debug\amd3d.lib d3dx.lib ddraw.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# SUBTRACT LINK32 /pdb:none /incremental:no

!ENDIF 

# Begin Target

# Name "bspbuild - Win32 Release"
# Name "bspbuild - Win32 Debug"
# Begin Group "Source"

# PROP Default_Filter "cpp;c"
# Begin Source File

SOURCE=.\BSPbuild.cpp
# End Source File
# Begin Source File

SOURCE=..\..\Tools\Mono\Debuggr.cpp
# ADD CPP /I "..\..\falclib\include"
# End Source File
# Begin Source File

SOURCE=..\..\Ui\Src\F4Config.cpp
# End Source File
# Begin Source File

SOURCE=..\..\utils\lzss.cpp
# End Source File
# Begin Source File

SOURCE=.\mgif.cpp
# End Source File
# Begin Source File

SOURCE=.\resstub.c
# End Source File
# Begin Source File

SOURCE=.\resstubcpp.cpp
# End Source File
# End Group
# Begin Group "Header"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=..\BSPutil\AlphaPatch.h
# End Source File
# Begin Source File

SOURCE=..\Include\BSPnodes.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\BSPnodeWriter.h
# End Source File
# Begin Source File

SOURCE=..\Include\ColorBank.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\ColorBuildList.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\DynamicPatch.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\FLTerror.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\FLTreader.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\LODBuildList.h
# End Source File
# Begin Source File

SOURCE=..\Include\mgapiall.h
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

SOURCE=..\BSPutil\PalBuildList.h
# End Source File
# Begin Source File

SOURCE=..\Include\Palette.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\ParentBuildList.h
# End Source File
# Begin Source File

SOURCE=..\Include\PolyLib.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\PolyWriter.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\PosBuildList.h
# End Source File
# Begin Source File

SOURCE=..\BSPutil\ScriptNames.h
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
# Begin Source File

SOURCE=..\BSPutil\TexBuildList.h
# End Source File
# End Group
# End Target
# End Project
