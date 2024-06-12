import 'package:apphud/apphud.dart';
import 'package:apphud/models/apphud_models/apphud_composite_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_mus.dart';
import 'package:vault_of_decks/vault_sce/vault_fab_sce.dart';
import 'package:vault_of_decks/vault_sce/vault_sce.dart';
import 'package:vault_of_decks/vault_sce/vault_sys_sce.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

import '../vault_model/some_ut/vault_jokers.dart';

class VaultStartSce extends StatefulWidget {
  const VaultStartSce({super.key});

  @override
  State<VaultStartSce> createState() => _VaultStartSceState();
}

class _VaultStartSceState extends State<VaultStartSce> {
  _vaults_cards() {
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
                height: 332,
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(horizontal: 12),
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
                          'Cards',
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
                      height: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/6.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('6') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/7.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('7') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/8.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('8') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/9.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('9') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/10.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('10') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/j.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('j') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/q.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('q') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/k.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('k') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/cards_dial/t.png',
                              width: 45,
                              height: 63,
                              fit: BoxFit.fill,
                            ),
                            Text(
                              '${(VaultHran.vaultHran!.getInt('t') ?? 0)}/4',
                              style: TextStyle(
                                fontFamily: 'NegritaPro',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _rules_cards() {
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
                height: 352,
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
                          'Rules',
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
                      height: 25,
                    ),
                    Text(
                      'Sort cards into decks and earn bonuses for completing levels to craft Magic Decks.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Cards can be moved between each other. Flip upside down cards.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Text(
                      'Destroy black cards with skulls to avoid losing. Collect jokers, they give bonuses',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _settings_cards() {
    RxBool vaultRest = false.obs;
    RxBool vaultMus = (VaultHran.vaultHran!.getBool('vaultMu') ?? true).obs;
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
                height: 402,
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
                          'Settings',
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
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        vaultMus.toggle();
                        if (vaultMus.value) {
                          VaultMus.goVaultMu('mus/bg.mp3');
                          VaultHran.vaultHran!.setBool('vaultMu', true);
                        } else {
                          VaultMus.stoVaultMu();
                          VaultHran.vaultHran!.setBool('vaultMu', false);
                        }
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/empty.png',
                            width: 203,
                          ),
                          Obx(
                            () => RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Music: ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'RobotoFlex',
                                    ),
                                  ),
                                  TextSpan(
                                    text: vaultMus.value ? 'on' : 'off',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: vaultMus.value
                                          ? Color.fromRGBO(37, 254, 98, 1)
                                          : Color.fromRGBO(255, 6, 6, 1),
                                      fontFamily: 'RobotoFlex',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Text('Music: on',style: TextStyle(fontSize: , fontWeight: , color: Colors.white),),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => VaultSysSce(
                              tyty: 0,
                            ));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/empty.png',
                            width: 203,
                          ),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: 'RobotoFlex',
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => VaultSysSce(
                              tyty: 1,
                            ));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/empty.png',
                            width: 203,
                          ),
                          Text(
                            'Terms of Use',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: 'RobotoFlex',
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => VaultSysSce(
                              tyty: 2,
                            ));
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/empty.png',
                            width: 203,
                          ),
                          Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: 'RobotoFlex',
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (!vaultRest.value) {
                          vaultRest.value = true;
                          final ApphudComposite restPuCards =
                              await Apphud.restorePurchases();

                          bool vaultfailPu = true;

                          if (restPuCards.purchases.isNotEmpty) {
                            for (final pu in restPuCards.purchases) {
                              if (pu.productId == 'golden_soul_deck') {
                                vaultfailPu = false;
                                VaultHran.vaultHran!.setBool('hasgolden', true);
                              }
                            }

                            Get.showSnackbar(
                              GetSnackBar(
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.black,
                                messageText: Center(
                                  child: Text(
                                    'Purchases restored',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }

                          if (vaultfailPu) {
                            Get.showSnackbar(
                              GetSnackBar(
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.black,
                                messageText: Center(
                                  child: Text(
                                    'Purchase is not found',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }

                          vaultRest.value = false;
                        }
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'vault_assets/kn/empty.png',
                            width: 203,
                          ),
                          Obx(
                            () => vaultRest.value
                                ? CupertinoActivityIndicator(
                                    color: Colors.white,
                                  )
                                : Text(
                                    'Restore Purchases',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontFamily: 'RobotoFlex',
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if ((VaultHran.vaultHran!.getBool('vaultMu') ?? true) &&
          !VaultMus.vaultPl) {
        VaultMus.goVaultMu('mus/bg.mp3');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('vault_assets/fons/start.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'vault_assets/fons/jok_red.png',
                              width: 128,
                            ),
                            Positioned(
                              left: 44,
                              child: Container(
                                width: 83,
                                height: 55,
                                alignment: Alignment.center,
                                child: Obx(
                                  () => Text(
                                    VaultJokers.redJ.value.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(10, 18, 95, 1),
                                      fontFamily: 'RobotoFlex',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'vault_assets/kn/red.png',
                              width: 91,
                            ),
                            Obx(
                              () => Text(
                                'LeVEL ${VaultJokers.vaultLevel.value + 1}'
                                    .toUpperCase(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontFamily: 'RobotoFlex',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'vault_assets/fons/jok_blue.png',
                              width: 128,
                            ),
                            Positioned(
                              right: 44,
                              child: Container(
                                width: 83,
                                height: 55,
                                alignment: Alignment.center,
                                child: Obx(
                                  () => Text(
                                    VaultJokers.blackJ.value.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(10, 18, 95, 1),
                                      fontFamily: 'RobotoFlex',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => VaultFabSce());
                  },
                  child: Image.asset(
                    'vault_assets/kn/play.png',
                    width: 134,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => VaultSce());
                        },
                        child: Image.asset(
                          'vault_assets/kn/card.png',
                          width: 145,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _rules_cards();
                        },
                        child: Image.asset(
                          'vault_assets/kn/rules.png',
                          width: 203,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _settings_cards();
                        },
                        child: Image.asset(
                          'vault_assets/kn/settings.png',
                          width: 256,
                        ),
                      ),
                      Opacity(
                        opacity: 0,
                        child: Image.asset(
                          'vault_assets/kn/decks.png',
                          width: 319,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
