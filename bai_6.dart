import 'dart:io';

import 'bai_1.dart';

void chuyenMaTran_Mang(List<int> a, List<List<int>> arr) {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      a.add(arr[i][j]);
    }
  }
}

void chuyenMang_MaTran(List<int> a, List<List<int>> arr) {
  int k = 0;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      arr[i][j] = a[k++];
    }
  }
}

void main(List<String> args) {
  var arr = [
    [0, 0, 0],
    [0, 0, 0],
    [0, 0, 0]
  ];
  var a = <int>[];
  print('moi nhap ma tran 3x3');
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      arr[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
  chuyenMaTran_Mang(a, arr);
  shakerSort(a);
  chuyenMang_MaTran(a, arr);
  arr.forEach((i) {
    print('');
    hienThi(i);
  });
}
