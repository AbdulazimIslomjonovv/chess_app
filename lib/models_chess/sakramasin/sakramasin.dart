import '../decoration.dart';
import '../table/run_table.dart';

class Sakramasin {
  static bool sakramasin({required String string}) {
    switch (string) {
      case 'rux':
        return sakramasinRux11();
      case 'fil': return sakaramaFil();
      case 'malika': return sakramaMalika();
      default:
        return true;
    }
  }
}

bool sakramaMalika() {
  if (x1 == x2 || y1 == y2) {
    return sakramasinRux11();
  } else {
    return sakaramaFil();
  }
}

bool sakaramaFil() {
  bool bl = true;
  Map<String, int> mapAll = {...mapQora, ...mapOq};
  String str = sakramasinFil()!;
  int t1 = 0;
  int t2 = 0;
  if (str == 'to') {
    t1 = x1 + 1;
    t2 = y1 + 1;
    while (t1 < x2 && t2 < y2) {
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t1.toString() &&
            value.toString()[1] == t2.toString()) {
            bl = false;
        }
      });
      t1++;
      t2++;
    }
  } else if (str == 'tc') {
    t1 = x1 + 1;
    t2 = y1 - 1;
    while (t1 < x2 && t2 > y2) {
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t1.toString() &&
            value.toString()[1] == t2.toString()) {
          bl = false;
        }
      });
      t1++;
      t2--;
    }
  } else if (str == 'po') {
    t1 = x1 - 1;
    t2 = y1 + 1;
    while (t1 > x2 && t2 < y2) {
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t1.toString() &&
            value.toString()[1] == t2.toString()) {
          bl = false;
        }
      });
      t1--;
      t2++;
    }
  } else if (str == 'pc') {
    t1 = x1 - 1;
    t2 = y1 - 1;
    while (t1 > x2 && t2 > y2) {
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t1.toString() &&
            value.toString()[1] == t2.toString()) {
          bl = false;
        }
      });
      t1--;
      t2--;
    }
  }
  return bl;
}

String? sakramasinFil() {
  if (x2 > x1 && y2 > y1) {
    return 'to';
  } else if (x2 > x1 && y2 < y1) {
    return 'tc';
  } else if (x2 < x1 && y2 < y1) {
    return 'pc';
  } else if (x2 < x1 && y2 > y1) {
    return 'po';
  } else {
    return '';
  }
}

bool sakramasinRux11() {
  Map<String, int> mapAll = {...mapOq, ...mapQora};
  String str = sakaramasinRux1()!;
  bool bl = true;
  int t = 0;
  if (str == 't') {
    t = x1;
    while (x2 > t) {
      t++;
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t.toString() &&
            value.toString()[1] == y2.toString()) {
          bl = false;
        }
      });
    }
  } else if (str == 'p') {
    t = x2;
    while (x1 > t + 1) {
      t++;
      mapAll.forEach((key, value) {
        if (value.toString()[0] == t.toString() &&
            value.toString()[1] == y2.toString()) {
          bl = false;
        }
      });
    }
  } else if (str == 'c') {
    t = y2;
    while (y1 > t + 1) {
      t++;
      mapAll.forEach((key, value) {
        if (value.toString()[0] == x2.toString() &&
            value.toString()[1] == t.toString()) {
          bl = false;
        }
      });
    }
  } else if (str == 'o') {
    t = y1;
    while (y2 > t + 1) {
      t++;
      mapAll.forEach((key, value) {
        if (value.toString()[0] == x2.toString() &&
            value.toString()[1] == t.toString()) {
          bl = false;
        }
      });
    }
  }
  return bl;
}

String? sakaramasinRux1() {
  if (x2 > x1 && y2 == y1) {
    return 't';
  } else if (x2 < x1 && y2 == y1) {
    return 'p';
  } else if (x2 == x1 && y2 > y1) {
    return 'o';
  } else if (x2 == x1 && y2 < y1) {
    return 'c';
  } else {
    return '';
  }
}
