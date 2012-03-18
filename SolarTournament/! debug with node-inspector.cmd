@echo off

rem set NODE_ENV=production
set NODE_ENV=development

start node-inspector

rem a small waiting time to wait for node-inspector
ping -n 3 127.0.0.1>nul

%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe 127.0.0.1:8080/debug?port=5858

pause