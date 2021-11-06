import 'dart:io';

int tong(List<int> arr) {
  int sum = 0;
  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  return sum;
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
  print(tong(arr));
}
