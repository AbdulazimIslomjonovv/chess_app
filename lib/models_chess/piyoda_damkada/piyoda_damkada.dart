import 'dart:io';

import '../decoration.dart';
int ttt = 100;

class PiyodaDamkada {
  static void piyoda_damkada() {
    Map<String, int> mapQism = {};
    if (queue) {
      mapOq.forEach((key, value) {
        if (key.contains('piyoda')) {
          mapQism.addAll({key: value});
        }
      });
      mapQism.forEach((key, value) {
        if (value.toString()[0] == 8.toString()) {
          damkaQilish(key, value);
        }
      });
    } else if (!queue) {
      mapOq.forEach((key, value) {
        if (key.contains('piyoda')) {
          mapQism.addAll({key: value});
        }
      });
      mapQism.forEach((key, value) {
        if (value.toString()[0] == 1.toString()) {
          damkaQilish(key, value);
        }
      });
    }
  }
}

void damkaQilish(String string1, int string2) {
  bool bol2 = true;
  String stR1 = '';
  while (bol2) {
    stdout.write('malika/rux/fil/ot: ');
    stR1 = stdin.readLineSync()!;
    if (stR1 == 'malika') {
      bol2 = false;
      if (queue) {
        ttt++;
        mapOq.remove(string1);
        mapOq.addAll({'malika$ttt': string2});
      } else if (queue) {
        ttt++;
        mapQora.remove(string1);
        mapQora.addAll({'malika$ttt': string2});
      }
    } else if (stR1 == 'rux') {
      bol2 = false;
      if (queue) {
        ttt++;
        mapOq.remove(string1);
        mapOq.addAll({'rux$ttt': string2});
      } else if (queue) {
        ttt++;
        mapQora.remove(string1);
        mapQora.addAll({'rux$ttt': string2});
      }
    } else if (stR1 == 'fil') {
      bol2 = false;
      if (queue) {
        ttt++;
        mapOq.remove(string1);
        mapOq.addAll({'fil$ttt': string2});
      } else if (queue) {
        ttt++;
        mapQora.remove(string1);
        mapQora.addAll({'fil$ttt': string2});
      }
    } else if (stR1 == 'ot') {
      bol2 = false;
      if (queue) {
        ttt++;
        mapOq.remove(string1);
        mapOq.addAll({'ot$ttt': string2});
      } else if (queue) {
        ttt++;
        mapQora.remove(string1);
        mapQora.addAll({'ot$ttt': string2});
      }
    }
  }
  tabledanHamOzgartirish(stR1, string2);
}

void tabledanHamOzgartirish(String name, int pos) {
  int x = int.parse(pos.toString()[0]);
  int y = int.parse(pos.toString()[1]);
  int g = 1;
  Map<String, String> qora = {'rux':'│░RUX---│','ot':'│░OT----│','fil':'│░FIL---│','malika':'│░FARZIN│'};
  Map<String, String> oq = {'rux':'│▓RUX---│','ot':'│▓OT----│','fil':'│▓FIL---│','malika':'│▓FARZIN│'};
  if (queue) {
    for (int i = 0; i < str.length; i++) {
      if (8 - i == x) {
        String? strrr = oq[name];
        str[i] = str[i].replaceRange(y * 9 - 6, y * 9 + 3, strrr!);
        break;
      }
    }
  } else {
    for (int i = 0; i < str.length; i++) {
      if (8 - i == x) {
        String? strrr = qora[name];
        str[i] = str[i].replaceRange(y * 9 - 6, y * 9 + 3, strrr!);
        break;
      }
    }
  }
}


























