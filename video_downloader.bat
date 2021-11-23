@echo off
color a
title Video Downloader script for yt-dlp by Hu Nan
set videoDownloadPath="\videos"
cls
:main
echo   ###############################################
echo ##  #####  ##     ##      ####    ##        #######
echo ##  #####  #### ####  ###  ### #####  ##### #######
echo ###  #### ##### ####  ####  ##    ##  ##### #######
echo ####  ## ###### ####  ####  ## #####  ##### #######
echo #####   ####### ####  ###  ### #####  ##### #######
echo ###### ######     ##     #####    ##        #######
echo   ###############################################
:label_1
set /p video_url="Enter the video url : "
yt-dlp -i -f best --format mp4 -o "%videoDownloadPath%\%%(title)s.%%(ext)s" %video_url%
if %errorlevel% == 1 (
	cls
	echo trying to update yt-dlp
	yt-dlp -U
	goto :main
)
goto :label_1

rem		\ on line 4, after 24th character, if you want to save the video inside a directory/folder
rem		\ then make sure to add the path there
rem		Created by Hu Nan, consider subscribing for more content!
rem		https://www.youtube.com/channel/UCk8u1Xct5X06Vzj7VJYQwsw