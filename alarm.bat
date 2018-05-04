@ECHO OFF
SET "filename=alarm.wav"
PowerShell -WindowStyle Hidden -Command "(New-Object Media.SoundPlayer "%~dp0\%filename%").PlaySync();"