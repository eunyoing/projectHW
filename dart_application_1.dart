import 'dart:io';

void main() {
  stdout.write("숫자를 입력하세요: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int? number = int.tryParse(input);

    if (number != null) {
      int sum = 0;
      while (number! > 0) {
        int digit = number % 10;
        sum += digit;
        number ~/= 10;
      }

      print("자리수의 합: $sum");
    } else {
      print("정수를 입력해 주세요.");
    }
  } else {
    print("입력이 없습니다.");
  }
}
