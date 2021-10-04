import 'dart:io';

import 'bai_1.dart';

void TaoMaTran(List<List<int>> arr, String g) {
  int t, d, c;
  print('moi ban nhap lan luot so dong,cot cua ma tran $g');
  d = int.parse(stdin.readLineSync()!);
  c = int.parse(stdin.readLineSync()!);
  print('moi nhap ma tran $g');
  for (int i = 0; i < d; i++) {
    var a = <int>[];
    for (int j = 0; j < c; j++) {
      t = int.parse(stdin.readLineSync()!);
      a.add(t);
    }
    arr.add(a);
  }
}

TinhTichMaTran(
  List<List<int>> m1,
  List<List<int>> m2,
  List<List<int>> mul,
) {
  int d = m1.length;
  int c = m2[0].length;
  int n = m2.length;
  int Tong = 0;

  for (int i = 0; i < d; i++) {
    var a = <int>[];
    for (int j = 0; j < c; j++) {
      Tong = 0;
      for (int k = 0; k < n; k++) {
        Tong += m1[i][k] * m2[k][j];
      }
      a.add(Tong);
    }
    mul.add(a);
  }
}

void main(List<String> args) {
  List<List<int>> m1 = [], m2 = [], mul = [];
  TaoMaTran(m1, 'A');
  TaoMaTran(m2, 'B');
  TinhTichMaTran(m1, m2, mul);
  mul.forEach((i) {
    print('');
    HienThi(i);
  });
}
