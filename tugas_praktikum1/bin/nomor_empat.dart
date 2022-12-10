import 'dart:io';

void main(List<String> args) {
  stdout.write('Masukkan IPK anda: ');
  double ipk = double.parse(stdin.readLineSync());

  stdout.write('Jumlah MatKul yang diulang: ');
  int remed = int.parse(stdin.readLineSync());

  if (ipk >= 3.5 && remed == 0) {
    print('Selamat Anda CUMLAUDE');
  } else {
    print('Maaf Anda Tidak CUMLAUDE');
  }
}
