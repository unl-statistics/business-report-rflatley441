@echo off
setlocal

REM If not running in Windows CMD, just exit successfully
if not defined OS exit /b 0
if /I not "%OS%"=="Windows_NT" exit /b 0

REM Normal Windows behavior below

cd /d "%~dp0"

if not exist docs mkdir docs

quarto render slides.qmd

move /Y slides.html docs\
move /Y slides_files docs\
