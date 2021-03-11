#!/usr/bin/env bash

set -ex

SCRIPT_DIR="`dirname \"${BASH_SOURCE}\"`"

cp ${SCRIPT_DIR}/patches/distversion.h sources/wine/include/distversion.h

# patch sources/wine/dlls/winecoreaudio.drv/authorization.m < ${SCRIPT_DIR}/winecoreaudio.patch

patch sources/wine/include/msvcrt/stdio.h < ${SCRIPT_DIR}/patches/msvcrt_stdio.patch

patch sources/wine/dlls/comctl32/propsheet.c < ${SCRIPT_DIR}/patches/comctl32_propsheet.patch
patch sources/wine/dlls/comctl32/taskdialog.c < ${SCRIPT_DIR}/patches/comctl32_taskdialog.patch
patch sources/wine/dlls/comctl32/treeview.c < ${SCRIPT_DIR}/patches/comctl32_treeview.patch

patch sources/wine/dlls/comdlg32/filedlg.c < ${SCRIPT_DIR}/patches/comdlg32_filedlg.patch
patch sources/wine/dlls/comdlg32/filedlgbrowser.c < ${SCRIPT_DIR}/patches/comdlg32_filedlgbrowser.patch
patch sources/wine/dlls/comdlg32/printdlg.c < ${SCRIPT_DIR}/patches/comdlg32_printdlg.patch

patch sources/wine/dlls/cryptui/main.c < ${SCRIPT_DIR}/patches/cryptui_main.patch

patch sources/wine/dlls/d3dx9_24/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_24_Makefile.patch
patch sources/wine/dlls/d3dx9_25/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_25_Makefile.patch
patch sources/wine/dlls/d3dx9_26/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_26_Makefile.patch
patch sources/wine/dlls/d3dx9_27/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_27_Makefile.patch
patch sources/wine/dlls/d3dx9_28/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_28_Makefile.patch
patch sources/wine/dlls/d3dx9_29/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_29_Makefile.patch
patch sources/wine/dlls/d3dx9_30/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_30_Makefile.patch
patch sources/wine/dlls/d3dx9_31/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_31_Makefile.patch
patch sources/wine/dlls/d3dx9_32/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_32_Makefile.patch
patch sources/wine/dlls/d3dx9_33/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_33_Makefile.patch
patch sources/wine/dlls/d3dx9_34/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_34_Makefile.patch
patch sources/wine/dlls/d3dx9_35/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_35_Makefile.patch
patch sources/wine/dlls/d3dx9_36/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_36_Makefile.patch
patch sources/wine/dlls/d3dx9_37/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_37_Makefile.patch
patch sources/wine/dlls/d3dx9_38/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_38_Makefile.patch
patch sources/wine/dlls/d3dx9_39/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_39_Makefile.patch
patch sources/wine/dlls/d3dx9_40/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_40_Makefile.patch
patch sources/wine/dlls/d3dx9_41/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_41_Makefile.patch
patch sources/wine/dlls/d3dx9_42/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_42_Makefile.patch
patch sources/wine/dlls/d3dx9_43/Makefile.in < ${SCRIPT_DIR}/patches/d3dx9_43_Makefile.patch

patch sources/wine/dlls/dsound/Makefile.in < ${SCRIPT_DIR}/patches/dsound_Makefile.patch

patch sources/wine/dlls/dplayx/dplay.c < ${SCRIPT_DIR}/patches/dplayx_dplay.patch
patch sources/wine/dlls/dplayx/dplayx_global.c < ${SCRIPT_DIR}/patches/dplayx_dplayx_global.patch
patch sources/wine/dlls/dplayx/dplobby.c < ${SCRIPT_DIR}/patches/dplayx_dplobby.patch
patch sources/wine/dlls/dplayx/name_server.c < ${SCRIPT_DIR}/patches/dplayx_name_server.patch

patch sources/wine/dlls/gdiplus/Makefile.in < ${SCRIPT_DIR}/patches/gdiplus_Makefile.patch

patch sources/wine/dlls/kernelbase/console.c < ${SCRIPT_DIR}/patches/kernelbase_console.patch
patch sources/wine/dlls/kernelbase/memory.c < ${SCRIPT_DIR}/patches/kernelbase_memory.patch
patch sources/wine/dlls/kernelbase/sync.c < ${SCRIPT_DIR}/patches/kernelbase_sync.patch
patch sources/wine/dlls/kernelbase/thread.c < ${SCRIPT_DIR}/patches/kernelbase_thread.patch
patch sources/wine/dlls/kernelbase/version.c < ${SCRIPT_DIR}/patches/kernelbase_version.patch
patch sources/wine/dlls/kernelbase/debug.c < ${SCRIPT_DIR}/patches/kernelbase_debug.patch
patch sources/wine/dlls/kernelbase/loader.c < ${SCRIPT_DIR}/patches/kernelbase_loader.patch
patch sources/wine/dlls/kernelbase/Makefile.in < ${SCRIPT_DIR}/patches/kernelbase_Makefile.patch

patch sources/wine/dlls/mfplat/main.c < ${SCRIPT_DIR}/patches/mfplat_main.patch

patch sources/wine/dlls/hal/hal.c < ${SCRIPT_DIR}/patches/hal_hal.patch

patch sources/wine/dlls/msvcp70/Makefile.in < ${SCRIPT_DIR}/patches/msvcp70_Makefile.patch
patch sources/wine/dlls/msvcp71/Makefile.in < ${SCRIPT_DIR}/patches/msvcp71_Makefile.patch
patch sources/wine/dlls/msvcp80/Makefile.in < ${SCRIPT_DIR}/patches/msvcp80_Makefile.patch
patch sources/wine/dlls/msvcp90/Makefile.in < ${SCRIPT_DIR}/patches/msvcp90_Makefile.patch
patch sources/wine/dlls/msvcp100/Makefile.in < ${SCRIPT_DIR}/patches/msvcp100_Makefile.patch
patch sources/wine/dlls/msvcp110/Makefile.in < ${SCRIPT_DIR}/patches/msvcp110_Makefile.patch
patch sources/wine/dlls/msvcp120/Makefile.in < ${SCRIPT_DIR}/patches/msvcp120_Makefile.patch
patch sources/wine/dlls/msvcp140/Makefile.in < ${SCRIPT_DIR}/patches/msvcp140_Makefile.patch

patch sources/wine/dlls/mshtml/ifacewrap.c < ${SCRIPT_DIR}/patches/mshtml_ifacewrap.patch

patch sources/wine/dlls/ntoskrnl.exe/instr.c < ${SCRIPT_DIR}/patches/ntoskrnl_instr.patch

patch sources/wine/dlls/ole32/clipboard.c < ${SCRIPT_DIR}/patches/ole32_clipboard.patch
patch sources/wine/dlls/ole32/datacache.c < ${SCRIPT_DIR}/patches/ole32_datacache.patch
patch sources/wine/dlls/ole32/filelockbytes.c < ${SCRIPT_DIR}/patches/ole32_filelockbytes.patch
patch sources/wine/dlls/ole32/ole2.c < ${SCRIPT_DIR}/patches/ole32_ole2.patch
patch sources/wine/dlls/ole32/ole2impl.c < ${SCRIPT_DIR}/patches/ole32_ole2impl.patch
patch sources/wine/dlls/ole32/oleobj.c < ${SCRIPT_DIR}/patches/ole32_oleobj.patch
patch sources/wine/dlls/ole32/stg_prop.c < ${SCRIPT_DIR}/patches/ole32_stg_prop.patch
patch sources/wine/dlls/ole32/usrmarshal.c < ${SCRIPT_DIR}/patches/ole32_usrmarshal.patch
