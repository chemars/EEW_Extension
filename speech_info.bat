@ECHO OFF
PowerShell -Command "Add-Type �VAssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Speak('���� Chinese'); $speak.GetInstalledVoices().VoiceInfo;"

pause