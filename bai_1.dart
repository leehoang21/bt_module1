import 'dart:io';

void ShakerSort(List<int> arr) {
  int t = 0, p = arr.length - 1, k = 0;

  while (t < p) {
    for (int i = t; i < p; i++) {
      if (arr[i] > arr[i + 1]) {
        int tmp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = tmp;
        k = i;
      }
    }
    p = k;
    for (int i = p; i > t; i--) {
      if (arr[i] < arr[i - 1]) {
        int tmp = arr[i];
        arr[i] = arr[i - 1];
        arr[i - 1] = tmp;
        k = i;
      }
    }
    t = k;
  }
}

void HienThi(List<int> arr) {
  arr.forEach((i) {
    stdout.write(' ' + i.toString());
  });
}

void main(List<String> args) {
  List<int> arr = [];
  print('nhap so luong phan tu cua day so');
  int n = int.parse(stdin.readLineSync()!);
  int t;

  print('moi ban nhap day so');
  for (int i = 0; i < n; i++) {
    t = int.parse(stdin.readLineSync()!);
    arr.add(t);
  }
  print('1. sap xep tang dan');
  print('2. sap xep giam dan');
  print('moi ban  chon 1 so');
  int chon = int.parse(stdin.readLineSync()!);
  switch (chon) {
    case 1:
      ShakerSort(arr);
      HienThi(arr);
      break;
    case 2:
      ShakerSort(arr);
      HienThi(arr.reversed.toList());
      break;
  }
}
