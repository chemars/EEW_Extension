@ECHO OFF
REM SET /A "sec=%2-4"
REM IF %sec% LSS 0 SET "sec=0"
REM IF %1 == 0 SET "text=地震速報，預估震度%1級，%sec%秒後抵達"
REM IF %1 == 1 SET "text=地震速報，預估震度%1級，%sec%秒後抵達"
REM IF %1 == 2 SET "text=地震速報，預估震度%1級，%sec%秒後抵達"
REM IF %1 == 3 SET "text=地震速報，預估震度%1級，%sec%秒後抵達"
REM IF %1 == 4 SET "text=地震速報，預估震度%1級，%sec%秒後抵達"
REM IF %1 == 5- SET "text=強震警報，預估震度5弱，%sec%秒後抵達"
REM IF %1 == 5+ SET "text=強震警報，預估震度5強，%sec%秒後抵達"
REM IF %1 == 6- SET "text=強震警報，預估震度6弱，%sec%秒後抵達"
REM IF %1 == 6+ SET "text=強震警報，預估震度6強，%sec%秒後抵達"
REM IF %1 == 7 SET "text=強震警報，預估震度%1級，%sec%秒後抵達"

SET "text=強震警報"

PowerShell -WindowStyle Hidden -Command "Add-Type -AssemblyName System.Speech; (New-Object System.Speech.Synthesis.SpeechSynthesizer).Speak('%text%');"