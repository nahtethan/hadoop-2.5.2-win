@echo off
set CURR_PATH=%~dp0
if exist %CURR_PATH%\master.bat (
  move %CURR_PATH%\master.bat %CURR_PATH%\etc\
)

set HDFS=%CURR_PATH%\bin\hdfs.cmd
start /b cmd /c call %HDFS% namenode -alone
%HDFS% datanode -alone