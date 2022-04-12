import '../decoration.dart';
import '../table/run_table.dart';

class yurishlar {
  static bool fil() {
    for (int i = 0; i < 9; i++) {
      if ((x1 == x2 + i && y1 == y2 - i) ||
          (x1 == x2 - i && y1 == y2 - i) ||
          (x1 == x2 + i && y1 == y2 + i) ||
          (x1 == x2 - i && y1 == y2 + i)) {
        return (true);
      }
    }
    return (false);
  }

  static bool malika() {
    for (int i = 0; i < 9; i++) {
      if (((x1 == x2 + i && y1 == y2 - i) ||
              (x1 == x2 - i && y1 == y2 - i) ||
              (x1 == x2 + i && y1 == y2 + i) ||
              (x1 == x2 - i && y1 == y2 + i)) ||
          ((x1 == x2) || (y1 == y2))) {
        return (true);
      }
    }
    return (false);
  }

  static bool shox() {
    if ((x1 == x2 && (y1 == y2 + 1 || y1 == y2 - 1)) ||
        (y1 == y2 && (x1 == x2 + 1 || x1 == x2 - 1)) ||
        (x1 == x2 + 1 && y1 == y2 + 1) ||
        (x1 == x2 - 1 && y1 == y2 - 1) ||
        (x1 == x2 + 1 && y1 == y2 - 1) ||
        (x1 == x2 - 1 && y1 == y2 + 1)) {
      return (true);
    } else {
      return (false);
    }
  }

  static bool ot() {
    if ((x1 == x2 + 2 && y1 == y2 + 1) ||
        (x1 == x2 + 1 && y1 == y2 + 2) ||
        (x1 == x2 - 1 && y1 == y2 + 2) ||
        (x1 == x2 - 2 && y1 == y2 + 1) ||
        (x1 == x2 - 2 && y1 == y2 - 1) ||
        (x1 == x2 - 1 && y1 == y2 - 2) ||
        (x1 == x2 + 1 && y1 == y2 - 2) ||
        (x1 == x2 + 2 && y1 == y2 - 1)) {
      return (true);
    } else {
      return (false);
    }
  }

  static bool rux() {
    if (x1 == x2 || y1 == y2) {
      return true;
    } else {
      return false;
    }
  }

  static bool piyoda() {
    bool bl = false;
    Map<String, int> mapAll = {...mapOq, ...mapQora};
    mapAll.forEach((key, value) {
      if (value.toString()[0] == x1.toString() &&
          value.toString()[1] == y1.toString()) {
        if (value.toString()[2] == '0') {
          bl = true;
        }
      }
    });
    if (queue) {
      if ((x1 == x2 - 1 && y1 == y2) ||
          (x1 == x2 - 2 && y1 == y2 && bl && odamJoqmi()) ||
          odamJoqmi()) {
        return true;
      } else {
        return false;
      }
    } else {
      if ((x1 == x2 + 1 && y1 == y2) ||
          (x1 == x2 + 2 && y1 == y2 && bl) ||
          odamJoqmi()) {
        return true;
      } else {
        return false;
      }
    }
  }
}

bool odamJoqmi() {
  Map<String, int> mapAll = {...mapOq, ...mapQora};
  if (queue) {
    if (mapAll.containsValue(int.parse('${x2 - 1}${y2}1'))) {
      return false;
    } else {
      return true;
    }
  } else {
    if (mapAll.containsValue(int.parse('${x2 + 1}${y2}1'))) {
      return false;
    } else {
      return true;
    }
  }
}
