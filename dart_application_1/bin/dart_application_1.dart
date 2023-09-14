import 'dart:ffi';
import 'dart:io';

import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');
  var name = 'Voyager I';
  String name2 = 'Voyager II';
  print(name);
  print(name2);

// numbers
  var age = 30;
  int age2 = 30;
  double weight = 30.5;
  print(age);
  print(age2);
  print(weight);

// boolean
  var isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);

  // dynamic

  var nilai = 73;

  if (nilai >= 81) {
    String nilaihuruf = 'A';
    print('A');
  } else if (nilai >= 76) {
    String nilaihuruf = 'B';
    print('B');
  } else if (nilai >= 71) {
    String nilaihuruf = 'C';
    print('C');
  } else if (nilai >= 66) {
    String nilaihuruf = 'D';
    print('D');
  } else {
    String nilaihuruf = 'E';
    print('E');
  }

  void PrintNilai(var hasil) {
    if (hasil == 'A') {
      print('Sangat Baik');
    } else if (hasil == 'B') {
      print('Baik');
    } else if (hasil == 'C') {
      print('Cukup');
    } else if (hasil == 'D') {
      print('Kurang');
    } else {
      print('Sangat Kurang');
    }
  }

  PrintNilai(nilai);
  var emot = '';
  void piramid() {
    for (var i = 0; i < 10; i++) {
      if (i < 5) {
        for (var j = 0; j < i; j++) {
          emot += '🐳';
        }
        // print(emot);
      } else {
        for (var j = 10; j > i; j--) {
          emot += '🐳';
        }
      }
      emot += '\n';
    }
    print(emot);
  }

  piramid();
}
