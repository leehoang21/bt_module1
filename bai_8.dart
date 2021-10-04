import 'bai_1.dart';
import 'bai_7.dart';

bool SoSanh2MaTran(List<List<int>> mul1, List<List<int>> mul2) {
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
  TaoMaTran(m1, 'A');
  TaoMaTran(m2, 'B');
  TinhTichMaTran(m1, m2, mul1);
  TinhTichMaTran(m2, m1, mul2);
  if (SoSanh2MaTran(mul1, mul2)) {
    print('B la ma tran nghich dao cua A');
  } else {
    print('B ko la ma tran nghich dao cua A');
  }
}
