# SwiftZhConverter 簡介
一個可幫助執行中文繁簡轉換的 Swift Library。轉換原理是基於字轉換，也就是針對每個中文字碼進行轉換動作，字碼對照表採用[同文堂](http://tongwen.openfoundry.org/technical_zh-tw.htm) 所整理開放出來的中文字碼對照表。

## 程式範例
``` swift
// 轉換繁體中文為簡體中文︰
// 圖書館員是很清閒的工作嗎？ -> 图书馆员是很清闲的工作吗？
var converter = ZhConverterFactory.getConverter(ZhCode.SIMPLIFIED)
converter.convert("圖書館員是很清閒的工作嗎？")

// 轉換簡體中文為繁體中文:
// 图书馆员是很清闲的工作吗？ -> 圖書館員是很清閒的工作嗎？
var converter = ZhConverterFactory.getConverter(ZhCode.TRANDITIONAL)
converter.convert("图书馆员是很清闲的工作吗？")
```

## 參考資料
- [Technical Reference from Tong Wen Tang] (http://tongwen.openfoundry.org/technical_zh-tw.htm)
- [Character mapping table of traditional to simplified] ( http://tongwen.openfoundry.org/src/tongwen_table/phrase_t2s.txt)
- [Character mapping table of simplified to traditional] ( http://tongwen.openfoundry.org/src/tongwen_table/phrase_s2t.txt)

# SwiftZhConverter Introduction
Based on the character map found in [Tong Wen Tang](http://tongwen.openfoundry.org/technical_zh-tw.htm) to convertt String between traditional and simplified Chinese characters.

## Examples
``` swift

// Tranditional To Simplified:
// 圖書館員是很清閒的工作嗎？ -> 图书馆员是很清闲的工作吗？
var converter = ZhConverterFactory.getConverter(ZhCode.SIMPLIFIED)
converter.convert("圖書館員是很清閒的工作嗎？")

// Simplified To Tranditional:
// 图书馆员是很清闲的工作吗？ -> 圖書館員是很清閒的工作嗎？
var converter = ZhConverterFactory.getConverter(ZhCode.TRANDITIONAL)
converter.convert("图书馆员是很清闲的工作吗？")
```

## References
- [Technical Reference from Tong Wen Tang] (http://tongwen.openfoundry.org/technical_zh-tw.htm)
- [Character mapping table of traditional to simplified] ( http://tongwen.openfoundry.org/src/tongwen_table/phrase_t2s.txt)
- [Character mapping table of simplified to traditional] ( http://tongwen.openfoundry.org/src/tongwen_table/phrase_s2t.txt)

