@ECHO OFF
PowerShell -Command "Add-Type ¡VAssemblyName System.Speech; $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer; $speak.Speak('¤¤¤å Chinese1'); $speak.GetInstalledVoices().VoiceInfo;"

pause