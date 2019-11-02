::MDAE BY EVERYDAYTECH 由EverydayTech制作
::本脚本完全开源（废话）
::转载请保留出处
::---------------------------------------------------
::更新记录
::1.0 初版
::---------------------------------------------------
::代码

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"

@echo off
title=Live2D Cubism 无限试用
:menu
mode con cols=40 lines=20
color 06
cls
echo        Live2D Cubism 无限试用脚本
echo.
echo.
echo   1.清除试用信息
echo   2.食用方法
echo   3.关于
echo   4.退出
echo.
echo.
echo.
echo.


:o

set /p o=输入数字回车选择: 
if "%o%"=="1" goto start
if "%o%"=="2" goto help
if "%o%"=="3" goto about
if "%o%"=="4" goto exit
goto menu



:start
color 74
mode con cols=60 lines=20
cls
echo.
echo.
echo.
echo 即将清除试用信息
echo.
echo 请确保Live2D Cubism没有在运行
echo 尽量关闭杀毒软件以防误报
echo.
echo.
echo *此举动将可能违反Live2D Cubism的用户条款
echo  继续即表示你明白并且同意你的行为产生的后果与本脚本作者无关
pause
echo 正在清除许可
rd /s/q C:\ProgramData\Live2D
rd /s/q C:\ProgramData\Reprise
echo 清除完成
set /p e= 按回车键退出
goto exit

:help
color F0
cls
mode con cols=65 lines=20
echo 本脚的原理是清除试用记录以达到无限次试用
echo 请自行下载Live2DCubism
echo 打开软件后选择试用Pro版
echo 试用到期时再用本脚本清除许可后就可以再看到试用60/42天的选项了
echo.
echo.
echo 本脚本理论上支持Live2DCubism2/3/4(只在2.1和3.3版上测试过)
echo.
echo.
echo.
echo *注意 2.x破解版的许可证也会被清除
echo.
echo.
echo.
pause
set o= 
goto menu

:about
color F0
cls
echo.
echo.
echo  本脚本由:网络油侠(B站/百度贴吧)oilman(GitHub)制作
echo.
echo.
echo 方法来源于：
echo https://tieba.baidu.com/p/6066105365
echo （@colourfulbird）
echo.
echo 转载随意但请保留出处
echo 本脚本仅供学习交流之用
echo.
echo.
echo.
pause
set o=0
goto menu



:exit
