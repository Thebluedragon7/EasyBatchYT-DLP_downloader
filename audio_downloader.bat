@echo off
color a
title Audio Downloader script for yt-dlp by Hu Nan
set audioDownloadPath="\audios"
cls
:main
echo   #################################################
echo ###### ##############      ###      ##        #######
echo #####   ####  ####  #  ###  #### #####  ##### #######
echo ####  ## ### ##### ##  ####  ### #####  ##### #######
echo ###       ## ##### ##  ####  ### #####  ##### #######
echo ###  ###  ##  ###  ##  ###  #### #####  ##### #######
echo ###  ###  ###    #  #     ####      ##        #######
echo   #################################################
:label_2
set /p audio_url="Enter the video/audio url : "
yt-dlp -i --extract-audio --audio-quality  0 --audio-format mp3 -o "%audioDownloadPath%\%%(title)s.%%(ext)s" %audio_url%
if %errorlevel% == 1 (
	cls
	echo trying to update yt-dlp
	yt-dlp -U
	goto :main
)
goto :label_2

rem		\ on line 4, after 24th character, if you want to save the audio inside a directory/folder
rem		\ then make sure to add the path there
rem		Created by Hu Nan, consider subscribing for more content!
rem		https://www.youtube.com/channel/UCk8u1Xct5X06Vzj7VJYQwsw
