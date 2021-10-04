import 'dart:io';

int menu() {
  int chon;
  print('''
            1. Viết hoa toàn bộ chuỗi
            2. Viết thường toàn bộ chuỗi
            3. Thoát
            ''');
  print('mời bạn chọn số');
  chon = int.parse(stdin.readLineSync()!);
  return chon;
}

void main(List<String> args) {
  String a;
  print('moi ban nhap chuoi a');
  a = stdin.readLineSync()!;

  while (true) {
    switch (menu()) {
      case 1:
        print(a.toUpperCase());
        break;
      case 2:
        print(a.toLowerCase());
        break;
      case 3:
        exit(0);
      default:
        print('so ban chon ko co');
    }
  }
}
