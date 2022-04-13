import '../models_chess/decoration.dart';
import '../models_chess/table/run_table.dart';
import 'models_x_0/x_0.dart';
import 'models_x_0_suniy_intellekt/DATA_BASE/mainn.dart';

class Games {
  static void chess() {
    while (mapOq.containsKey('shox1') && mapQora.containsKey('shox2')) {
      RunTable.run_table();
      queue = !queue;
      print(mapOq);
      print(mapQora);
    }
    if (mapOq.containsKey('shox1')) {
      print('oq yutdi');
    } else {
      print('qora yutdi');
    }
  }
  static void x_0() {
      while (true) {
        x_0_class.firstTable();
        x_0_class.running();
        if (mapX.length + map0.length == 18 && x_0_class.jutibQoymadimi()) {
          x_0_class.firstTable();
          print('durrang!');
          return;
        }
        if (!x_0_class.jutibQoymadimi()) {
          break;
        }
        queue_x_0 = !queue_x_0;
        print('\n\n**************************************');
        print('--------------------------------------');
        print('**************************************\n\n');
      }
      x_0_class.firstTable();
      if (queue_x_0)
        print('X yutdi');
      else if (!queue_x_0) print('0 yutdi');
  }
  static void x_0_art() {
    x_0_artt.changeTheTable();
    x_0_artt.firstTable();
    queue_art = !queue_art;
    while (x_0_artt.yutibQoymadimi()) {
      x_0_artt.sonOlish();
      x_0_artt.firstTable();
      queue_art = !queue_art;
      print(list0.length + listX.length);
      if (list0.length + listX.length == 9 && x_0_artt.yutibQoymadimi()) {
        print('durrang!');
        return;
      }
    }
    x_0_artt.firstTable();
    print('0 yutdi');
  }
}