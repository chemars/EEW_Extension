@ECHO OFF
PowerShell -Command "Add-Type -AssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Speak('���� Chinese'); $speak.GetInstalledVoices().VoiceInfo;"
pause