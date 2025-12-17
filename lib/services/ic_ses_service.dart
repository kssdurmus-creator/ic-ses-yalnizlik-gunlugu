import 'dart:math';

class IcSesService {
  static final List<String> _cumleler = [
    "Sessizlik, ruhun kendini duyduğu tek yerdir.",
    "İnsan bazen kalabalıkta bile yalnızdır.",
    "Yalnızlık bir eksiklik değil, derinliktir.",
    "Kendini dinlemeyen, başkasını anlayamaz.",
    "Gece, düşüncelerin en dürüst olduğu zamandır."
  ];

  static String rastgeleIcSes() {
    final random = Random();
    return _cumleler[random.nextInt(_cumleler.length)];
  }
}
