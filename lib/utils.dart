import 'dart:io';

import 'package:seleksi_gits/email_checker.dart';
import 'package:seleksi_gits/hello_world.dart';
import 'package:seleksi_gits/time_converter.dart';
import 'package:seleksi_gits/word_reverser.dart';

class Utils {
  static void clearScreen() {
    if (Platform.isWindows) {
      print(Process.runSync('cls', [], runInShell: true).stdout);
    } else {
      print(Process.runSync('clear', [], runInShell: true).stdout);
    }
  }

  static void showMenu() {
    clearScreen();

    print('*** Aplikasi Seleksi GITS Indonesia ***');
    print('by: Arsyansyah\n');

    print('Sub Aplikasi yang tersedia:\n');
    print('\t1. Aplikasi Hello World');
    print('\t2. Aplikasi Email Check');
    print('\t3. Aplikasi Konversi DateTime');
    print('\t4. Aplikasi Word Reversing');
    print('\t5. Aplikasi Palindrom Check');

    print('\nSilakan pilih Sub Aplikasi (pilih antara 1 s.d 5) : ');
    int? pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        var hello = HelloWorld();
        hello.printHelloWorld();
        break;

      case 2:
        var emailChecker = EmailChecker();
        emailChecker.printValidation();
        break;

      case 3:
        var timeConverter = TimeConverter();
        timeConverter.printTimeAfterConvert();
        break;

      case 4:
        var wordReverser = WordReverser();
        wordReverser.printWords();
        break;

      case 5:
        print('Aplikasi 5');
        break;

      default:
        print('\nMaaf, pilihan tidak tersedia..');
        break;
    }
  }
}
