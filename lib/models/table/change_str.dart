import '../decoration.dart';
import 'run_table.dart';

String draw = '';

class ChangeStr {
  static void change_str() {
    for (int i = 0; i < str.length; i++)  {
      if (8 - i == x1) {
        draw = str[i].substring(y1 * 9 - 6, y1 * 9 + 3);
        str[i] = str[i].replaceRange(y1 * 9 - 6, y1 * 9 + 3, yopish());
        break;
      }
    }
    for (int i = 0; i < str.length; i++) {
      if (8 - i == x2) {
        str[i] = str[i].replaceRange(y2 * 9 - 6, y2 * 9 + 3, draw);
        break;
      }
    }
  }
}

String yopish() {
  if ((x1.isEven && y1.isEven) || (x1.isOdd && y1.isOdd)) {
    return '░░░░░░░░░';
  } else {
    return '█████████';
  }
}