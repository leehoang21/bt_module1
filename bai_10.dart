import 'dart:io';

void main(List<String> args) {
  String a, b, c;

  print('moi ban nhap chuoi a');
  a = stdin.readLineSync()!;

  print('moi ban nhap chuoi b');
  b = stdin.readLineSync()!;

  c = a + b;
  print(c);
}
