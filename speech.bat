@echo off
setlocal EnableExtensions DisableDelayedExpansion
chcp 65001 >nul

rem CMD 會將未加引號的等號視為參數分隔符。
rem 例如 --depth=10 會依序成為 %%1=--depth、%%2=10。
:parse_loop
if "%~1"=="" goto :parameters_ready

set "PARAM_NAME=%~1"
set "PARAM_VALUE=%~2"

if /i "%PARAM_NAME%"=="--epicenter-lat" set "EPICENTER_LAT=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--epicenter-lon" set "EPICENTER_LON=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--depth" set "DEPTH=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--magnitude" set "MAGNITUDE=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--max-intensity" set "MAX_INTENSITY=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--local-intensity" set "LOCAL_INTENSITY=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--arrival-time" set "ARRIVAL_TIME=%PARAM_VALUE%"
if /i "%PARAM_NAME%"=="--remaining-time" set "REMAINING_TIME=%PARAM_VALUE%"

shift
shift
goto :parse_loop

:parameters_ready
REM 震央緯度 %EPICENTER_LAT%
REM 震央經度 %EPICENTER_LON%
REM 深度（公里） %DEPTH%
REM 規模 %MAGNITUDE%
REM 最大震度 %MAX_INTENSITY%
REM 所在地震度 %LOCAL_INTENSITY%
REM 抵達時間戳 %ARRIVAL_TIME%
REM 剩餘秒數 %REMAINING_TIME%

SET /A "sec=%REMAINING_TIME%-4"
IF %sec% LSS 0 SET "sec=0"
IF %LOCAL_INTENSITY% == 0 SET "text=地震速報，預估震度0級，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 1 SET "text=地震速報，預估震度1級，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 2 SET "text=地震速報，預估震度2級，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 3 SET "text=地震速報，預估震度3級，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 4 SET "text=地震速報，預估震度4級，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 5- SET "text=強震警報，預估震度5弱，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 5+ SET "text=強震警報，預估震度5強，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 6- SET "text=強震警報，預估震度6弱，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 6+ SET "text=強震警報，預估震度6強，%sec%秒後抵達"
IF %LOCAL_INTENSITY% == 7 SET "text=強震警報，預估震度7級，%sec%秒後抵達"

PowerShell -NoProfile -WindowStyle Hidden -Command "Add-Type -AssemblyName System.Speech; $speaker = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speaker.Speak($env:text)"

endlocal
exit /b 0
