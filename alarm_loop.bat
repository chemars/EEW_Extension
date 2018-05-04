@ECHO OFF
SET "filename=alarm.wav"
SET "time_sec=15"
PowerShell -WindowStyle Hidden -Command "(New-Object Media.SoundPlayer "%~dp0\%filename%").PlayLooping(); Start-Sleep -s %time_sec%;"