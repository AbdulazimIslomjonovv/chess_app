import '../decoration.dart';
import '../lakirovka/lakirovka.dart';
import '../table/boshlash.dart';
import '../table/run_table.dart';

int t1t = 0;
int t2t = 0;

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
      if ((x1 == x2 - 1 && y1 == y2 && odamJoqmi2()) ||
          (x1 == x2 - 2 && y1 == y2 && bl && odamJoqmi())) {
        return true;
      } else {
        return false;
      }
    } else {
      if ((x1 == x2 + 1 && y1 == y2 && odamJoqmi2()) ||
          (x1 == x2 + 2 && y1 == y2 && bl && odamJoqmi())) {
        return true;
      } else {
        return false;
      }
    }
  }

  static bool lakirovkaQilsaBoladimi() {
    bool bl = true;
    Map<String, int> mapAll = {...mapOq, ...mapQora};
    if (queue) {
      if ((x1 == x2 && x2 == 1 && y1 == 5 && y2 == 7) &&
          mapOq['shox1'].toString()[2] == '0' &&
          mapOq['rux12'].toString()[2] == '0' &&
          mapOq['rux12'].toString()[1] == '8') {
        mapAll.forEach((key, value) {
          if ((value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 6.toString()) ||
              (value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 7.toString())) {
            bl = false;
          }
        });
      } else if (x1 == x2 &&
          x2 == 1 &&
          y1 == 5 &&
          y2 == 3 &&
          mapOq['shox1'].toString()[2] == '0' &&
          mapOq['rux11'].toString()[2] == '0' &&
          mapOq['rux11'].toString()[1] == '1') {
        mapAll.forEach((key, value) {
          if ((value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 2.toString()) ||
              (value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 3.toString()) ||
              (value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 4.toString())) {
            bl = false;
          }
        });
      } else {
        bl = false;
      }
    } else if (!queue) {
      if ((x1 == x2 && x2 == 8 && y1 == 5 && y2 == 7) &&
          mapQora['shox2'].toString()[2] == '0' &&
          mapQora['rux22'].toString()[2] == '0' &&
          mapQora['rux22'].toString()[1] == '8') {
        mapAll.forEach((key, value) {
          if ((value.toString()[0] == 8.toString() &&
                  value.toString()[1] == 6.toString()) ||
              (value.toString()[0] == 8.toString() &&
                  value.toString()[1] == 7.toString())) {
            bl = false;
          }
        });
      } else if ((x1 == x2 && x2 == 8 && y1 == 5 && y2 == 3) &&
          mapQora['shox2'].toString()[2] == '0' &&
          mapQora['rux21'].toString()[2] == '0') {
        mapAll.forEach((key, value) {
          if ((value.toString()[0] == 8.toString() &&
                  value.toString()[1] == 2.toString()) ||
              (value.toString()[0] == 8.toString() &&
                  value.toString()[1] == 3.toString()) ||
              (value.toString()[0] == 8.toString() &&
                  value.toString()[1] == 4.toString())) {
            bl = false;
          }
        });
      } else {
        bl = false;
      }
    }
    return bl;
  }
}

bool odamJoqmi() {
  Map<String, int> mapAll = {...mapOq, ...mapQora};
  if (queue) {
    if (mapAll.containsValue(int.parse('${x2 - 1}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2 - 1}${y2}0')) ||
        mapAll.containsValue(int.parse('${x2}${y2}0'))) {
      return false;
    } else {
      return true;
    }
  } else {
    if (mapAll.containsValue(int.parse('${x2 + 1}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2 + 1}${y2}0')) ||
        mapAll.containsValue(int.parse('${x2}${y2}0'))) {
      return false;
    } else {
      return true;
    }
  }
}
bool odamJoqmi2() {
  Map<String, int> mapAll = {...mapOq, ...mapQora};
  if (queue) {
    if (mapAll.containsValue(int.parse('${x2}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2}${y2}0'))) {
      return false;
    } else {
      return true;
    }
  } else {
    if (mapAll.containsValue(int.parse('${x2}${y2}1')) ||
        mapAll.containsValue(int.parse('${x2}${y2}0'))) {
      return false;
    } else {
      return true;
    }
  }
}
