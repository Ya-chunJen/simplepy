@echo off
:main
echo 1�������ļ����ļ���
echo 2����ʾ�ļ����ļ���
set /p i=ѡ�����ֺ�س���
set /p fp=�����ļ����ļ���·����
if %i%==1 goto main1
if %i%==2 goto main2
:main1
attrib +S +H "%fp%"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t reg_dword /d 0 /f
goto continue
:main2
attrib -S -H "%fp%"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t reg_dword /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t reg_dword /d 1 /f
:continue
set /p i=�Ƿ������y:�������������˳�����
if %i%==y (
cls
goto main) else exit