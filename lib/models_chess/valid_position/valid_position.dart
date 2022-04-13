import '../decoration.dart';
import '../runnig/askarlar_yurishi.dart';
import '../sakramasin/sakramasin.dart';
import '../table/run_table.dart';

class ValidPosition {
  static bool valid_position({required String string}) {
    bool bl = false;
    switch (string) {
      case 'piyoda':
        {
          bl = yurishlar.piyoda() || yurishlar.piyodaUraOladimi();
          break;
        }
      case 'malika':
        {
          bl = yurishlar.malika() && Sakramasin.sakramasin(string: string);
          break;
        }
      case 'rux':
        {
          bl = yurishlar.rux() && Sakramasin.sakramasin(string: string);
          break;
        }
      case 'fil':
        {
          bl = yurishlar.fil() && Sakramasin.sakramasin(string: string);
          break;
        }
      case 'shox':
        {
          bl = yurishlar.shox();
          break;
        }
      case 'ot':
        {
          bl = yurishlar.ot();
          break;
        }
    }
    if (odamBormi() && odamYoqmi() && bl) {
      return true;
    } else {
      return false;
    }
  }
}

bool odamBormi() {
  bool bl = false;
  if (queue) {
    mapOq.forEach((key, value) {
      if (value.toString()[0] == x1.toString() &&
          value.toString()[1] == y1.toString()) {
        bl = true;
      }
    });
  } else if (!queue) {
    mapQora.forEach((key, value) {
      if (value.toString()[0] == x1.toString() &&
          value.toString()[1] == y1.toString()) {
        bl = true;
      }
    });
  }
  return bl;
}

bool odamYoqmi() {
  bool bl = true;
  if (queue) {
    mapOq.forEach((key, value) {
      if (value.toString()[0] == x2.toString() &&
          value.toString()[1] == y2.toString()) {
        bl = false;
      }
    });
  } else if (!queue) {
    mapQora.forEach((key, value) {
      if (value.toString()[0] == x2.toString() &&
          value.toString()[1] == y2.toString()) {
        bl = false;
      }
    });
  }
  return bl;
}
