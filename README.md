# hava-durumu-istasyonu

Sıcaklık, nem ve basınç verileri sensörler yardımıyla okunarak kablosuz bir şekilde bilgisayara iletilmektedir.

Sıcaklık ve nem sensörü olarak SHT30, basınç sensörü olarak ise BMP280 kullanılmıştır. Mikrodenetleyici olarak STM32F103C8T6 tercih edilmiştir. Sensör verilerinin yanında pil geirlimi ve gerçek zamanlı saat verisi de mikrodenetleyici ile oluşturulmaktadır. Kablosuz haberleşme için ESP8266-01 modülü tercih edilmiştir.

Gerekli PCB tasarımı Autodesk Eagle ile yapılmıştır.
