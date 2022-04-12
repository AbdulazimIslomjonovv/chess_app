import 'dart:io';

import '../change_map/change_map.dart';
import '../decoration.dart';
import '../valid_position/valid_position.dart';
import '../yeb_qoyish/yeb_qoyish.dart';
import 'change_str.dart';

int x1 = 0;
int x2 = 0;
int y1 = 0;
int y2 = 0;

class RunTable {
  static void run_table() {
    print('   ' + s);
    for (int i = 0; i < str.length; i++) {
      if (i.isEven) {
        print('   ' + str2);
        print(str[i]);
        print('   ' + str2);
      } else if (i.isOdd) {
        print('   ' + str1);
        print(str[i]);
        print('   ' + str1);
      }
    }
    print('   ' + s);
    String stR = '';
    bool bl1 = true;
    bool bl = true;
    while (bl1) {
      while (bl) {
        stdout.write('$queue enter position(xy-xy): ');
        stR = stdin.readLineSync()!;
        try {
          x1 = int.parse(stR[0]);
          y1 = int.parse(stR[1]);
          x2 = int.parse(stR[3]);
          y2 = int.parse(stR[4]);
          bl = false;
        } catch (e) {
          print('Xato!');
        }
      }
      if (ValidPosition.valid_position(string: ajratibOlish())) {
        ChangeStr.change_str();
        ChangeMap.change_map();
        YebQoyish.yeb_qoyish();
        bl = false;
        bl1 = false;
      } else {
        print('xato!');
        bl = true;
      }
    }
  }
}

String ajratibOlish() {
  String str = '';
  List<String> strList = ['shox', 'malika', 'rux', 'piyoda', 'fil', 'ot'];
  Map<String, int> mapAll = {...mapQora, ...mapOq};
  mapAll.forEach((key, value) {
    if (value.toString()[0] == x1.toString() &&
        value.toString()[1] == y1.toString()) {
      for (int i = 0; i < strList.length; i++) {
        if (key.contains(strList[i])) {
          str = strList[i];
        }
      }
    }
  });
  return str;
}

bool uribOlish() {
  bool bl = false;
  if (queue) {
    mapQora.forEach((key, value) {
      if (value.toString()[0] == x2 &&
          value.toString()[1] == y2 &&
          ((x1 == x2 - 1 &&
          y1 == y1 - 1)) || (x1 == x2 - 1 && y1 == y2 + 1)) {
        bl = true;
      }
    });
  } else {
    mapOq.forEach((key, value) {
      if (value.toString()[0] == x2 &&
          value.toString()[1] == y2 &&
          ((x1 == x2 + 1 &&
              y1 == y1 + 1)) || (x1 == x2 + 1 && y1 == y2 - 1)) {
        bl = true;
      }
    });
  }
  return bl;
}
