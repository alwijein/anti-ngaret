import 'dart:io';

import 'package:test_1/test_1.dart' as test_1;

void main(List<String> arguments) {
  stdout.write('Masukkan Nama: ');
  String input = stdin.readLineSync();
  stdout.writeln(input);
}
