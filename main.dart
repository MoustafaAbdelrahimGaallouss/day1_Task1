import 'dart:io';

void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  bool anyNumbers = any(nums, (int n) => n == 2);
  print(anyNumbers);
}

bool any(Iterable<int> list, bool Function(int) anyFunction) {
  List<int> anyList = [];

  for (int i in list) {
    if (anyFunction(i)) {
      anyList.add(i);
      break;
    }
    ;
  }
  if (anyList.length > 0)
    return true;
  else
    return false;
}
