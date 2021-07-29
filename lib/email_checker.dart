import 'dart:io';

import 'package:seleksi_gits/utils.dart';

class EmailChecker {
  String getInput() {
    Utils.clearScreen();

    print('\t*** Aplikasi Email Checker ***\n\n');

    print('Masukan alamat email : ');
    String? email = stdin.readLineSync()!;

    return email;
  }

  bool validation() {
    var email = getInput();

    bool? emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.(?:com|co.id)")
        .hasMatch(email);

    return emailValid;
  }

  void printValidation() {
    bool? emailValid = validation();

    if (emailValid) {
      print('\nEmail Anda valid..');
    } else {
      print('\nMaaf, email tidak valid..');
    }
  }
}
