import '../decoration.dart';
import '../table/run_table.dart';

class Lakirovka {
  static void lakirovka() {
    if (queue) {
      if (y2 > y1) {
        mapOq['rux12'] = int.parse('161');
        mapOq['shox1'] = int.parse('171');
        strNiOzgartirish(5, 7, 8, 6, 1);
      } else {
        mapOq['rux11'] = int.parse('141');
        mapOq['shox1'] = int.parse('131');
        strNiOzgartirish(5, 3, 1, 4, 1);
      }
    } else {
      if (y2 > y1) {
        mapQora['rux22'] = int.parse('861');
        mapQora['shox2'] = int.parse('871');
        strNiOzgartirish(5, 7, 8, 6, 8);
      } else {
        mapQora['rux21'] = int.parse('841');
        mapQora['shox2'] = int.parse('831');
        strNiOzgartirish(5, 3, 1, 4, 8);
      }
    }
  }
}

String str111 = '█████████';
String str222 = '░░░░░░░░░';
String draw1 = '';
String draw2 = '';

void strNiOzgartirish(int y1, int y2, int y3, int y4, int x) {
  draw1 = str[8 - x].substring(y1 * 9 - 6, y1 * 9 + 3);
  str[8 - x] = str[8 - x].replaceRange(y1 * 9 - 6, y1 * 9 + 3, yopish(x, y1));
  draw2 = str[8 - x].substring(y3 * 9 - 6, y3 * 9 + 3);
  str[8 - x] = str[8 - x].replaceRange(y3 * 9 - 6, y3 * 9 + 3, yopish(x, y3));

  str[8 - x] = str[8 - x].replaceRange(y2 * 9 - 6, y2 * 9 + 3, draw1);
  str[8 - x] = str[8 - x].replaceRange(y4 * 9 - 6, y4 * 9 + 3, draw2);
}

String yopish(int x1, int y1) {
  if ((x1.isEven && y1.isEven) || (x1.isOdd && y1.isOdd)) {
    return str222;
  } else {
    return str111;
  }
}
