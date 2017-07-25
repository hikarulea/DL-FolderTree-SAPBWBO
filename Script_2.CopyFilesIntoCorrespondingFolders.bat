@echo off

set current_dir=%cd%
set source_dir=%current_dir%\Files_Markdown
set target_dir=%current_dir%\FolderTree

:: Project
:: ...\FolderTree\!__Markdown\!--XXX memo.md
set file_name="!--XXX memo.md"
set target_detail_dir=%target_dir%\!__Markdown
call:myCopy

:: Dev
::...\FolderTree\70.DEV(OverAll)\README.md
set file_name=README.md
set target_detail_dir=%target_dir%\70.DEV(OverAll)
call:myCopy
::...\FolderTree\70.DEV(OverAll)\!--XXX BW & BO --!.md
set file_name="!--XXX BW & BO --!.md"
set target_detail_dir=%target_dir%\70.DEV(OverAll)
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