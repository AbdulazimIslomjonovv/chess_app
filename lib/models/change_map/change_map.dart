import '../decoration.dart';
import '../piyoda_damkada/piyoda_damkada.dart';
import '../table/run_table.dart';

class ChangeMap {
  static void change_map() {
    String string = '';
    if (queue) {
      mapOq.forEach((key, value) {
        if (value.toString()[0] == x1.toString() &&
            value.toString()[1] == y1.toString()) {
          string = key;
        }
      });
      mapOq[string] = int.parse('$x2${y2}1');
      if (string.contains('piyoda')){
        PiyodaDamkada.piyoda_damkada();
      }
    } else if (!queue) {
      mapQora.forEach((key, value) {
        if (value.toString()[0] == x1.toString() &&
            value.toString()[1] == y1.toString()) {
          string = key;
        }
      });
      mapQora[string] = int.parse('$x2${y2}1');
      if (string.contains('piyoda')){
        PiyodaDamkada.piyoda_damkada();
      }
    }
  }
}
