@echo off
set current_dir=%cd%
set tree_dir=%current_dir%\FolderTree
tree %tree_dir% /f /a > FolderStrucutre.txt
pause
