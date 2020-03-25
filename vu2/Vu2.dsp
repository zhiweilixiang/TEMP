# Microsoft Developer Studio Project File - Name="Vu2" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=Vu2 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Vu2.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Vu2.mak" CFG="Vu2 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Vu2 - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "Vu2 - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Vu2 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\build/release_win32\Vu2"
# PROP BASE Intermediate_Dir "..\build/release_win32\Vu2"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\build/release_win32\Vu2"
# PROP Intermediate_Dir "..\build/release_win32\Vu2"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /G6 /Zp4 /MT /W3 /GX /Zi /O1 /Op /Ob2 /I "..\Vu2\Include" /I "..\Falclib\Include" /I "..\\" /I "..\Codelib\Include" /D "NDEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "Vu2 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\build/debug_win32\Vu2"
# PROP BASE Intermediate_Dir "..\build/debug_win32\Vu2"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\build/debug_win32\Vu2"
# PROP Intermediate_Dir "..\build/debug_win32\Vu2"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /G6 /MTd /W3 /Gm /GX /ZI /Od /I "..\Vu2\Include" /I "..\Falclib\Include" /I "..\\" /I "..\Codelib\Include" /D "_DEBUG" /D "_LIB" /D TARGET=m_i486 /D "WIN32" /D "_MBCS" /D "STRICT" /D "WIN32_LEAN_AND_MEAN" /FD /GZ /c
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

# Name "Vu2 - Win32 Release"
# Name "Vu2 - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\src\vu.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_anti_database.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_association_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_bi_key_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_collection_manager.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_database.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_database_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_fifo_queue.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_filtered_hash_table.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_filtered_list.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_full_grid_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_grid_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_grid_tree.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_hash_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_hash_table.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_key_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_lifo_queue.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_line_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_linked_list.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_list_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_list_mucky_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_opaque_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_ordered_list.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_rb_iterator.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_rb_node.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_rb_tree.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_standard_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vu_type_filter.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vucoll.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vudriver.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vuentity.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vuevent.cpp
# End Source File
# Begin Source File

SOURCE=.\src\vusessn.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\include\vu.h
# End Source File
# Begin Source File

SOURCE=.\src\vu_priv.h
# End Source File
# Begin Source File

SOURCE=.\include\vucoll.h
# End Source File
# Begin Source File

SOURCE=.\include\vudriver.h
# End Source File
# Begin Source File

SOURCE=.\include\vuentity.h
# End Source File
# Begin Source File

SOURCE=.\include\vuevent.h
# End Source File
# Begin Source File

SOURCE=.\include\vumath.h
# End Source File
# Begin Source File

SOURCE=.\include\vusessn.h
# End Source File
# End Group
# End Target
# End Project
