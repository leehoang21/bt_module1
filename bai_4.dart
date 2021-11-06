import 'dart:io';

int tKSNBKiXuatHienTrongMang(List<int> arr, int k) {
  int num = 0;
  arr.forEach((i) {
    if (k == i) num++;
  });
  return num;
}

void coXuatHien(List<int> arr, int k) {
  int n = tKSNBKiXuatHienTrongMang(arr, k);
  if (n != 0) {
    print('$k co thuoc mang va xuat hien $n lan');
  } else {
    print('$k ko thuoc mang ');
  }
}

void main(List<String> args) {
  var arr = <int>[];
  int t;
  print('nhap so luong phan tu cua day so');
  int n = int.parse(stdin.readLineSync()!);

  print('moi ban nhap day so');
  for (int i = 0; i < n; i++) {
    t = int.parse(stdin.readLineSync()!);
    arr.add(t);
  }

  print('nhap so nguyen k bat ki');
  t = int.parse(stdin.readLineSync()!);
  coXuatHien(arr, t);
}
