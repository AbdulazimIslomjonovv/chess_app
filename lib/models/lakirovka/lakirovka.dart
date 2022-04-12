import '../decoration.dart';
import '../table/run_table.dart';

class Lakirovka {
  static bool? lakirovka() {
    if (queue) {
      bool bl = true;
      Map<String, int> mapAll = {...mapOq, ...mapQora};
      if (y2 > y1 && x1 == x2) {
        mapAll.forEach((key, value) {
          if ((value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 6.toString()) ||
              (value.toString()[0] == 1.toString() &&
                  value.toString()[1] == 7.toString())) {
            bl = false;
          }
        });
        if (bl) {

        } else {
          return false;
        }
      } else if (y2 < y1 && x1 == x2) {
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
        if (bl) {

        } else {
          return false;
        }
      }
    }
  }
}
