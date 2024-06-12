import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';

enum CardTupe { chcommon, pcommon, bcommon, krcommon, rjoker, bjoker, dead }

class CardModel {
  final ui.Image cardPath;
  final CardTupe cardType;
  int cardHP;
  double cardAngle;
  bool isOnBack;
  bool isVaultAnimating;
  Offset cardPos;
  int cardFabPos;

  CardModel({
    required this.cardPath,
    required this.cardType,
    required this.cardHP,
    required this.cardAngle,
    required this.isOnBack,
    required this.cardPos,
    required this.cardFabPos,
    this.isVaultAnimating = false,
  });

  bool contains(Offset tochka) {
    final pathCard = Path();
    pathCard.addRect(
      Rect.fromCenter(center: cardPos, width: 52, height: 72.8),
    );
    return pathCard.contains(tochka);
  }

  void drawCard(Canvas canvas) {
    // canvas.drawRRect(
    //     RRect.fromRectAndRadius(
    //         Rect.fromCenter(center: cardPos, width: 52, height: 72.8),
    //         Radius.circular(4)),
    //     Paint()
    //       ..style = PaintingStyle.stroke
    //       ..strokeWidth = 1
    //       ..color = Color.fromRGBO(245, 228, 1, 1));

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
        rect: Rect.fromCenter(center: Offset.zero, width: 48, height: 67.4),
        image: curCard);
    canvas.restore();
  }
}
