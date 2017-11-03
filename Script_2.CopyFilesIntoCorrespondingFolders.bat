@echo off

set current_dir=%cd%
set source_dir=%current_dir%\Files_Markdown
set target_dir=%current_dir%\FolderTree

:: Project
:: ...\FolderTree\!__Markdown\!--XXX Project.md
set file_name="!--XXX Project.md"
set target_detail_dir=%target_dir%\!__Markdown
call:myCopy

:: Project
:: ...\FolderTree\!__Markdown\!--XXX Project_Todo-List(Archived).md
set file_name="!--XXX Project_Todo-List(Archived).md"
set target_detail_dir=%target_dir%\!__Markdown
call:myCopy

:: AMS
::...\FolderTree\00.AMS Support\README.md
set file_name_src=AMS_README.md
set file_name_tgt=README.md
set target_detail_dir=%target_dir%\00.AMS Support
call:myCopy2

:: Dev
::...\FolderTree\70.DEV(OverAll)\README.md
set file_name_src=DEV_OverAll_README.md
set file_name_tgt=README.md
set target_detail_dir=%target_dir%\70.DEV(OverAll)
call:myCopy2
::...\FolderTree\70.DEV(OverAll)\!--XXX BW & BO --!.md
set file_name="!--XXX BW & BO --!.md"
set target_detail_dir=%target_dir%\70.DEV(OverAll)
call:myCopy

::...\FolderTree\!_SourceCode\ABAP_Class\[Class Name]_YYYYMMDD.md
set file_name="[Class Name]_YYYYMMDD.md"
set target_detail_dir=%target_dir%\!_SourceCode\ABAP_Class
call:myCopy

::...\FolderTree\!_SourceCode\ABAP_Program\[Program Name]_YYYYMMDD.md
set file_name="[Program Name]_YYYYMMDD.md"
set target_detail_dir=%target_dir%\!_SourceCode\ABAP_Program
call:myCopy

:: Transport
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - BO.md
set file_name="!--XXX TR Status - BO.md"
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - BW.md
set file_name="!--XXX TR Status - BW.md"
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - DO NOT Transport.md
set file_name="!--XXX TR Status - DO NOT Transport.md"
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\XXX_TR_Status_YYYYMM(Archives).md
set file_name=XXX_TR_Status_YYYYMM(Archives).md
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy

pause
goto:eof

:myCopy
set source="%source_dir%"\%file_name%
echo %source%
set target="%target_detail_dir%"\%file_name%
echo %target%
copy /y %source% %target%
goto:eof

:myCopy2
set source="%source_dir%"\%file_name_src%
echo %source%
set target="%target_detail_dir%"\%file_name_tgt%
echo %target%
copy /y %source% %target%
goto:eof