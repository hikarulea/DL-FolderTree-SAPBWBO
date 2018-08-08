@echo off

set current_dir=%cd%
set source_dir=%current_dir%\Files_Markdown
set target_dir=%current_dir%\FolderTree

:: Project
:: ...\FolderTree\!__Markdown\!--XXX Project.md
set file_name=!--XXX Project.md
set target_detail_dir=%target_dir%\!__Markdown
call:myCopy
:: ...\FolderTree\!__Markdown\!--XXX Project_Todo-List(Archived).md
set file_name=!--XXX Project_Todo-List(Archived).md
set target_detail_dir=%target_dir%\!__Markdown
call:myCopy

:: AMS
::...\FolderTree\00.AMS Support\README_AMS Support.md
set file_name_src=AMS_README.md
set file_name_tgt=README_AMS Support.md
set target_detail_dir=%target_dir%\00.AMS Support
call:myCopy2

:: [Report or Project Name]_Template
::...\FolderTree\01.[Report or Project Name]_Template\README.md
set file_name_src=[Report or Project Name]_README.md
set file_name_tgt=README_[Report or Project Name].md
set target_detail_dir=%target_dir%\01.[Report or Project Name]_Template
call:myCopy2

:: Dev
::...\FolderTree\70.DEV(OverAll)\README.md
set file_name_src=DEV_OverAll_README.md
set file_name_tgt=README.md
set target_detail_dir=%target_dir%\70.DEV(OverAll)
call:myCopy2
::...\FolderTree\70.DEV(OverAll)\!--XXX BW & BO --!.md
set file_name="!--XXX BW %&"&" BO --!".md
set target_detail_dir=%target_dir%\70.DEV(OverAll)
call:myCopy
::...\FolderTree\70.DEV(OverAll)\BO\WebI\[Template - No] - [Short Description]\WebI Formula\!--XXX BW & BO --!.md
set file_name=[WebI Name]_Formula_YYYYMMDD.widf
set target_detail_dir=%target_dir%\70.DEV(OverAll)\BO\WebI\[Template - No] - [Short Description]\WebI Formula
call:myCopy

:: SourceCode
::...\FolderTree\!_SourceCode\ABAP_Class\[System]_[Class Description]\[Class Name]_YYYYMMDD.md
set file_name=[Class Name]_YYYYMMDD.md
set target_detail_dir=%target_dir%\!_SourceCode\ABAP_Class\[System]_[Class Description]
call:myCopy
::...\FolderTree\!_SourceCode\ABAP_Program\[Program Name]_YYYYMMDD.md
set file_name=[Program Name]_YYYYMMDD.md
set target_detail_dir=%target_dir%\!_SourceCode\ABAP_Program
call:myCopy
::...\FolderTree\!_SourceCode\ABAP_FM\[Function Module Name]_YYYYMMDD.md
set file_name=[Function Module Name]_YYYYMMDD.md
set target_detail_dir=%target_dir%\!_SourceCode\ABAP_FM
call:myCopy
::...\FolderTree\!_SourceCode\BAdI_Class\[Class Name]_YYYYMMDD.md
set file_name=[Class Name]_YYYYMMDD.md
set target_detail_dir=%target_dir%\!_SourceCode\BAdI_Class
call:myCopy
::..\FolderTree\!_SourceCode\BW_DataSource\[DataSource]-[Function Module]\[DataSource Name]_YYYYMMDD.md
set file_name=[DataSource Name]_YYYYMMDD.md
set target_detail_dir=%target_dir%\!_SourceCode\BW_DataSource\[DataSource]-[Function Module]
call:myCopy
::..\FolderTree\!_SourceCode\BW_Process Chain\[Process Chain Tech Name]\[ProcessChain].xlsx
set file_name=[ProcessChain].xlsx
set target_detail_dir=%target_dir%\!_SourceCode\BW_Process Chain\[Process Chain Tech Name]
call:myCopy

:: Transport
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - BO.md
set file_name=!--XXX TR Status - BO.md
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - BW.md
set file_name=!--XXX TR Status - BW.md
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\!--XXX TR Status - DO NOT Transport.md
set file_name=!--XXX TR Status - DO NOT Transport.md
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy
:: ...\FolderTree\71.MTP(TR Status)\XXX_TR_Status_YYYYMM(Archives).md
set file_name=XXX_TR_Status_YYYYMM(Archives).md
set target_detail_dir=%target_dir%\71.MTP(TR Status)
call:myCopy

pause
goto:eof

:myCopy
set source="%source_dir%\%file_name%"
echo %source%
set target="%target_detail_dir%\%file_name%"
echo %target%
copy /y %source% %target%
goto:eof

:myCopy2
set source="%source_dir%\%file_name_src%"
echo %source%
set target="%target_detail_dir%\%file_name_tgt%"
echo %target%
copy /y %source% %target%
goto:eof
