import 'bai_1.dart';
import 'bai_7.dart';

bool soSanh2MaTran(List<List<int>> mul1, List<List<int>> mul2) {
  if (mul1.length == mul1[0].length && mul1.length == mul2.length) {
    for (int i = 0; i < mul1.length; i++) {
      for (int j = 0; j < mul1[0].length; j++) {
        if (mul1[i][j] != mul2[i][j]) return false;
      }
    }
    return true;
  }
  return false;
}

void main(List<String> args) {
  List<List<int>> m1 = [], m2 = [], mul1 = [], mul2 = [];
  taoMaTran(m1, 'A');
  taoMaTran(m2, 'B');
  tinhTichMaTran(m1, m2, mul1);
  tinhTichMaTran(m2, m1, mul2);
  if (soSanh2MaTran(mul1, mul2)) {
    print('B la ma tran nghich dao cua A');
  } else {
    print('B ko la ma tran nghich dao cua A');
  }
}
