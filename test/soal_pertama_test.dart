import 'package:test/test.dart';
import '../bin/soal_pertama.dart';

void main() {
  group('Logika Hitung Angka Genap', () {
    // Skenario 1: List Campuran Biasa
    test('Harus menghitung jumlah angka genap dengan benar (Campuran)', () {
      var input = [1, 2, 3, 4, 5, 6];
      // 2, 4, 6 adalah genap (Total 3)
      expect(hitungAngkaGenap(input), 3);
      expect(hitungAngkaGenapFunctional(input), 3);
    });

    // Skenario 2: Semua Angka Ganjil
    test('Harus mengembalikan 0 jika semua angka ganjil', () {
      var input = [1, 3, 5, 7, 9];
      expect(hitungAngkaGenap(input), 0);
      expect(hitungAngkaGenapFunctional(input), 0);
    });

    // Skenario 3: Semua Angka Genap
    test('Harus menghitung semua jika semua angka genap', () {
      var input = [2, 4, 8, 10];
      expect(hitungAngkaGenap(input), 4);
      expect(hitungAngkaGenapFunctional(input), 4);
    });

    // Skenario 4: List Kosong
    test('Harus mengembalikan 0 jika array kosong', () {
      List<int> input = [];
      expect(hitungAngkaGenap(input), 0);
      expect(hitungAngkaGenapFunctional(input), 0);
    });

    // Skenario 5: Angka Negatif
    test('Harus bisa menghitung angka genap negatif', () {
      // -2 dan -4 adalah genap
      var input = [-1, -2, -3, -4, -5];
      expect(hitungAngkaGenap(input), 2);
      expect(hitungAngkaGenapFunctional(input), 2);
    });
  });
}
