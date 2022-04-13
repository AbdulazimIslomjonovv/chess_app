import 'dart:io';

String list = '            |       |            ';
String lisT = '        1        2       3       ';
List<int> mapX = [];
List<int> map0 = [];
int xColumn = 0;
int xRow = 0;
int oColumn = 0;
int oRow = 0;
bool queue_x_0 = true;
List<String> listAll = [
  '     _______|_______|_______     ',
  '     _______|_______|_______     ',
  '            |       |            ',
];

class x_0_class{



static void running() {
  String str = '';
  bool bl = true;
  if (queue_x_0) {
    while (bl) {
      stdout.write('enter X: column_row: ');
      str = stdin.readLineSync()!;
      try {
        xColumn = int.parse(str[0]);
        xRow = int.parse(str[2]);
        if (xColumn >= 1 &&
            xRow >= 1 &&
            xColumn <= 3 &&
            xRow <= 3 &&
            odamJoqmi()) {
          mapX.addAll([xColumn, xRow]);
          changeTheTable();
          xColumn = 0;
          xRow = 0;
          bl = false;
        }
      } catch (e) {}
    }
    bl = true;
    str = '';
  } else if (!queue_x_0) {
    while (bl) {
      stdout.write('enter 0: column_row: ');
      str = stdin.readLineSync()!;
      try {
        oColumn = int.parse(str[0]);
        oRow = int.parse(str[2]);
        if (oColumn >= 1 &&
            oRow >= 1 &&
            oColumn <= 3 &&
            oRow <= 3 &&
            odamJoqmi()) {
          map0.addAll([oColumn, oRow]);
          changeTheTable();
          oColumn = 0;
          oRow = 0;
          bl = false;
        }
      } catch (e) {}
    }
    str = '';
  }
  str = '';
}

static void firstTable() {
  print(lisT);
  print(list);
  for (int i = 0; i < listAll.length; i++) {
    print(list.replaceRange(0, 1, (3 - i).toString()).
    replaceRange(list.length - 1, list.length, (3 - i).toString()));
    print(listAll[i]);
    if (i != 2) {
      print(list);
    }
  }
  print(lisT);
}

static void changeTheTable() {
  if (queue_x_0) {
    listAll[3 - xColumn] =
        listAll[3 - xColumn].replaceRange(xRow * 9 - 2, xRow * 9 - 1, 'X');
  } else if (!queue_x_0) {
    listAll[3 - oColumn] =
        listAll[3 - oColumn].replaceRange(oRow * 9 - 2, oRow * 9 - 1, 'O');
  }
}

static bool odamJoqmi() {
  List<int> mapAll = [...mapX, ...map0];
  bool bl = true;
  for (int i = 0; i < mapAll.length; i += 2) {
    if ((mapAll[i] == xColumn && mapAll[i + 1] == xRow) ||
        (mapAll[i] == oColumn && mapAll[i + 1] == oRow)) {
      bl = false;
    }
  }
  return bl;
}

static bool jutibQoymadimi() {
  if (queue_x_0) {
    int t = 0;

    ///column ni tekshiradi
    for (int i = 0; i < mapX.length; i += 2) {
      for (int j = 0; j < mapX.length; j += 2) {
        if (mapX[i] == mapX[j]) {
          t++;
        }
      }
      if (t == 3) {
        return false;
      }
      t = 0;
    }
    t = 0;

    ///row ni tekshirish
    for (int i = 1; i < mapX.length; i += 2) {
      for (int j = 1; j < mapX.length; j += 2) {
        if (mapX[i] == mapX[j]) {
          t++;
        }
      }
      if (t == 3) {
        return false;
      }
      t = 0;
    }

    ///filcha tekshirish
    bool x11 = false;
    bool x22 = false;
    bool x33 = false;
    bool x31 = false;
    bool x13 = false;
    for (int i = 0; i < mapX.length; i += 2) {
      if (mapX[i] == 1 && mapX[i + 1] == 1) x11 = true;
      if (mapX[i] == 2 && mapX[i + 1] == 2) x22 = true;
      if (mapX[i] == 3 && mapX[i + 1] == 3) x33 = true;
      if (mapX[i] == 1 && mapX[i + 1] == 3) x13 = true;
      if (mapX[i] == 3 && mapX[i + 1] == 1) x31 = true;
    }
    if (x11 && x22 && x33) {
      return false;
    }
    if (x22 && x13 && x31) {
      return false;
    }
    return true;
  } else {
    int t = 0;

    ///row ni tekshiradi
    for (int i = 0; i < map0.length; i += 2) {
      for (int j = 0; j < map0.length; j += 2) {
        if (map0[i] == map0[j]) {
          t++;
        }
      }
      if (t == 3) {
        return false;
      }
      t = 0;
    }
    t = 0;

    ///column ni tekshirish
    for (int i = 1; i < map0.length; i += 2) {
      for (int j = 1; j < map0.length; j += 2) {
        if (map0[i] == map0[j]) {
          t++;
        }
      }
      if (t == 3) {
        return false;
      }
      t = 0;
    }

    ///filcha tekshirish
    bool x11 = false;
    bool x22 = false;
    bool x33 = false;
    bool x31 = false;
    bool x13 = false;
    for (int i = 0; i < map0.length; i += 2) {
      if (map0[i] == 1 && map0[i + 1] == 1) x11 = true;
      if (map0[i] == 2 && map0[i + 1] == 2) x22 = true;
      if (map0[i] == 3 && map0[i + 1] == 3) x33 = true;
      if (map0[i] == 1 && map0[i + 1] == 3) x13 = true;
      if (map0[i] == 3 && map0[i + 1] == 1) x31 = true;
    }
    if (x11 && x22 && x33) {
      return false;
    }
    if (x22 && x13 && x31) {
      return false;
    }
    return true;
  }
}}
