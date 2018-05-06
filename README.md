# 地震速報連動程式
配合地牛Wake Up! http://eew.earthquake.tw

## 說明
地牛Wake Up! v2.0.0新增了連動功能，可以在收到地震速報後執行指定程式，並且傳遞兩個參數（預估震度、S波抵達剩餘時間）。以下是一些應用，在右上角設定圖示>其他>連動設定，啟用並選擇就能使用（點擊`測試`可確認是否正常執行）。
### 根據預估震度發出不同語音
`speech.bat`可以根據預估震度發出不同語音，預設語音為「地震速報（強震警報），預估震度X級，X秒後抵達」。由於使用 Windows 系統的文字轉語音功能，Windows 7 可能無法辨識中文，使用`speech_info.bat`可察看詳情。

### 自訂音效
`alarm.bat`可以播放指定的音效（播放一次），僅支援 wav 檔，預設檔名為 alarm.wav；`alarm_loop.bat`可以循環播放，並自訂循環時間，預設為15秒。音效檔案位置須與前者相同。

## 其他
1. 以 bat 檔而言，變數 %1 為預估震度，變數 %2 為S波抵達剩餘時間。
