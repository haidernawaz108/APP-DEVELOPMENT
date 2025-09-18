import 'dart:io';

void main() {
  stdout.write("ENTER YOUR NAME: ");
  String name = stdin.readLineSync()!;

  stdout.write("ENTER YOUR AGE: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("SORRY $name, YOU ARE NOT ELIGIBLE TO REGISTER!!!");
    return;
  }
  stdout.write("H0W MANY NUMBERS DO YOU WANT TO ENTER? ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> numbers = [];
  for (int i = 0; i < n; i++) {
    stdout.write("ENTER NUMBER ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int sumEven = 0;
  int sumOdd = 0;
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num % 2 == 0) {
      sumEven += num;
    } else {
      sumOdd += num;
    }

    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
  }
  print("HELLO $name THE RESULTS FOR YOUR ENTERED DATA ARE AS FOLLOW :");
  print("SUM OF EVEN NUMBERS: $sumEven");
  print("SUM OF ODD NUMBERS: $sumOdd");
  print("LARGEST NUMBER: $largest");
  print("SMALLEST NUMBER: $smallest");
}
