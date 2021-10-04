import 'dart:io';

void main(List<String> args) {
  String a, b;
  var num = 0;

  print('moi ban nhap 1 chuoi');
  a = stdin.readLineSync()!;

  print('moi ban nhap 1 ki tu bat ki');
  b = stdin.readLineSync()!;

  for (int i = 0; i < a.length; i++) {
    if (a[i] == b) num++;
  }

  if (num == 0) {
    print('ki tu $b ko thuoc chuoi');
  } else {
    print('ki tu $b thuoc chuoi va xuat hien $num lan');
  }
}
