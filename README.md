# Hava Durumu İstasyonu

V2.0 Yapılan Değişiklikler
- Mikroişlemci devresinde dijital güç girişlerinin tamamına filtre kondansatörü eklendi.
- Sıcaklık sensörünün çalışmasını engelleyen filtre kondansatörüne ait bağlantı hatası düzeltildi.
- Komponentlerin tamamı kartın üzerine yeniden dizildi.
- PCB 4 katmanlı olarak yeniden tasarlandı.

V1.0
Sıcaklık, nem ve basınç verileri sensörler yardımıyla okunarak kablosuz bir şekilde bilgisayara iletilmektedir.

Sıcaklık ve nem sensörü olarak SHT30, basınç sensörü olarak ise BMP280 kullanılmıştır. Mikrodenetleyici olarak STM32F103C8T6 tercih edilmiştir. Sensör verilerinin yanında pil geirlimi ve gerçek zamanlı saat verisi de mikrodenetleyici ile oluşturulmaktadır. Kablosuz haberleşme için ESP8266-01 modülü tercih edilmiştir. Gömülü sistem kodları C dilinde STM32 CubeIDE üzerinde yazılmıştır. Grafik arayüzü Visual Studio üzerinde C# dili ile hazırlanmıştır. Arayüz tasarımında .NET Framework ve SimpleTCP eklentisi gereklidir.

Gerekli PCB tasarımı Autodesk Eagle ile yapılmıştır.

Proje elektrik elektronik mühendisliği lisans bitirme projesi olarak tasarlanmıştır.
