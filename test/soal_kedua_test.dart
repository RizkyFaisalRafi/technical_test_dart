import 'package:test/test.dart';
import '../bin/soal_kedua.dart';

void main() {
  group('Logika Balik Urutan Kata', () {
    // Skenario 1: Kalimat Normal
    test('Harus membalik urutan kata dengan benar', () {
      expect(balikUrutanKata("Hello World"), equals("World Hello"));
      expect(balikUrutanKata("Saya Suka Dart"), equals("Dart Suka Saya"));
    });

    // Skenario 2: Satu Kata
    test('Jangan mengubah apa-apa jika hanya satu kata', () {
      expect(balikUrutanKata("Hello"), equals("Hello"));
    });

    // Skenario 3: Spasi Berlebih (Trim check)
    test('Harus mengabaikan spasi di awal dan akhir (Trim)', () {
      // Input ada spasi di depan dan belakang
      String input = "  Hello World  ";
      // Output harus bersih
      expect(balikUrutanKata(input), equals("World Hello"));
    });

    // Skenario 4: Kalimat Panjang
    test('Menangani kalimat yang lebih panjang', () {
      String input = "Satu Dua Tiga Empat Lima";
      String expected = "Lima Empat Tiga Dua Satu";
      expect(balikUrutanKata(input), equals(expected));
    });
  });
}
