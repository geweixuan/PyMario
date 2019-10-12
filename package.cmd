@echo off
::环境变量设置
::python3
set PATH=%PATH%;E:\tools\python_64bit;E:\tools\python_64bit\Scripts
::python2.7
::set PATH=%PATH%;E:\tools\Python27;E:\tools\Python27\Scripts

goto package
goto copy_resource

::python打包
:package
echo "=============================start package============================="
pyinstaller -w -i .\data\resources\graphics\icon_logo.ico Mario_Bros.py -y

::复制运行所需声音及图片资源文件
:copy_resource
echo "=============================copy dependency resources============================="
md dist\Mario_Bros\data\resources
xcopy data\resources dist\Mario_Bros\data\resources /d /e /s /y


::使用call需要放在定义后边
::echo "=============================start package============================="
::call package
::call copy_resource