import 'dart:io';

bool laSoNTo(int a) {
  if (a < 2) return false;
  for (int i = 2; i < a; i++) {
    if (a % i == 0) return false;
  }
  return true;
}

void hienThi(List<int> arr) {
  arr.forEach((i) {
    if (laSoNTo(i)) stdout.write(' ' + i.toString());
  });
}

void main(List<String> args) {
  List<int> arr = [];
  int t;
  print('nhap so luong phan tu cua day so');
  int n = int.parse(stdin.readLineSync()!);

  print('moi ban nhap day so');
  for (int i = 0; i < n; i++) {
    t = int.parse(stdin.readLineSync()!);
    arr.add(t);
  }

  hienThi(arr);
}
