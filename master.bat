@echo off
set CURR_PATH=%~dp0
if exist %CURR_PATH%\worker.bat (
  move %CURR_PATH%\worker.bat %CURR_PATH%\etc\
)

if exist %CURR_PATH%\worker-alone.bat (
  move %CURR_PATH%\worker-alone.bat %CURR_PATH%\etc\
)

set HDFS=%CURR_PATH%\bin\hdfs.cmd
start /b cmd /c call %HDFS% namenode
%HDFS% datanode