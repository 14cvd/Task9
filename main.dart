import 'dart:io';

import 'constStrings.dart';

void main() {
  stdout.write(constStrings.ededDaxil);
  int? selectValue = int.tryParse(stdin.readLineSync().toString());
  List<int> selectsList = [];
  mainFunction(selectValue, selectsList);
}

void mainFunction(int? selectValue, List<int> selectsList) {
  if (selectValue == null) {
    stdout.writeln(constStrings.bosdeyer);
    main();
  } else {
    for (int i = 0; i < selectValue; i++) {
      stdout.write(i.toString() + constStrings.daxilOlunan);
      int valueLists = int.parse(stdin.readLineSync().toString());
      selectsList.add(valueLists);
    }
    stdout.write(constStrings.operations);
    int? values = int.tryParse(stdin.readLineSync().toString());

    switchFunction(values, selectsList);
  }
}

void switchFunction(int? values, List<int> selectsList) {
  switch (values) {
    case 1:
      print(constStrings.boyuk + maxValue(selectsList).toString());
      break;
    case 2:
      print(constStrings.kick + minValue(selectsList).toString());
      break;
    case 3:
      print(constStrings.cem + sumValue(selectsList).toString());
      break;
    case 4:
      print(constStrings.orta + numAvarage(selectsList).toString());
      break;

    default:
      print(constStrings.xeta);
  }
}

int maxValue(List<int> value) {
  value.sort();
  return value[value.length - 1];
}

int minValue(List<int> value) {
  value.sort();
  return value[0];
}

int sumValue(List<int> value) {
  int sum = 0;

  for (int i = 0; i < value.length; i++) {
    sum += value[i];
  }

  return sum;
}

int numAvarage(List<int> value) {
  return sumValue(value) ~/ value.length;
}
