import 'dart:async';
import 'dart:math';
import 'dart:developer' as dev;
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/card_model.dart';
import 'package:vault_of_decks/vault_model/main_card_model.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_jokers.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_mus.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';
import 'package:vault_of_decks/vault_sce/vault_start_sce.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

enum Swipe { toLeft, toRight }

class VaultFabCont extends GetxController {
  double vaultTick = 3.0;
  int _Vstagg = 3;
  bool _genVault = true;
  double vaultUskor = 0.60;
  List<CardModel?> vaultCards = [];
  RxInt vaultLifes = 3.obs;
  List<int> curKolodas = [0, 0, 0, 0];
  List<int> allKolodas = [];
  List<MainCardModel> mainCards = [];
  late Timer vaultTimer;
  double speed = 1;
  final vaultRand = Random();
  bool isVaultPause = false;
  RxBool isVaultAlert = true.obs;

  void vaultRerty() {
    speed = 1;
    vaultTick = 3.0;
    _Vstagg = 3;
    _genVault = true;
    vaultUskor = 0.60;
    vaultLifes.value = 3;
    vaultCards = [];
    allKolodas.clear();
    mainCards.clear();
    curKolodas = [0, 0, 0, 0];
    vaultTimer.cancel();
    isVaultPause = false;
    if (allKolodas.isEmpty) {
      mainCards.addAll([
        MainCardModel(cardPath: VaultResources.ch),
        MainCardModel(cardPath: VaultResources.p),
        MainCardModel(cardPath: VaultResources.b),
        MainCardModel(cardPath: VaultResources.kr),
      ]);
      for (int vind = 0; vind < 4; vind++) {
        allKolodas.add(vaultRand.nextInt(2) +
            3 +
            VaultHran.vaultHran!.getInt('vaultLvl')!);
      }
    }

    isVaultAlert.value = true;
    startVault();
  }

  void startVault() {
    vaultTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (isVaultAlert.value) {
        Timer(Duration(seconds: 2), () {
          isVaultAlert.value = false;
          update();
        });
      }
      if (!isVaultPause) {
        vaultTick += (0.25 * vaultUskor) * speed;
        for (int vind = 0; vind < min(4, vaultCards.length); vind++) {
          _checkFabrikArea(vaultCards[vind]);
        }
        bool isVaultWin = true;
        for (int vaultVal = 0; vaultVal < 4; vaultVal++) {
          if (curKolodas[vaultVal] < allKolodas[vaultVal]) {
            isVaultWin = false;
          }
        }

        if (isVaultWin) {
          final listVaults = ['6', '7', '8', '9', '10', 'j', 'q', 'k', 't'];
          final vault1 = vaultRand.nextInt(4);
          final vault12 = vaultRand.nextInt(9);
          final vaultImg1 = vault1 == 0
              ? VaultResources.chs[vault12]
              : vault1 == 2
                  ? VaultResources.ps[vault12]
                  : vault1 == 0
                      ? VaultResources.bs[vault12]
                      : VaultResources.krs[vault12];
          VaultHran.vaultHran!.setInt(
              listVaults[vault12],
              min((VaultHran.vaultHran!.getInt(listVaults[vault12]) ?? 0) + 1,
                  4));
          final vault2 = vaultRand.nextInt(4);
          final vault22 = vaultRand.nextInt(9);
          final vaultImg2 = vault2 == 0
              ? VaultResources.chs[vault22]
              : vault2 == 2
                  ? VaultResources.ps[vault22]
                  : vault2 == 0
                      ? VaultResources.bs[vault22]
                      : VaultResources.krs[vault22];
          VaultHran.vaultHran!.setInt(
              listVaults[vault22],
              min((VaultHran.vaultHran!.getInt(listVaults[vault22]) ?? 0) + 1,
                  4));
          vaultWin(vaultImg1, vaultImg2);
          VaultJokers.incVaultLvl();
          isVaultPause = true;
          update();
        }

        _moveVaults();
        if (vaultTick >= 17) {
          vaultUskor += 0.0025;
          vaultTick = 3;
          _Vstagg++;
          if (_Vstagg == 3) {
            _genVault = true;
          }
        }
        if (_genVault) {
          vaultCards.addAll(_genVaults());
          _genVault = false;
        }
        if (_Vstagg == 6) {
          _Vstagg = 0;
        }

        update();
      }
    });
  }

  (double, bool) _checkFabrikArea(CardModel? card) {
    if (card != null) {
      if (card.cardPos.dy >= 529 + 72.8 / 2) {
        if (card.cardType == CardTupe.dead) {
          if (!isVaultPause) {
            isVaultPause = true;
            update();
            _vaultLose();
          }
        } else if (card.cardType == CardTupe.chcommon) {
          if (card.cardFabPos == 0) {
            if (curKolodas[0] != allKolodas[0]) {
              curKolodas[0]++;
              if (curKolodas[0] == allKolodas[0]) {
                _rotateMainCard(mainCards[0]);
              }
            }
          } else {
            if (curKolodas[card.cardFabPos] != allKolodas[card.cardFabPos]) {
              vaultLifes.value--;
              if (vaultLifes.value == 0) {
                isVaultPause = true;
                update();
                _vaultLose();
              }
            }
          }
        } else if (card.cardType == CardTupe.pcommon) {
          if (card.cardFabPos == 1) {
            if (curKolodas[1] != allKolodas[1]) {
              curKolodas[1]++;
              if (curKolodas[1] == allKolodas[1]) {
                _rotateMainCard(mainCards[1]);
              }
            }
          } else {
            if (curKolodas[card.cardFabPos] != allKolodas[card.cardFabPos]) {
              vaultLifes.value--;
              if (vaultLifes.value == 0) {
                isVaultPause = true;
                update();
                _vaultLose();
              }
            }
          }
        } else if (card.cardType == CardTupe.bcommon) {
          if (card.cardFabPos == 2) {
            if (curKolodas[2] != allKolodas[2]) {
              curKolodas[2]++;
              if (curKolodas[2] == allKolodas[2]) {
                _rotateMainCard(mainCards[2]);
              }
            }
          } else {
            if (curKolodas[card.cardFabPos] != allKolodas[card.cardFabPos]) {
              vaultLifes.value--;
              if (vaultLifes.value == 0) {
                isVaultPause = true;
                update();
                _vaultLose();
              }
            }
          }
        } else if (card.cardType == CardTupe.krcommon) {
          if (card.cardFabPos == 3) {
            if (curKolodas[3] != allKolodas[3]) {
              curKolodas[3]++;
              if (curKolodas[3] == allKolodas[3]) {
                _rotateMainCard(mainCards[3]);
              }
            }
          } else {
            if (curKolodas[card.cardFabPos] != allKolodas[card.cardFabPos]) {
              vaultLifes.value--;
              if (vaultLifes.value == 0) {
                isVaultPause = true;
                update();
                _vaultLose();
              }
            }
          }
        }
        vaultCards.remove(card);
      }
    } else {
      vaultCards.remove(card);
    }
    return (232.111, true);
  }

  (double, bool) _moveVaults() {
    for (final vault in vaultCards) {
      if (vault != null) {
        vault.cardPos = Offset(
            vault.cardPos.dx, vault.cardPos.dy + 0.25 * vaultUskor * speed);
      }
    }
    return (232.111, true);
  }

  List<CardModel?> _genVaults() {
    List<CardModel?> vaulList = [];
    for (int afnjnsdVault = 0; afnjnsdVault < 4; afnjnsdVault++) {
      final newVault = _genOneVault(afnjnsdVault);
      if (newVault == null) {
        vaulList.add(null);
      } else {
        if (vaulList
            .where((element) => element == null
                ? false
                : element.cardType == newVault.cardType &&
                    newVault.cardType != CardTupe.dead &&
                    newVault.cardType != CardTupe.rjoker &&
                    newVault.cardType != CardTupe.bjoker)
            .toList()
            .isNotEmpty) {
          vaulList.add(null);
        } else {
          vaulList.add(newVault);
        }
      }
    }
    return vaulList;
  }

  CardModel? _genOneVault(int videx) {
    final ranVaVault = vaultRand.nextInt(100);
    final spacer = (347 - 26 - 52 * 4) / 3;
    if (ranVaVault < 5) {
      return CardModel(
          cardPath: VaultResources.dc,
          cardType: CardTupe.dead,
          cardHP: 3,
          cardAngle: 0,
          isOnBack: false,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 10) {
      return CardModel(
          cardPath: VaultResources.rj,
          cardType: CardTupe.rjoker,
          cardHP: 1,
          cardAngle: 0,
          isOnBack: false,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 15) {
      return CardModel(
          cardPath: VaultResources.bj,
          cardType: CardTupe.bjoker,
          cardHP: 1,
          cardAngle: 0,
          isOnBack: false,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 30) {
      final ranVaultInd = vaultRand.nextInt(9);
      final ranIsBack = vaultRand.nextInt(10);

      return CardModel(
          cardPath: VaultResources.chs[ranVaultInd],
          cardType: CardTupe.chcommon,
          cardHP: 1,
          cardAngle: ranIsBack < 2 ? 1 : 0,
          isOnBack: ranIsBack < 2,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 45) {
      final ranVaultInd = vaultRand.nextInt(9);
      final ranIsBack = vaultRand.nextInt(10);

      return CardModel(
          cardPath: VaultResources.ps[ranVaultInd],
          cardType: CardTupe.pcommon,
          cardHP: 1,
          cardAngle: ranIsBack < 2 ? 1 : 0,
          isOnBack: ranIsBack < 2,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 60) {
      final ranVaultInd = vaultRand.nextInt(9);
      final ranIsBack = vaultRand.nextInt(10);

      return CardModel(
          cardPath: VaultResources.bs[ranVaultInd],
          cardType: CardTupe.bcommon,
          cardHP: 1,
          cardAngle: ranIsBack < 2 ? 1 : 0,
          isOnBack: ranIsBack < 2,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else if (ranVaVault < 75) {
      final ranVaultInd = vaultRand.nextInt(9);
      final ranIsBack = vaultRand.nextInt(10);

      return CardModel(
          cardPath: VaultResources.krs[ranVaultInd],
          cardType: CardTupe.krcommon,
          cardHP: 1,
          cardAngle: ranIsBack < 2 ? 1 : 0,
          isOnBack: ranIsBack < 2,
          cardPos: Offset(13 + 26 * (videx + 1) + videx * (spacer + 26), 0),
          cardFabPos: videx);
    } else {
      return null;
    }
  }

  void onSwipeCard(CardModel vault, Swipe cardSwipe) {
    if (cardSwipe == Swipe.toLeft && vault.cardFabPos != 0) {
      VaultMus.musVaultOne('mus/swipe.mp3');
      final fabrikNeighVault = vaultCards.firstWhereOrNull((element) =>
          element == null
              ? false
              : element.cardPos.dy == vault.cardPos.dy &&
                  vault.cardFabPos - element.cardFabPos == 1);
      _moveLeftCard(vault);
      if (fabrikNeighVault != null) {
        _moveRightCard(fabrikNeighVault);
      }
    } else if (cardSwipe == Swipe.toRight && vault.cardFabPos != 4) {
      VaultMus.musVaultOne('mus/swipe.mp3');
      final fabrikNeighVault = vaultCards.firstWhereOrNull((element) =>
          element == null
              ? false
              : element.cardPos.dy == vault.cardPos.dy &&
                  -vault.cardFabPos + element.cardFabPos == 1);
      _moveRightCard(vault);
      if (fabrikNeighVault != null) {
        _moveLeftCard(fabrikNeighVault);
      }
    }
  }

  void _moveLeftCard(CardModel vault) {
    late Timer vaultSwipeTimer;
    final spacer = (347 - 26 - 52 * 4) / 3 + 52;
    final startCardPos = vault.cardPos.dx;
    vaultSwipeTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      vault.cardPos = Offset(
          startCardPos - spacer > vault.cardPos.dx - 4
              ? startCardPos - spacer
              : vault.cardPos.dx - 4,
          vault.cardPos.dy);

      if (vault.cardPos.dx == startCardPos - spacer) {
        vault.cardPos = Offset(vault.cardPos.dx, vault.cardPos.dy);
        vault.cardFabPos--;
        vaultSwipeTimer.cancel();
      }
      update();
    });
  }

  void _moveRightCard(CardModel vault) {
    late Timer vaultSwipeTimer;
    const spacer = (347 - 26 - 52 * 4) / 3 + 52;
    final startCardPos = vault.cardPos.dx;
    vaultSwipeTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      vault.cardPos = Offset(
          startCardPos + spacer < vault.cardPos.dx + 4
              ? startCardPos + spacer
              : vault.cardPos.dx + 4,
          vault.cardPos.dy);

      if (vault.cardPos.dx == startCardPos + spacer) {
        vault.cardPos = Offset(vault.cardPos.dx, vault.cardPos.dy);
        vault.cardFabPos++;
        vaultSwipeTimer.cancel();
      }
      update();
    });
  }

  void _rotateCard(CardModel vault) {
    late Timer vaultSwipeTimer;
    VaultMus.musVaultOne('mus/rotate.mp3');
    vault.isVaultAnimating = true;
    vaultSwipeTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      vault.cardAngle -= 0.025;
      if (vault.cardAngle <= 0) {
        vaultSwipeTimer.cancel();
        vault.isOnBack = false;
      }
      update();
    });
  }

  void _rotateMainCard(MainCardModel vault) {
    late Timer vaultSwipeTimer;
    //VaultMus.musVaultOne('mus/rotate.mp3');
    vault.isVaultAnimating = true;
    vaultSwipeTimer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      vault.cardAngle += 0.025;
      if (vault.cardAngle >= 1) {
        vaultSwipeTimer.cancel();
        vault.isOnBack = false;
      }
      update();
    });
  }

  void onVaultCardTap(Offset tochka) {
    for (final vault in vaultCards) {
      if (vault == null) {
        continue;
      } else {
        if (vault.cardType == CardTupe.dead) {
          if (vault.contains(tochka)) {
            vault.cardHP--;
            if (vault.cardHP < 1) {
              VaultMus.musVaultOne('mus/kill_black.mp3');
              vaultCards.remove(vault);
              break;
            }
          }
        }
        if (vault.cardType == CardTupe.rjoker) {
          if (vault.contains(tochka)) {
            VaultMus.musVaultOne('mus/joker.mp3');
            vaultLifes.value = min(3, vaultLifes.value + 1);
            vaultCards.remove(vault);
            VaultJokers.incRedJ();
            break;
          }
        }
        if (vault.cardType == CardTupe.bjoker) {
          if (vault.contains(tochka)) {
            VaultMus.musVaultOne('mus/joker.mp3');
            vaultCards.remove(vault);
            VaultJokers.incBlackJ();
            speed = 0.25;
            update();
            Future.delayed(Duration(seconds: 2)).then((value) {
              speed = 1;
              update();
            });

            break;
          }
        } else if (vault.isOnBack && !vault.isVaultAnimating) {
          if (vault.contains(tochka)) {
            _rotateCard(vault);
            break;
          }
        }
      }
    }
  }

  _vaultLose() {
    VaultMus.musVaultOne('mus/lose.mp3');
    return showDialog(
      context: Get.context!,
      barrierColor: Colors.transparent,
      useSafeArea: false,
      builder: (context) => IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 3, 36, 1),
                Color.fromRGBO(10, 18, 95, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'YOU LOSt'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'NegritaPro',
                      fontSize: 54,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'vault_assets/fons/dead.png',
                    height: 253,
                    width: 246,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      vaultRerty();
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
          ),
        ),
      ),
    );
  }

  vaultWin(ui.Image vault1, ui.Image vault2) {
    VaultMus.musVaultOne('mus/win.mp3');
    return showDialog(
      context: Get.context!,
      barrierColor: Colors.transparent,
      useSafeArea: false,
      builder: (context) => IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 3, 36, 1),
                Color.fromRGBO(10, 18, 95, 1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'YOU won!'.toUpperCase(),
                    style: TextStyle(
                      fontFamily: 'NegritaPro',
                      fontSize: 54,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 207 + 158,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            'vault_assets/fons/krisha.png',
                            height: 207,
                            width: 312,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.rotate(
                              angle: -19 * pi / 180,
                              child: RawImage(
                                image: vault1,
                                width: 99.5,
                                height: 139.5,
                              ),
                            ),
                            Transform.rotate(
                              angle: 27.7 * pi / 180,
                              child: RawImage(
                                image: vault2,
                                width: 99.5,
                                height: 139.5,
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(
                            'vault_assets/fons/niz.png',
                            height: 158,
                            width: 312,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                      vaultRerty();
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
          ),
        ),
      ),
    );
  }
}
