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
