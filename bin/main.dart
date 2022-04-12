import '../lib/models/decoration.dart';
import '../lib/models/table/run_table.dart';

void main() {
  while (mapOq.isNotEmpty && mapQora.isNotEmpty) {
    RunTable.run_table();
    // queue = !queue;
    print(mapOq);
    print(mapQora);
  }
}







