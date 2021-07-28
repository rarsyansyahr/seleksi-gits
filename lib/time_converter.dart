import 'dart:io';

import 'package:seleksi_gits/utils.dart';

class TimeConverter {
  String getInput() {
    Utils.clearScreen();

    print('Masukan waktu (Ex: 12:00:00 PM) : ');
    String? input = stdin.readLineSync()!;

    return input;
  }

  String process(String input) {
    var input_arr = input.split(' '), ampm = input_arr[1];

    var input_time = input_arr[0].split(':'),
        hours = input_time[0],
        minutes = input_time[1],
        seconds = input_time[2];

    ((ampm == 'am' || ampm == 'AM') && hours == '12') ? hours = '0' : '';
    (hours.length == 1) ? hours += '0' : '';

    return '$hours:$minutes:$seconds';
  }

  void printTimeAfterConvert() {
    print('\nHasil konversi = ' + process(getInput()));
  }
}
