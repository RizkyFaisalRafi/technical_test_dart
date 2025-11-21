import 'dart:io';

String balikUrutanKata(String kalimat) {
  // 1. trim(): Hapus spasi berlebih di awal/akhir kalimat
  // 2. split(' '): Potong kalimat berdasarkan spasi menjadi List kata
  // 3. reversed: Membalik urutan item di dalam List
  // 4. join(' '): Menggabungkan kembali List menjadi String dengan spasi
  return kalimat.trim().split(' ').reversed.join(' ');
}

// * Mode Input Console
void programConsole() {
  stdout.write("\n=== Mode Input Manual ===\n");
  stdout.write("Masukkan kalimat (contoh: Saya Suka Coding): ");

  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    String hasil = balikUrutanKata(input);

    print('-----------------------');
    print('Kalimat Asli    : "$input"');
    print('Hasil Pembalikan: "$hasil"');
  } else {
    print("Kamu belum memasukkan kalimat apapun.");
  }
}

// * Mode Data Statis
void programStatis() {
  print("\n=== Mode Data Statis ===");

  String input = "Hello World";
  String hasil = balikUrutanKata(input);

  print('Kalimat Asli    : "$input"');
  print('Hasil Pembalikan: "$hasil"');
}

void main() {
  print("Soal 2: Balik Urutan Kata");
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
    print("\nPilihan tidak valid.");
  }
}
