# Microsoft Developer Studio Project File - Name="Falcon4" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Falcon4 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Falcon4.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Falcon4.mak" CFG="Falcon4 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Falcon4 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Falcon4 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Falcon4 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\build/release_win32"
# PROP Intermediate_Dir ".\build/release_win32"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "Falclib\Include" /I ".\\" /I "codelib\include" /I "Vu2\Include" /I "Sim\Include" /I "Campaign\Include" /I "UI\Include" /I "Graphics\Include" /I "amd\inc\\" /D "_WINDOWS" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FR /FD /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 delayimp.lib .\build/release_win32\ResMgr\ResMgr.lib libcmt.lib Landh\Lib\st80w.lib oleaut32.lib d3dx.lib comsupp.lib libcpmt.lib amd\lib\release\amd3d.lib ole32.lib dplay.lib dplayx.lib oldnames.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib advapi32.lib shell32.lib uuid.lib winmm.lib vfw32.lib wsock32.lib dsound.lib dxguid.lib dinput8.lib ddraw.lib .\build/release_win32\crashhandler\crashhandler.lib extlibs\dbghelp.lib .\build/release_win32\Graphics\nvdxt\nvdxt.lib extlibs\nvDXTlibMT6.lib version.lib /nologo /subsystem:windows /map /debug /machine:I386 /nodefaultlib /out:"../F4-BMS.exe" /OPT:REF /OPT:REF /fixed:no /mapinfo:lines
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "Falcon4 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "build/debug_win32"
# PROP BASE Intermediate_Dir "build/debug_win32"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "build/debug_win32"
# PROP Intermediate_Dir "build/debug_win32"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /Zp4 /MTd /W4 /Gm /GX /ZI /Od /I "Falclib\Include" /I ".\\" /I "codelib\include" /I "Vu2\Include" /I "Sim\Include" /I "Campaign\Include" /I "UI\Include" /I "Graphics\Include" /I "amd\inc" /D "_WINDOWS" /D "CAMPTOOL" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /Fr /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 .\build/debug_win32\ResMgr\ResMgr.lib libcmtd.lib LandH\Lib\st80w.lib d3dx.lib comsupp.lib libcpmtd.lib amd\lib\debug\amd3d.lib winspool.lib ole32.lib oleaut32.lib odbc32.lib odbccp32.lib dplay.lib dplayx.lib oldnames.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib comctl32.lib advapi32.lib shell32.lib uuid.lib winmm.lib vfw32.lib wsock32.lib dsound.lib dxguid.lib dinput8.lib ddraw.lib .\build/debug_win32\crashhandler\crashhandler.lib extlibs\dbghelp.lib version.lib extlibs\nvDXTlibMT6.lib /nologo /subsystem:windows /map /debug /machine:I386 /nodefaultlib /out:"../Falcdebg.exe" /pdbtype:sept
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "Falcon4 - Win32 Release"
# Name "Falcon4 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\ui\src\F4Config.cpp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\falcon4.rc
# End Source File
# Begin Source File

SOURCE=.\Ui\Src\Winmain.cpp

!IF  "$(CFG)" == "Falcon4 - Win32 Release"

!ELSEIF  "$(CFG)" == "Falcon4 - Win32 Debug"

# ADD CPP /W3

!ENDIF 

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\include\ComSup.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\Falclib\Include\4.ico
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Bigbmap.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Bitmap1.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\bitmap8.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\bitmap9.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\cur00001.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\cursor.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Cursor1.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Cursor2.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Cursor3.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Cursor4.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Cursor5.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\cursor6.cur
# End Source File
# Begin Source File

SOURCE=.\FALCLIB\INCLUDE\cursor7.cur
# End Source File
# Begin Source File

SOURCE=.\FALCLIB\INCLUDE\cursor8.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\drag_rm.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\f16.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\f16_on.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\f16_on_r.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\f16_rm.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Falcon4.ico
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Font1.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\hdrag_of.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\HDRAGON.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\HDRAGRM.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\listf16.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\loading.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\Mainfnt.BMP
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\mainfnto.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\mapzoom.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\midfnt.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\midfnton.bmp
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\not.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\stpt.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\stpt_dra.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\target.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\text.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_add_b.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_add_f.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_add_p.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_add_s.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_add_t.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_drag_.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_erase.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\ui_paint.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\vdrag.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\vdrag_rm.cur
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\vdragon.cur
# End Source File
# End Group
# Begin Source File

SOURCE=.\Falclib\Include\mainfnt.fnt
# End Source File
# Begin Source File

SOURCE=.\Falclib\Include\midfnt.fnt
# End Source File
# End Target
# End Project
