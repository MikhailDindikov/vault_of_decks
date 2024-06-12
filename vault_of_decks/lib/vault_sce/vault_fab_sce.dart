import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vault_of_decks/vault_model/card_model.dart';
import 'package:vault_of_decks/vault_model/main_card_model.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_jokers.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';
import 'package:vault_of_decks/vault_sce/vault_conts/vault_fab_cont.dart';
import 'package:vault_of_decks/vault_sce/vault_start_sce.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultFabSce extends StatefulWidget {
  const VaultFabSce({super.key});

  @override
  State<VaultFabSce> createState() => _VaultFabSceState();
}

class _VaultFabSceState extends State<VaultFabSce> {
  _pause_cards() {
    vaultCont.isVaultPause = true;
    return showDialog(
      context: context,
      barrierColor: Color.fromRGBO(10, 18, 95, 0.7),
      builder: (context) => IntrinsicHeight(
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 280,
                height: 267,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('vault_assets/fons/dialog.png'),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Image.asset(
                            'vault_assets/kn/cross.png',
                            fit: BoxFit.fill,
                            width: 23,
                          ),
                        ),
                        Text(
                          'Pause',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: Get.back,
                          child: Image.asset(
                            'vault_assets/kn/cross.png',
                            fit: BoxFit.fill,
                            width: 23,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                        vaultCont.vaultRerty();
                      },
                      child: Image.asset(
                        'vault_assets/kn/retry.png',
                        width: 203,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(() => VaultStartSce());
                      },
                      child: Image.asset(
                        'vault_assets/kn/to_menu.png',
                        width: 203,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ).then((value) {
      vaultCont.isVaultPause = false;
    });
  }

  final vaultCont = Get.put(VaultFabCont());
  Offset startTochka = Offset.zero;
  bool isEvent = false;
  CardModel? selectedCardModel;

  @override
  void initState() {
    if (vaultCont.allKolodas.isEmpty) {
      vaultCont.mainCards.addAll([
        MainCardModel(cardPath: VaultResources.ch),
        MainCardModel(cardPath: VaultResources.p),
        MainCardModel(cardPath: VaultResources.b),
        MainCardModel(cardPath: VaultResources.kr),
      ]);
      for (int vind = 0; vind < 4; vind++) {
        vaultCont.allKolodas.add(vaultCont.vaultRand.nextInt(2) +
            3 +
            (VaultHran.vaultHran!.getInt('vaultLvl') ?? 0));
      }
    }
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      vaultCont.startVault();
    });
  }

  @override
  void dispose() {
    vaultCont.vaultTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('vault_assets/fons/start_e.png'),
                  fit: BoxFit.fill),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Container(
                child: SafeArea(
                  child: GetBuilder<VaultFabCont>(
                      init: vaultCont,
                      builder: (context) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 18)
                                  .copyWith(top: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: _pause_cards,
                                    child: Image.asset(
                                      'vault_assets/kn/pause.png',
                                      width: 145,
                                    ),
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        'vault_assets/fons/white.png',
                                        width: 109,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Obx(
                                            () => Image.asset(
                                              vaultCont.vaultLifes.value < 1
                                                  ? 'vault_assets/fab/dead.png'
                                                  : 'vault_assets/fab/life.png',
                                              width: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Obx(
                                            () => Image.asset(
                                              vaultCont.vaultLifes.value < 2
                                                  ? 'vault_assets/fab/dead.png'
                                                  : 'vault_assets/fab/life.png',
                                              width: 25,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Obx(
                                            () => Image.asset(
                                              vaultCont.vaultLifes.value < 3
                                                  ? 'vault_assets/fab/dead.png'
                                                  : 'vault_assets/fab/life.png',
                                              width: 25,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onPanDown: (details) {
                                final vaultLocPos = Offset(
                                    details.localPosition.dx - 13,
                                    details.localPosition.dy);
                                vaultCont.onVaultCardTap(vaultLocPos);
                                startTochka = vaultLocPos;
                                selectedCardModel = vaultCont.vaultCards
                                    .firstWhereOrNull((element) => element ==
                                            null
                                        ? false
                                        : element.cardType == CardTupe.dead ||
                                                element.cardType ==
                                                    CardTupe.rjoker ||
                                                element.cardType ==
                                                    CardTupe.bjoker
                                            ? false
                                            : element.contains(startTochka));
                              },
                              onPanEnd: (details) {
                                startTochka = Offset.zero;
                                selectedCardModel = null;
                                isEvent = false;
                              },
                              onHorizontalDragUpdate: (details) async {
                                final vaultLocPos = Offset(
                                    details.localPosition.dx - 13,
                                    details.localPosition.dy);
                                if (!isEvent) {
                                  if (startTochka.dx - vaultLocPos.dx > 2) {
                                    if (selectedCardModel != null) {
                                      isEvent = true;
                                      vaultCont.onSwipeCard(
                                          selectedCardModel!, Swipe.toLeft);
                                    }
                                  } else if (startTochka.dx - vaultLocPos.dx <
                                      -2) {
                                    if (selectedCardModel != null) {
                                      isEvent = true;
                                      vaultCont.onSwipeCard(
                                          selectedCardModel!, Swipe.toRight);
                                    }
                                  }
                                }
                              },
                              onHorizontalDragEnd: (details) {
                                startTochka = Offset.zero;
                                selectedCardModel = null;
                                isEvent = false;
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 14),
                                width: 347,
                                height: 638,
                                child: CustomPaint(
                                  foregroundPainter: ForegroundCardsPainter(
                                    cards: vaultCont.vaultCards,
                                    allKolodas: vaultCont.allKolodas,
                                    curKolodas: vaultCont.curKolodas,
                                    mainCards: vaultCont.mainCards,
                                  ),
                                  painter: Resources(),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
            ),
          ),
          IgnorePointer(
            child: Material(
              color: Colors.transparent,
              child: Obx(
                () => AnimatedOpacity(
                  duration: Duration(milliseconds: 300),
                  opacity: vaultCont.isVaultAlert.value ? 1 : 0,
                  child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: Color.fromRGBO(10, 18, 95, 0.7),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/big_red.png',
                            width: 203,
                          ),
                          Obx(
                            () => Text(
                              'Level ${VaultJokers.vaultLevel.value + 1}',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontFamily: 'RobotoFlex',
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ForegroundCardsPainter extends CustomPainter {
  final List<CardModel?> cards;
  final List<int> allKolodas;
  final List<int> curKolodas;
  final List<MainCardModel> mainCards;

  ForegroundCardsPainter({
    super.repaint,
    required this.cards,
    required this.allKolodas,
    required this.curKolodas,
    required this.mainCards,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.clipRect(rect);
    for (final fabrik in cards) {
      if (fabrik != null) {
        fabrik.drawCard(canvas);
      }
    }
    final spacer = (size.width - 26 - 52 * 4) / 3;
    _drawConv(canvas, 517, 0, spacer);
    _drawConv(canvas, 517, 1, spacer);
    _drawConv(canvas, 517, 2, spacer);
    _drawConv(canvas, 517, 3, spacer);
  }

  _drawConv(Canvas canvas, double hehe, int idex, double spacer) {
    canvas.save();
    canvas.translate(13 + 26 * (idex + 1) + idex * (spacer + 26), 0);
    double fabScale = 1;
    canvas.translate(-77.7 / 2 * fabScale, -6);
    canvas.scale((fabScale * 77.7) / VaultResources.conv.width,
        (fabScale * 61.5) / VaultResources.conv.height);
    canvas.drawImage(VaultResources.conv, Offset.zero, Paint());
    canvas.restore();

    // canvas.save();
    // canvas.translate(13 + 26 * (idex + 1) + idex * (spacer + 26), 529);
    mainCards[idex].drawMainCard(canvas,
        Offset(13 + 26 * (idex + 1) + idex * (spacer + 26), 529 + 72.8 / 2));
    //canvas.restore();

    final TextPainter vaultText = TextPainter(
        textDirection: ui.TextDirection.ltr,
        text: TextSpan(
            text: '${curKolodas[idex]}/${allKolodas[idex]}',
            style: TextStyle(
                fontFamily: 'Roboto Flex',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
        textAlign: TextAlign.center);
    vaultText.layout();
    vaultText.paint(
        canvas,
        Offset(
            13 + 26 * (idex + 1) + idex * (spacer + 26) - vaultText.width / 2,
            529 + 80));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}

class Resources extends CustomPainter {
  Resources({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {
    final spacer = (size.width - 26 - 52 * 4) / 3;
    _drawConv(canvas, 517, 0, spacer);
    _drawConv(canvas, 517, 1, spacer);
    _drawConv(canvas, 517, 2, spacer);
    _drawConv(canvas, 517, 3, spacer);
  }

  _drawConv(Canvas canvas, double hehe, int idex, double spacer) {
    // Path path = Path()
    //   ..addRRect(
    //     RRect.fromRectAndRadius(
    //         Rect.fromCenter(
    //             center: Offset(
    //                 13 + 26 * (idex + 1) + idex * (spacer + 26), hehe / 2),
    //             width: 52,
    //             height: hehe),
    //         Radius.circular(4)),
    //   );
    // canvas.save();
    // canvas.clipPath(path);
    paintImage(
        canvas: canvas,
        fit: BoxFit.fill,
        rect: Rect.fromCenter(
            center:
                Offset(13 + 26 * (idex + 1) + idex * (spacer + 26), hehe / 2),
            width: 72,
            height: hehe),
        image: VaultResources.road);
    // canvas.drawRRect(
    //   RRect.fromRectAndCorners(
    //     Rect.fromCenter(
    //         center:
    //             Offset(13 + 26 * (idex + 1) + idex * (spacer + 26), hehe / 2),
    //         width: 52,
    //         height: hehe),
    //   ),
    //   Paint()
    //     ..style = PaintingStyle.fill
    //     ..color = Colors.white,
    // );
    // canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      this != oldDelegate;
}
