import 'dart:ui' as ui;

import 'package:apphud/apphud.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';
import 'package:vault_of_decks/vault_model/vault_model.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultSce extends StatefulWidget {
  const VaultSce({super.key});

  @override
  State<VaultSce> createState() => _VaultSceState();
}

class _VaultSceState extends State<VaultSce> {
  final vaults = [
    VaultModel(
      vaultName: 'Start Decks',
      vaultTag: 'start',
      vaultPath: 'vault_assets/vaults/start.png',
      isPaymentVault: false,
      isHas: true,
      isSel: VaultHran.vaultHran!.getInt('vaultSel') == null
          ? true
          : VaultHran.vaultHran!.getInt('vaultSel') == 0,
      vaultCraft: {},
    ),
    VaultModel(
      vaultName: 'Mystic Realm Deck',
      vaultTag: 'mystic',
      vaultPath: 'vault_assets/vaults/mystic.png',
      isPaymentVault: false,
      isHas: VaultHran.vaultHran!.getBool('hasmystic') ?? false,
      isSel: VaultHran.vaultHran!.getInt('vaultSel') == null
          ? false
          : VaultHran.vaultHran!.getInt('vaultSel') == 1,
      vaultCraft: {
        '8': 1,
        'j': 2,
        'q': 2,
        'k': 2,
      },
    ),
    VaultModel(
      vaultName: "Wizard's Wonders Deck",
      vaultTag: 'wizard',
      vaultPath: 'vault_assets/vaults/wizard.png',
      isPaymentVault: false,
      isHas: VaultHran.vaultHran!.getBool('haswizard') ?? false,
      isSel: VaultHran.vaultHran!.getInt('vaultSel') == null
          ? false
          : VaultHran.vaultHran!.getInt('vaultSel') == 2,
      vaultCraft: {
        '7': 2,
        '9': 2,
        'j': 3,
        'q': 2,
      },
    ),
    VaultModel(
      vaultName: "Sorcerer's Spell Deck",
      vaultTag: 'sorcerer',
      vaultPath: 'vault_assets/vaults/sorcerer.png',
      isPaymentVault: false,
      isHas: VaultHran.vaultHran!.getBool('hassorcerer') ?? false,
      isSel: VaultHran.vaultHran!.getInt('vaultSel') == null
          ? false
          : VaultHran.vaultHran!.getInt('vaultSel') == 3,
      vaultCraft: {
        '6': 3,
        '7': 3,
        'j': 3,
        't': 3,
      },
    ),
    VaultModel(
      vaultName: "Golden Soul Deck",
      vaultTag: 'golden',
      vaultPath: 'vault_assets/vaults/golden.png',
      isPaymentVault: true,
      isHas: VaultHran.vaultHran!.getBool('hasgolden') ?? false,
      isSel: VaultHran.vaultHran!.getInt('vaultSel') == null
          ? false
          : VaultHran.vaultHran!.getInt('vaultSel') == 4,
      vaultCraft: {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('vault_assets/fons/start_e.png'),
            fit: BoxFit.fill),
      ),
      child: Container(
        color: Color.fromRGBO(10, 18, 95, 0.7),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 21),
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: Get.back,
                          child: Image.asset(
                            'vault_assets/kn/back.png',
                            width: 9,
                          ),
                        ),
                      ),
                      Text(
                        'Magic Decks',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 21),
                        child: Opacity(
                          opacity: 0,
                          child: Image.asset(
                            'vault_assets/kn/back.png',
                            width: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: ListView.separated(
                        itemCount: vaults.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, ind) => VaultSceCard(
                          vaultModel: vaults[ind],
                          vaultIndex: ind,
                          onVaultTap: (vaultIndex) async {
                            if (vaults[vaultIndex].isHas) {
                              if (!vaults[vaultIndex].isSel) {
                                for (final vault in vaults) {
                                  vault.isSel = false;
                                }
                                vaults[vaultIndex].isSel = true;
                                VaultHran.vaultHran!
                                    .setInt('vaultSel', vaultIndex);
                                await VaultHran.vaultHran!.setString(
                                    'vaultSelTag', vaults[vaultIndex].vaultTag);
                                await VaultResources.kolodaResouces();
                                setState(() {});
                              }
                            } else {
                              if (vaults[vaultIndex].isPaymentVault) {
                                if (!vaults[vaultIndex].vaultBuy.value) {
                                  vaults[vaultIndex].vaultBuy.value = true;
                                  final vaultspw = await Apphud.paywalls();
                                  print(vaultspw?.paywalls.first.products!);
                                  final vaultstv = await Apphud.purchase(
                                    product: vaultspw?.paywalls.first.products!
                                        .where((bartvbartv) =>
                                            bartvbartv.productId ==
                                            'golden_soul_deck')
                                        .toList()
                                        .first,
                                  );
                                  if (vaultstv.error == null) {
                                    vaults[vaultIndex].isHas = true;
                                    VaultHran.vaultHran!.setBool(
                                        'has${vaults[vaultIndex].vaultTag}',
                                        true);
                                    setState(() {});
                                  }

                                  vaults[vaultIndex].vaultBuy.value = false;
                                }
                              }
                              else if (vaults[vaultIndex].canCraft ==
                                  vaults[vaultIndex].sumOfCraft) {
                                for (final vaultKey
                                    in vaults[vaultIndex].vaultCraft.keys) {
                                  VaultHran.vaultHran!.setInt(
                                      vaultKey,
                                      (VaultHran.vaultHran!.getInt(vaultKey) ??
                                              0) -
                                          vaults[vaultIndex]
                                              .vaultCraft[vaultKey]!);
                                }
                                vaults[vaultIndex].isHas = true;
                                VaultHran.vaultHran!.setBool(
                                    'has${vaults[vaultIndex].vaultTag}', true);
                                setState(() {});
                              }
                            }
                          },
                        ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 24,
                        ),
                      ),
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

class VaultSceCard extends StatelessWidget {
  final VaultModel vaultModel;
  final int vaultIndex;
  final void Function(int vaultIndex) onVaultTap;
  const VaultSceCard({
    required this.vaultModel,
    required this.vaultIndex,
    required this.onVaultTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 261,
      width: 348,
      padding: EdgeInsets.symmetric(horizontal: 28).copyWith(top: 24),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('vault_assets/fons/dialog.png'),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    vaultModel.vaultPath,
                    height: 155,
                    width: 145,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      onVaultTap(vaultIndex);
                    },
                    child: Obx(
                      () => vaultModel.vaultBuy.value
                          ? Container(
                            height: 45,
                            alignment: Alignment.center,
                            child: CupertinoActivityIndicator(
                                color: Colors.white,
                              ),
                          )
                          : Image.asset(
                              vaultModel.vaultStatus,
                              width: 145,
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  if (vaultModel.isPaymentVault)
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(121, 55, 0, 1),
                          Color.fromRGBO(255, 246, 139, 1),
                          Color.fromRGBO(255, 246, 139, 1),
                          Color.fromRGBO(121, 55, 0, 1),
                        ],
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        vaultModel.vaultName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    )
                  else
                    Text(
                      vaultModel.vaultName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  if (vaultModel.isHas || vaultModel.isPaymentVault)
                    Column(
                      children: [
                        SizedBox(
                          height: 38,
                        ),
                        Image.asset(
                          'vault_assets/fons/crafted.png',
                          width: 55,
                          fit: BoxFit.fill,
                        ),
                      ],
                    )
                  else
                    Column(
                      children: [
                        SizedBox(
                          height: 7,
                        ),
                        Column(
                          children: List.generate(
                            vaultModel.vaultCraft.keys.toList().length,
                            (index) => Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    '${vaultModel.vaultCraft.keys.toList()[index].toUpperCase()}',
                                    style: TextStyle(
                                      fontFamily: 'NegritaPro',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(239, 195, 130, 1),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'x',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '${(VaultHran.vaultHran!.getInt(vaultModel.vaultCraft.keys.toList()[index]) ?? 0)}/${vaultModel.vaultCraft.values.toList()[index].toString().toUpperCase()}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),

                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       vaultModel.canCraft,
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.w500,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 2,
                        //     ),
                        //     Text(
                        //       '/',
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.w500,
                        //         color: Colors.white,
                        //       ),
                        //     ),
                        //     SizedBox(
                        //       width: 2,
                        //     ),
                        //     Text(
                        //       vaultModel.sumOfCraft,
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.w500,
                        //         color: Color.fromRGBO(239, 195, 130, 1),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
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
