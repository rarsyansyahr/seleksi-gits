import 'dart:io';

import 'package:seleksi_gits/utils.dart';

class HelloWorld {
  String process(int input) {
    String result;

    if (input % 3 == 0 && input % 5 != 0) {
      result = 'Hello';
    } else if (input % 3 != 0 && input % 5 == 0) {
      result = 'World';
    } else {
      result = 'Hello World';
    }

    return '\nHasilnya adalah "$result"';
  }

  int getInput() {
    Utils.clearScreen();

    print('\t*** Aplikasi Hello World ***\n\n');

    print('Masukan bilangan : ');
    int? input = int.parse(stdin.readLineSync()!);

    (input.isNegative) ? input *= -1 : '';

    return input;
  }

  void printHelloWorld() {
    print(process(getInput()));
  }
}
