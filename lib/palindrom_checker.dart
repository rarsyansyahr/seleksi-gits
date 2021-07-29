import 'dart:io';

import 'package:seleksi_gits/utils.dart';

class PalindromChecker {
  String getInput() {
    Utils.clearScreen();

    print('\t*** Aplikasi Palindrom Checker ***\n\n');

    print('Masukan Kalimat : ');
    String? input = stdin.readLineSync()!;

    return input;
  }

  bool process(String input) {
    var input_arr = input.split(' '),
        word1 = input_arr[0],
        word2 = input_arr[input_arr.length - 1];

    return word1 == word2.split('').reversed.join();
  }

  printWords() {
    if (process(getInput())) {
      print('\nHasilnya adalah : True (karena palindrom)');
    } else {
      print('\nHasilnya adalah : False (karena bukan palindrom)');
    }
  }
}
