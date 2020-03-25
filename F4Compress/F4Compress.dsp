# Microsoft Developer Studio Project File - Name="F4Compress" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=F4Compress - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "F4Compress.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "F4Compress.mak" CFG="F4Compress - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "F4Compress - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "F4Compress - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "F4Compress - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /O2 /I "..\\" /I "..\Falclib\Include" /I "..\codelib\include" /I "..\Vu2\Include" /I "..\Sim\Include" /I "..\Campaign\Include" /I "..\UI\Include" /I "..\Graphics\Include" /I "..\amd\inc" /I "..\codelib\resources\reslib\src" /I "..\codelib\tools\lists" /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /D TARGET=m_i486 /FR /FD /c
# SUBTRACT CPP /YX /Yc /Yu
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib winmm.lib d3dx.lib ddraw.lib ..\amd\lib\Release\amd3d.lib ..\extlibs\dbghelp.lib ..\extlibs\nvDXTlibMT6.lib ..\build/release_win32\crashhandler\crashhandler.lib /nologo /subsystem:console /incremental:yes /machine:I386 /out:"../../F4Compress.exe"

!ELSEIF  "$(CFG)" == "F4Compress - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /G6 /Zp4 /MTd /W3 /Gm /GX /ZI /Od /I "..\\" /I "..\Falclib\Include" /I "..\codelib\include" /I "..\Vu2\Include" /I "..\Sim\Include" /I "..\Campaign\Include" /I "..\UI\Include" /I "..\Graphics\Include" /I "..\amd\inc" /I "..\codelib\resources\reslib\src" /I "..\codelib\tools\lists" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_DEBUG" /D TARGET=m_i486 /FR /FD /GZ /c
# SUBTRACT CPP /u /YX /Yc /Yu
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib winmm.lib d3dx.lib ddraw.lib ..\amd\lib\Debug\amd3d.lib ..\extlibs\dbghelp.lib ..\extlibs\nvDXTlibMT6.lib ..\build/debug_win32\crashhandler\crashhandler.lib /nologo /subsystem:console /debug /machine:I386 /nodefaultlib:"libcmt.lib" /pdbtype:sept
# SUBTRACT LINK32 /nodefaultlib

!ENDIF 

# Begin Target

# Name "F4Compress - Win32 Release"
# Name "F4Compress - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\FALCLIB\AList.cpp
# End Source File
# Begin Source File

SOURCE=..\CAMPAIGN\CAMPUI\CampStr.cpp
# End Source File
# Begin Source File

SOURCE=..\SIM\SIMLIB\Datafile.cpp
# End Source File
# Begin Source File

SOURCE=..\TOOLS\MONO\Debuggr.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\dispcfg.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\dispopts.cpp
# End Source File
# Begin Source File

SOURCE=.\F4Compress.cpp
# End Source File
# Begin Source File

SOURCE=..\UI\SRC\F4Config.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\F4find.cpp
# End Source File
# Begin Source File

SOURCE=..\SIM\SIMLIB\File.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\FileMemMap.cpp
# End Source File
# Begin Source File

SOURCE=..\codelib\resources\reslib\src\inflate.c
# End Source File
# Begin Source File

SOURCE=..\codelib\tools\lists\lists.c
# End Source File
# Begin Source File

SOURCE=..\utils\lzss.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\openfile.cpp
# End Source File
# Begin Source File

SOURCE=.\PlayerOp.cpp
# End Source File
# Begin Source File

SOURCE=..\codelib\resources\reslib\src\resmgr.c
# End Source File
# Begin Source File

SOURCE=.\TheaterDef.cpp
# End Source File
# Begin Source File

SOURCE=..\FALCLIB\Token.cpp
# End Source File
# Begin Source File

SOURCE=..\codelib\resources\reslib\src\unzip.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\Graphics\Include\F4Compress.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\F4Compress.rc
# End Source File
# Begin Source File

SOURCE=.\icon1.ico
# End Source File
# End Group
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# End Target
# End Project
