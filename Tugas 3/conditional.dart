import 'dart:io';

void main() {
  stdout.write('Masukkan nama: ');
  String? nama = stdin.readLineSync()?.trim();

  stdout.write('Masukkan peran (Penyihir / Guard / Werewolf): ');
  String? peran = stdin.readLineSync()?.trim();

  if (nama == null || nama.isEmpty) {
    print('\nNama harus diisi!');
  } else if (peran == null || peran.isEmpty) {
    print('\nHalo $nama, Pilih peranmu untuk memulai game!');
  } else {
    print('\nSelamat datang di Dunia Werewolf, $nama');

    if (peran.toLowerCase() == 'penyihir') {
      print(
        'Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!',
      );
    } else if (peran.toLowerCase() == 'guard') {
      print(
        'Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.',
      );
    } else if (peran.toLowerCase() == 'werewolf') {
      print('Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!');
    } else {
      print(
        'Peran tidak dikenali. Pilih antara: Penyihir, Guard, atau Werewolf.',
      );
    }
  }
}


// CARA PENGGUNAAN:

// Jalankan program Dart-nya lewat terminal bash
// masukan perintah dart conditional.dart
// Program akan berjalan di terminal dan kamu bisa mengetik input seperti:
// Masukkan nama: John
// Masukkan peran (Penyihir / Guard / Werewolf): Guard
// Maka akan menampilkan
// Selamat datang di Dunia Werewolf, Jhon
// Halo Guard Jhon, kamu akan membantu melindungi temanmu dari serangan werewolf


