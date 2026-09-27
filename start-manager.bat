@echo off
cd /d "%~dp0"
set "NODE_EXE="
if exist "%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe" set "NODE_EXE=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if not defined NODE_EXE for /f "delims=" %%N in ('where node 2^>nul') do if not defined NODE_EXE set "NODE_EXE=%%N"
if not defined NODE_EXE (
  echo Node.js 22 or newer is required to run the Fieldkit Discord control panel.
  echo Install it from https://nodejs.org/ and then double-click this file again.
  pause
  exit /b 1
)
start "Fieldkit Discord Control Panel" http://127.0.0.1:43173
"%NODE_EXE%" server.mjs
pause
