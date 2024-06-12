import 'dart:ui' as ui;

import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_mus.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultMusCont extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onDetached() {}

  @override
  void onInactive() {
    if (VaultMus.vaultPl) {
      VaultMus.stoVaultMu();
    }
  }

  @override
  void onPaused() {}

  @override
  void onResumed() {
    if ((VaultHran.vaultHran!.getBool('vaultMu') ?? true)) {
      VaultMus.goVaultMu('mus/bg.mp3');
    }
  }

  @override
  void onHidden() {}
}
class MainCardModel228 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel228({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel229 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel229({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel230 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel230({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel231 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel231({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel232 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel232({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel233 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel233({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel234 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel234({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel235 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel235({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel236 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel236({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel237 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel237({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel238 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel238({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel239 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel239({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel240 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel240({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel241 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel241({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel242 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel242({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel243 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel243({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel244 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel244({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel245 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel245({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel246 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel246({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel247 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel247({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel248 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel248({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel249 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel249({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel250 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel250({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel251 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel251({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel252 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel252({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel253 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel253({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel254 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel254({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel255 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel255({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel256 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel256({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel257 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel257({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel258 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel258({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel259 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel259({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel260 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel260({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel261 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel261({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel262 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel262({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel263 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel263({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel264 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel264({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel265 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel265({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel266 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel266({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel267 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel267({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel268 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel268({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel269 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel269({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel270 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel270({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel271 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel271({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel272 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel272({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel273 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel273({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel274 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel274({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel275 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel275({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel276 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel276({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel277 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel277({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel278 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel278({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel279 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel279({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel280 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel280({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel281 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel281({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel282 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel282({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel283 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel283({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel284 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel284({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel285 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel285({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel286 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel286({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel287 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel287({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel288 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel288({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel289 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel289({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel290 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel290({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel291 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel291({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel292 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel292({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel293 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel293({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel294 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel294({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel295 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel295({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel296 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel296({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel297 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel297({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel298 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel298({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel299 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel299({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}
