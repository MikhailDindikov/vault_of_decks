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
        rect: Rect.fromCenter(center: Offset.zero, width: 52, height: 72.8),
        image: curCard);
    canvas.restore();
  }
}
