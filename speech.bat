@ECHO OFF
REM SET /A "sec=%2-4"
REM IF %sec% LSS 0 SET "sec=0"
REM IF %1 == 0 SET "text=�a�_�t���A�w���_��%1�šA%sec%����F"
REM IF %1 == 1 SET "text=�a�_�t���A�w���_��%1�šA%sec%����F"
REM IF %1 == 2 SET "text=�a�_�t���A�w���_��%1�šA%sec%����F"
REM IF %1 == 3 SET "text=�a�_�t���A�w���_��%1�šA%sec%����F"
REM IF %1 == 4 SET "text=�a�_�t���A�w���_��%1�šA%sec%����F"
REM IF %1 == 5- SET "text=�j�_ĵ���A�w���_��5�z�A%sec%����F"
REM IF %1 == 5+ SET "text=�j�_ĵ���A�w���_��5�j�A%sec%����F"
REM IF %1 == 6- SET "text=�j�_ĵ���A�w���_��6�z�A%sec%����F"
REM IF %1 == 6+ SET "text=�j�_ĵ���A�w���_��6�j�A%sec%����F"
REM IF %1 == 7 SET "text=�j�_ĵ���A�w���_��%1�šA%sec%����F"

SET "text=�j�_ĵ��"

PowerShell -WindowStyle Hidden -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%text%');"