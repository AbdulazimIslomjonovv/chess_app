import 'dart:io';

import 'DATA_BASE.dart';

int oColumn = 3;
int oRow = 3;
String list = '            |       |            ';
String lisT = '        1        2       3       ';
List<List<int>> listX = [];
List<List> list0 = [
  [3, 3],
];
int t = 1;
int xColumn = 0;
int xRow = 0;
bool queue_art = false;
List<String> listAll = [
  '     _______|_______|_______     ',
  '     _______|_______|_______     ',
  '            |       |            ',
];

class x_0_artt {
 

  static bool yutibQoymadimi() {
    ///row:------------------------------------
    int a = 0;
    for (int i = 0; i < list0.length; i++) {
      for (int j = 0; j < list0.length; j++) {
        if (list0[i][0] == list0[j][0]) {
          a++;
        }
      }
      if (a == 3) {
        return false;
      }
      a = 0;
    }
    a = 0;

    ///column:---------------------------------
    for (int i = 0; i < list0.length; i++) {
      for (int j = 0; j < list0.length; j++) {
        if (list0[i][1] == list0[j][1]) {
          a++;
        }
      }
      if (a == 3) {
        return false;
      }
      a = 0;
    }

    ///filcha tekshirish
    bool x11 = false;
    bool x22 = false;
    bool x33 = false;
    bool x31 = false;
    bool x13 = false;
    for (int i = 0; i < list0.length; i++) {
      if (list0[i][0] == 1 && list0[i][1] == 1) x11 = true;
      if (list0[i][0] == 2 && list0[i][1] == 2) x22 = true;
      if (list0[i][0] == 3 && list0[i][1] == 3) x33 = true;
      if (list0[i][0] == 1 && list0[i][1] == 3) x13 = true;
      if (list0[i][0] == 3 && list0[i][1] == 1) x31 = true;
    }
    if (x11 && x22 && x33) {
      return false;
    }
    if (x22 && x13 && x31) {
      return false;
    }
    return true;
  }

  static bool durrangBolibQolmadimi() {
    if (t == 9) {
      return true;
    } else {
      return false;
    }
  }

  static void sonOlish() {
    String str = '';
    bool bl = true;
    if (queue_art) {
      while (bl) {
        stdout.write('Column_Row: ');
        str = stdin.readLineSync()!;
        try {
          xColumn = int.parse(str[0]);
          xRow = int.parse(str[2]);
          if (xColumn >= 0 &&
              xColumn <= 3 &&
              xRow <= 3 &&
              xRow <= 3 &&
              xRow >= 0 &&
              boshmi()) {
            listX.addAll([
              [xColumn, xRow]
            ]);
            changeTheTable();
            bl = false;
          }
        } catch (e) {}
      }
      t += 2;
    } else if (!queue_art) {
      List oRun = [];
      bool bl2 = true;
      DATA_BASE.forEach((key1, value1) {
        value1.forEach((key, value) {
          if (bl2 && t == key1) {
            bool bl = true;
            for (int i = 0; i < key.length; i++) {
              try {
                if (!(key[i][0] == listX[i][0] && key[i][1] == listX[i][1])) {
                  bl = false;
                }
              } catch (e) {}
            }
            if (bl) {
              oRun = value[1];
              oColumn = value[1][0];
              oRow = value[1][1];
              bl2 = false;
              list0.add(oRun);
              changeTheTable();
            }
          }
        });
      });
    }
  }

  static void changeTheTable() {
    if (queue_art) {
      listAll[3 - xColumn] =
          listAll[3 - xColumn].replaceRange(xRow * 9 - 2, xRow * 9 - 1, 'X');
    } else if (!queue_art) {
      listAll[3 - oColumn] =
          listAll[3 - oColumn].replaceRange(oRow * 9 - 2, oRow * 9 - 1, 'O');
    }
  }

  static bool boshmi() {
    List<List> listAll = [...listX, ...list0];
    List<int> newList = [xColumn, xRow];
    for (int i = 0; i < listAll.length; i++) {
      if (listAll[i][0] == newList[0] && listAll[i][1] == newList[1]) {
        return false;
      }
    }
    return true;
  }

  static void firstTable() {
    print(lisT);
    print(list);
    for (int i = 0; i < listAll.length; i++) {
      print(list
          .replaceRange(0, 1, (3 - i).toString())
          .replaceRange(list.length - 1, list.length, (3 - i).toString()));
      print(listAll[i]);
      if (i != 2) {
        print(list);
      }
    }
    print(lisT);
  }
}
