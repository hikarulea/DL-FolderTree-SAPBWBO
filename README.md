# DL-FolderTree-SAPBWBO
Templates for SAP BW/BO Project

## How to use

Use **Script_2.CopyFilesIntoCorrespondingFolders.bat** to move all latest markdown files into their corresponding folders.

## Structure

~~~
Root Folder
|   !-- version 20171205_1250
|   
+---!--Archives--!
|   \---[By Person Name]
+---!--Principle--!
+---!--Template--!
+---!_SourceCode
|   |   !--项目完成后，除本文件外，均移入 Source Code - BW - Project Code 文件夹
|   |   
|   +---ABAP_Class
|   |   \---【System】_【Class Description】
|   |       |   [Class Name]_YYYYMMDD.md
|   |       |   
|   |       \---【Download Date】
|   +---ABAP_Program
|   |   |   [Program Name]_YYYYMMDD.md
|   |   |   
|   |   \---【System】_【Program Description】
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---BAdI_Class
|   |   |   [Class Name]_YYYYMMDD.md
|   |   |   
|   |   \---【System】_【Class Description】
|   |       \---【Download Date】
|   +---BW_APD Routine
|   |   \---【APD & Routine Description】
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---BW_DataSource
|   |   |   [DataSource Name]_YYYYMMDD.md
|   |   |   
|   |   \---【DataSource】_【Function Module】
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---BW_DTP_Filter Routine
|   |   \---【DTP & Field Description】_DTP Tech Name
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---BW_InfoPackage_Filter Routine
|   |   \---【InfoPackage & Field Description】_InfoPackage Tech Name
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---BW_Process Chain
|   +---BW_Transformation
|   |   |   !-- 使用 Notepad++ 时，注意设置文件字符集.txt
|   |   |   
|   |   \---【Transformation Description】
|   |           [SID].abap
|   |           [SID]_YYYYMMDD_n.[Comments].abap
|   |           
|   +---CMOD_[System]
|   |       [System]_DEV.abap
|   |       [System]_DEV_YYYYMMDD_n.[Comments].abap
|   |       [System]_PRD.abap
|   |       [System]_PRD_YYYYMMDD_n.[Comments].abap
|   |       [System]_QAS.abap
|   |       [System]_QAS_YYYYMMDD_n.[Comments].abap
|   |       
|   +---Role_[System]
|   \---ZZZ_from Other Developer
+---!__Markdown
|       !---  README before using THIS FOLDER template.md
|       !--XXX Project.md
|       !--XXX Project_Todo-List(Archived).md
|       
+---!~Manday
|   +---!--Templates
|   +---20YY
|   \---20YYMM
+---00..Reference(OverAll)
+---00.AMS Support
|   |   README_AMS Support.md
|   |   
|   \---YYYYMMDD_[n.]SupportDescription
+---01.[Report or Project Name]_Template
|   |   README_[Report or Project Name].md
|   |   
|   +---00.Project Manage
|   |   +---!--MaxAttention
|   |   +---00.Project plan
|   |   +---01.Status Report
|   |   +---02.Daily Log(Status Detail)
|   |   \---03.Meeting Minutes
|   +---01.Requirement & Solution
|   |   +---00.Question List
|   |   +---01.Requirement
|   |   +---02.Analysis_AS-IS
|   |   +---03.Analysis_TO-BE
|   |   \---04.Solution
|   +---02.DEV
|   |   |   !--移入 OverAll @ 20161017，视项目规模.txt
|   |   |   
|   |   +---BO
|   |   |   \---WebI
|   |   |       \---[Template - No] - [WebI Short Description]
|   |   |           |   !--WebI 文件放在这里，公式放在上面文件夹里.txt
|   |   |           |   
|   |   |           \---WebI Formula
|   |   |                   !-- 文件内容模板见分类文件夹(02.DEV).txt
|   |   |                   
|   |   +---DataSource - Flat File
|   |   \---Query - Filter
|   |           BEx Query - Filter - Range can not be import.txt
|   |           BEx Query - Filter - Single Value.txt
|   |           
|   +---03.SIT
|   +---04.UAT
|   +---05.MTP
|   |   |   !-- 上线时的传输相关内容，上线后的传输见 PPS 对应错误文件夹@20150111 --!
|   |   |   
|   |   \---TR List
|   +---06.PPS
|   |   +---!--00.Daily issue Log
|   |   +---00.Data Upload
|   |   +---01.BW Issue
|   |   +---01.HANA Issue
|   |   +---02.BO Issue
|   |   +---03.Report Logic Issue
|   |   \---04.Authorization
|   +---07.KT
|   +---08.User Training
|   \---21.For Others
+---70.DEV(OverAll)
|   |   !--XXX BW & BO --!.md
|   |   README.md
|   |   
|   +---!--Archives
|   +---ABAP
|   +---Basis
|   |   \---Role Zxxxx
|   +---BO
|   |   \---WebI
|   |       \---[Template - No] - [Short Description]
|   |           |   !--WebI 文件放在这里，公式放在上面文件夹里.txt
|   |           |   
|   |           \---WebI Formula
|   |                   !-- 文件内容模板见分类文件夹(02.DEV).txt
|   |                   [WebI Name]_Formula_YYYYMMDD.widf
|   |                   
|   +---BW
|   \---HANA
+---70.lc_sel
+---71.MTP(TR Status)
|       !--XXX TR Status - BO.md
|       !--XXX TR Status - BW.md
|       !--XXX TR Status - DO NOT Transport.md
|       XXX_TR_Status_YYYYMM(Archives).md
|       
+---71.Optimization
+---99.Config
\---99.ID
~~~

