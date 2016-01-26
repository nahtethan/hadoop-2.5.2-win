@echo off
set CURR_PATH=%~dp0
set HDFS=%CURR_PATH%\..\bin\hdfs.cmd
%HDFS% namenode -format