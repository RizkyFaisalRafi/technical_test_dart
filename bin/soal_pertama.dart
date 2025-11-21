import 'dart:io'; // input/output

// Fungsi untuk menghitung angka genap (Opsi 1)
int hitungAngkaGenap(List<int> numbers) {
  int counter = 0;

  for (int number in numbers) {
    // Cek apakah angka habis dibagi 2 (Modulus)
    if (number % 2 == 0) {
      counter++;
    }
  }

  return counter;
}

// Cara Functional / Singkat (Opsi 2)
int hitungAngkaGenapFunctional(List<int> numbers) {
  // Filter angka yang habis dibagi 2, lalu hitung panjang list-nya
  return numbers.where((n) => n % 2 == 0).length;
}

// * Mode Input Console
void programConsole() {
  // Tampilkan teks permintaan input
  stdout.write("\n=== Mode Input Manual ===\n");
  stdout.write(
      "Masukkan deretan angka (pisahkan dengan koma, contoh: 2, 5, 8): ");

  // Baca input dari keyboard
  String? input = stdin.readLineSync();

  // Cek apakah input tidak kosong
  if (input != null && input.isNotEmpty) {
    try {
      // Proses parsing (mengubah Text menjadi List Angka)
      List<int> dataArray = input
          .split(',') // Potong teks berdasarkan koma
          .map((str) =>
              int.parse(str.trim())) // Hapus spasi & parsing to integer
          .toList(); // Jadikan List

      // Logika Filter (Ambil Angka Genapnya saja)
      List<int> listGenap = dataArray.where((n) => n % 2 == 0).toList();

      // Tampilan hasil
      print('-----------------------');
      // Data Awal Input
      print('Data Array: $dataArray');

      // Menampilkan List angka genap saja
      print('Angka Genapnya : $listGenap');

      // Menampilkan Jumlah Angka Genap
      print('Jumlah angka genap: ${listGenap.length}');
    } catch (e) {
      // Jika user memasukkan huruf atau format salah
      print('Error: Pastikan kamu hanya memasukkan angka dan koma!');
    }
  } else {
    print("Kamu belum memasukkan angka apapun.");
  }
}

// * Mode Data Statis
void programStatis() {
  print("\n=== Mode Data Statis ===");

  List<int> dataArray = [2, 5, 8, 11, 14];

  // Cari angka genapnya untuk ditampilkan
  List<int> listAngkaGenap = dataArray.where((n) => n % 2 == 0).toList();

  // Hitung jumlahnya pakai fungsi singkat
  // int jumlahGenap = hitungAngkaGenap(dataArray);
  int jumlahGenap = hitungAngkaGenapFunctional(dataArray);

  print('Input Array    : $dataArray');
  print('Angka Genapnya : $listAngkaGenap');
  print('Jumlah Genap   : $jumlahGenap');
}

void main() {
  print("Soal 1: Hitung Angka Genap");
  print("Pilih Metode Input:");
  print("1. Input Manual (Console)");
  print("2. Data Statis (Hardcoded)");
  stdout.write("Pilihan Anda (1/2): ");

  String? choice = stdin.readLineSync();

  if (choice == '1') {
    programConsole();
  } else if (choice == '2') {
    programStatis();
  } else {
    print("\nPilihan tidak valid. Harap jalankan ulang dan pilih 1 atau 2.");
  }
}
