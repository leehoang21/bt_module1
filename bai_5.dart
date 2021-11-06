import 'dart:io';

import 'bai_3.dart';

void hienThi(List<List<int>> arr) {
  arr.forEach((i) {
    i.forEach((j) {
      if (laSoNTo(j)) stdout.write(' ' + j.toString());
    });
  });
}

void main(List<String> args) {
  var arr = [
    [0, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0]
  ];
  print(arr.length);
  print('moi nhap ma tran 3x4');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 4; j++) {
      arr[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
  hienThi(arr);
}
