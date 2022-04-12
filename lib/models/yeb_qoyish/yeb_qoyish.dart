import '../decoration.dart';
import '../table/run_table.dart';

class YebQoyish {
  static void yeb_qoyish() {
    bool bl = false;
    String string = '';
    if (queue) {
      mapQora.forEach((key, value) {
        if (value.toString()[0] == x2.toString() &&
            value.toString()[1] == y2.toString()) {
          bl = true;
          string = key;
        }
      });
      if (bl) {
        mapQora.remove(string);
      }
    } else if (!queue) {
      mapOq.forEach((key, value) {
        if (value.toString()[0] == x2.toString() &&
            value.toString()[1] == y2.toString()) {
          bl = true;
          string = key;
        }
      });
      if (bl) {
        mapOq.remove(string);
      }
    }
  }
}
