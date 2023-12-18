// ignore_for_file: file_names

import 'dart:math';
import 'package:dy_test/soru_controller.dart';

class SoruBankasi {
  int _soruIndeks = 0;

  final List<Soru> _soruBankasi = [
    Soru(
      soruMetni: "Vatikan bir ülkedir.",
      soruCevaplari: true,
    ),
    Soru(
      soruMetni: "Melbourne, Avustralya'nın başkentidir.",
      soruCevaplari: false,
    ),
    Soru(
      soruMetni: "Penisilin, sıtmayı tedavi etmek için Vietnam'da keşfedildi",
      soruCevaplari: false,
    ),
    Soru(
      soruMetni: "Fuji Dağı, Japonya'nın en yüksek dağıdır.",
      soruCevaplari: true,
    ),
    Soru(
      soruMetni: "Brokoli, limondan daha fazla C vitamini içerir.",
      soruCevaplari: true,
    ),
    Soru(
      soruMetni: "Kafatası insan vücudundaki en güçlü kemiktir.",
      soruCevaplari: false,
    ),
    Soru(
        soruMetni: "Google başlangıçta BackRub olarak adlandırıldı.",
        soruCevaplari: true),
    Soru(soruMetni: "Uçaktaki kara kutu siyahtır", soruCevaplari: false),
    Soru(soruMetni: "Domates meyvedir.", soruCevaplari: false),
    Soru(soruMetni: "Kleopatra Mısır kökenliydi.", soruCevaplari: false),
    Soru(
        soruMetni: "Kafatası insan vücudundaki en güçlü kemiktir.",
        soruCevaplari: false),
    Soru(soruMetni: "Uyurken hapşırabilirsiniz.", soruCevaplari: false),
    Soru(
        soruMetni: "Gözlerini açarken hapşırmak imkansız",
        soruCevaplari: false),
    Soru(soruMetni: "Muz meyvelerdir", soruCevaplari: true),
    Soru(
        soruMetni: "Bir salyangoz 1 aya kadar uyuyabilir.",
        soruCevaplari: false),
    Soru(
        soruMetni: "Burnunuz günde neredeyse bir litre mukus üretir.",
        soruCevaplari: true),
    Soru(soruMetni: "Mukus vücudunuz için sağlıklıdır.", soruCevaplari: true),
    Soru(
        soruMetni: "Coca-Cola dünyanın her ülkesinde var",
        soruCevaplari: false),
    Soru(soruMetni: "Hindistan cevizi bir cevizdir.", soruCevaplari: false),
    Soru(
        soruMetni: "Bir tavuk, kesildikten çok sonra kafasız yaşayabilir",
        soruCevaplari: true),
    Soru(
        soruMetni: "İnsanlar DNA'larının yüzde 95'ini muzla paylaşırlar",
        soruCevaplari: false),
    Soru(
        soruMetni: "Zürafalar möö diye ses çıkartabilir.", soruCevaplari: true),
    Soru(
        soruMetni: "ABD Arizona'da kaktüs kesmekten ceza alabilirsiniz",
        soruCevaplari: true),
    Soru(
        soruMetni: "ABD, Ohio'da balık sarhoş etmek yasa dışıdır",
        soruCevaplari: false),
    Soru(soruMetni: "Tüm memeliler karada yaşar.", soruCevaplari: false),
    Soru(soruMetni: "Bir filin doğması dokuz ay sürer", soruCevaplari: false),
    Soru(soruMetni: "Kahve meyvelerden yapılır.", soruCevaplari: true),
    Soru(soruMetni: "Domuzlar aptaldır", soruCevaplari: true),
    Soru(
        soruMetni: "Bulutlardan korkmaya Koulrofobi denir",
        soruCevaplari: false),
    Soru(
        soruMetni: "Einstein üniversitede matematik dersinde başarısız oldu",
        soruCevaplari: false),
    Soru(
        soruMetni: " Elektrik, yalnızca metallerde iletilir.",
        soruCevaplari: false),
    Soru(soruMetni: " Dünya, Güneş'in çevresinde döner.", soruCevaplari: false),
    Soru(
        soruMetni: "Elektrik, yalnızca metallerde iletilir.",
        soruCevaplari: false),
    Soru(soruMetni: "Dünya, Güneş'in çevresinde döner.", soruCevaplari: true),
    Soru(soruMetni: "Sıcak su daha hızlı donar.", soruCevaplari: false),
    Soru(
        soruMetni: "Atatürk, Türkiye Cumhuriyeti'nin ilk cumhurbaşkanıdır.",
        soruCevaplari: true),
    Soru(soruMetni: "Balinalar memelilerdir.", soruCevaplari: true),
    Soru(
        soruMetni: "İstanbul, Türkiye'nin başkentidir. ", soruCevaplari: false),
    Soru(
        soruMetni: "Su, oksijen ve hidrojenin birleşmesiyle oluşur.",
        soruCevaplari: true),
    Soru(soruMetni: "Yılanlar omurgalılardandır. ", soruCevaplari: false),
    Soru(soruMetni: "Jüpiter, en büyük gezegendir.", soruCevaplari: false),
    Soru(
        soruMetni: "İngiltere, Avrupa'nın en büyük ülkesidir.",
        soruCevaplari: false),
    Soru(soruMetni: "Bir yıl 365 gün sürer.", soruCevaplari: true),
    Soru(
        soruMetni: "Arılar bal yapmak için çiçeklerden toprak alırlar.",
        soruCevaplari: false),
    Soru(soruMetni: "İnsan vücudunda 206 kemik bulunur.", soruCevaplari: true),
    Soru(
        soruMetni: "Timsahlar sadece tatlı su bölgelerinde yaşar.",
        soruCevaplari: false),
    Soru(
        soruMetni: "Kurbağalar yumurtalarını suda bırakır.",
        soruCevaplari: true),
    Soru(soruMetni: "ABD'nin başkenti New York'tur.", soruCevaplari: false),
    Soru(soruMetni: "Dinozorlar şu anda yaşamaktadır.", soruCevaplari: false),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndeks].soruMetni;
  }

  bool getSoruCevabi() {
    return _soruBankasi[_soruIndeks].soruCevaplari;
  }

  void sonrakiSoru() {
    if (_soruIndeks + 1 < _soruBankasi.length) {
      _soruIndeks++;
    }
  }

  bool testBittiMi() {
    if (_soruIndeks + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiBasaAl() {
    _soruIndeks = 0;
  }

  int soruSayisi() {
    return _soruBankasi.length;
  }

  SoruBankasi() {
    karistir();
  }

  void karistir() {
    _soruBankasi.shuffle(Random());
  }
}
