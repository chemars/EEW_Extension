@ECHO OFF
IF %1 == 0 SET "text=地震速報，預估震度%1級，%2秒後抵達"
IF %1 == 1 SET "text=地震速報，預估震度%1級，%2秒後抵達"
IF %1 == 2 SET "text=地震速報，預估震度%1級，%2秒後抵達"
IF %1 == 3 SET "text=地震速報，預估震度%1級，%2秒後抵達"
IF %1 == 4 SET "text=強震警報，預估震度%1級，%2秒後抵達"
IF %1 == 5 SET "text=強震警報，預估震度%1級，%2秒後抵達"
IF %1 == 6 SET "text=強震警報，預估震度%1級，%2秒後抵達"
IF %1 == 7 SET "text=強震警報，預估震度%1級，%2秒後抵達"

PowerShell -WindowStyle Hidden -Command "Add-Type –AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%text%');"