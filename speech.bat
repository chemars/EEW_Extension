@ECHO OFF
IF %1 == 0 SET "text=�a�_�t���A�w���_��%1�šA%2����F"
IF %1 == 1 SET "text=�a�_�t���A�w���_��%1�šA%2����F"
IF %1 == 2 SET "text=�a�_�t���A�w���_��%1�šA%2����F"
IF %1 == 3 SET "text=�a�_�t���A�w���_��%1�šA%2����F"
IF %1 == 4 SET "text=�j�_ĵ���A�w���_��%1�šA%2����F"
IF %1 == 5 SET "text=�j�_ĵ���A�w���_��%1�šA%2����F"
IF %1 == 6 SET "text=�j�_ĵ���A�w���_��%1�šA%2����F"
IF %1 == 7 SET "text=�j�_ĵ���A�w���_��%1�šA%2����F"

PowerShell -WindowStyle Hidden -Command "Add-Type �VAssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%text%');"