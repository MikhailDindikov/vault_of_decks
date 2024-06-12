import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';

class MainCardModel {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });

  void drawMainCard(Canvas canvas, Offset cardPos) {
    canvas.save();
    final ui.Image curCard = (cardAngle * -pi).abs() <= pi / 2 ||
            (cardAngle * -pi).abs() >= 3 * pi / 2
        ? cardPath
        : VaultResources.backCard;

    canvas.translate(cardPos.dx, cardPos.dy);
    final matrix = Matrix4.identity()
      ..setEntry(2, 2, 0.01)
      ..rotateY(cardAngle * -pi);
    canvas.transform(matrix.storage);
    if (!((cardAngle * -pi).abs() <= pi / 2 ||
        (cardAngle * -pi).abs() >= 3 * pi / 2)) {
      canvas.transform((Matrix4.identity()..rotateY(pi)).storage);
    }

    paintImage(
        canvas: canvas,
        rect: Rect.fromCenter(center: Offset.zero, width: 52, height: 72.8),
        image: curCard);
    canvas.restore();
  }
}

class MainCardModel0 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel0({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel1 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel1({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel2 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel2({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel3 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel3({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel4 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel4({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel5 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel5({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel6 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel6({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel7 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel7({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel8 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel8({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel9 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel9({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel10 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel10({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel11 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel11({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel12 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel12({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel13 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel13({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel14 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel14({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel15 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel15({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel16 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel16({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel17 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel17({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel18 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel18({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel19 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel19({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel20 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel20({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel21 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel21({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel22 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel22({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel23 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel23({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel24 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel24({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel25 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel25({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel26 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel26({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel27 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel27({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel28 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel28({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel29 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel29({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel30 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel30({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel31 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel31({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel32 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel32({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel33 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel33({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel34 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel34({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel35 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel35({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel36 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel36({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel37 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel37({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel38 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel38({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel39 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel39({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel40 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel40({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel41 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel41({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel42 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel42({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel43 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel43({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel44 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel44({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel45 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel45({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel46 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel46({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel47 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel47({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel48 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel48({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel49 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel49({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel50 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel50({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel51 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel51({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel52 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel52({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel53 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel53({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel54 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel54({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel55 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel55({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel56 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel56({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel57 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel57({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel58 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel58({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel59 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel59({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel60 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel60({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel61 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel61({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel62 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel62({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel63 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel63({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel64 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel64({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel65 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel65({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel66 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel66({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel67 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel67({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel68 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel68({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel69 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel69({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel70 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel70({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel71 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel71({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel72 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel72({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel73 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel73({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel74 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel74({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel75 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel75({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel76 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel76({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel77 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel77({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel78 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel78({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel79 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel79({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel80 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel80({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel81 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel81({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel82 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel82({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel83 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel83({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel84 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel84({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel85 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel85({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel86 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel86({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel87 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel87({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel88 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel88({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel89 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel89({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel90 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel90({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel91 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel91({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel92 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel92({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel93 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel93({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel94 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel94({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel95 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel95({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel96 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel96({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel97 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel97({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel98 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel98({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel99 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel99({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel100 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel100({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel101 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel101({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel102 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel102({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel103 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel103({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel104 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel104({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel105 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel105({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel106 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel106({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel107 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel107({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel108 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel108({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel109 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel109({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel110 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel110({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel111 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel111({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel112 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel112({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel113 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel113({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel114 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel114({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel115 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel115({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel116 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel116({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel117 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel117({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel118 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel118({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel119 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel119({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel120 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel120({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel121 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel121({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel122 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel122({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel123 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel123({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel124 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel124({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel125 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel125({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel126 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel126({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel127 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel127({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel128 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel128({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel129 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel129({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel130 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel130({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel131 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel131({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel132 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel132({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel133 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel133({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel134 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel134({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel135 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel135({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel136 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel136({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel137 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel137({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel138 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel138({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel139 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel139({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel140 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel140({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel141 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel141({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel142 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel142({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel143 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel143({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel144 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel144({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel145 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel145({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel146 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel146({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel147 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel147({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel148 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel148({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel149 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel149({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel150 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel150({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel151 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel151({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel152 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel152({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel153 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel153({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel154 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel154({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel155 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel155({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel156 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel156({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel157 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel157({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel158 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel158({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel159 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel159({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel160 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel160({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel161 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel161({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel162 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel162({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel163 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel163({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel164 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel164({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel165 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel165({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel166 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel166({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel167 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel167({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel168 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel168({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel169 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel169({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel170 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel170({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel171 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel171({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel172 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel172({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel173 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel173({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel174 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel174({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel175 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel175({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel176 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel176({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel177 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel177({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel178 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel178({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel179 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel179({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel180 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel180({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel181 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel181({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel182 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel182({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel183 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel183({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel184 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel184({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel185 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel185({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel186 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel186({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel187 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel187({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel188 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel188({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel189 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel189({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel190 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel190({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel191 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel191({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel192 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel192({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel193 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel193({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel194 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel194({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel195 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel195({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel196 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel196({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel197 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel197({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel198 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel198({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel199 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel199({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel200 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel200({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel201 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel201({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel202 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel202({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel203 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel203({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel204 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel204({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel205 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel205({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel206 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel206({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel207 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel207({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel208 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel208({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel209 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel209({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel210 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel210({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel211 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel211({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel212 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel212({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel213 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel213({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel214 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel214({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel215 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel215({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel216 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel216({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel217 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel217({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel218 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel218({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel219 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel219({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel220 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel220({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel221 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel221({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel222 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel222({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel223 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel223({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel224 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel224({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel225 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel225({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel226 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel226({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

class MainCardModel227 {
  final ui.Image cardPath;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;

  MainCardModel227({
    required this.cardPath,
    this.cardAngle = 0,
    this.isOnBack = false,
    this.isVaultAnimating = false,
  });
}

