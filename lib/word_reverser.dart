import 'dart:io';

import 'package:seleksi_gits/utils.dart';

class WordReverser {
  String getInput() {
    Utils.clearScreen();

    print('\t*** Aplikasi Word Reverser ***\n\n');

    print('Masukan Kalimat : ');
    String? input = stdin.readLineSync()!;

    return input;
  }

  String process(String input) {
    return input.split('').reversed.join();
  }

  printWords() {
    print('\nHasilnya adalah : ' + process(getInput()));
  }
}
