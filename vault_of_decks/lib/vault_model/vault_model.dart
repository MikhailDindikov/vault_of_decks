import 'dart:math';

import 'package:get/get.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultModel {
  final String vaultName;
  final String vaultTag;
  final String vaultPath;
  bool isPaymentVault;
  bool isHas;
  bool isSel;
  final Map<String, int> vaultCraft;
  RxBool vaultBuy = false.obs;

  VaultModel({
    required this.vaultName,
    required this.vaultTag,
    required this.vaultPath,
    required this.isPaymentVault,
    required this.isHas,
    required this.isSel,
    required this.vaultCraft,
  });

  String get sumOfCraft {
    int vaultSum = 0;
    for (final vaultKey in vaultCraft.keys) {
      vaultSum += vaultCraft[vaultKey]!;
    }

    return vaultSum.toString();
  }

  String get vaultStatus {
    if (isHas) {
      if (isSel) {
        return 'vault_assets/kn/selected.png';
      } else {
        return 'vault_assets/kn/choose.png';
      }
    } else {
      if (isPaymentVault) {
        return 'vault_assets/kn/buy.png';
      } else {
        if (sumOfCraft == canCraft) {
          return 'vault_assets/kn/red_craft.png';
        } else {
          return 'vault_assets/kn/craft.png';
        }
      }
    }
  }

  String get canCraft {
    int vaultSum = 0;
    for (final vaultKey in vaultCraft.keys) {
      vaultSum += min(
          vaultCraft[vaultKey]!, (VaultHran.vaultHran!.getInt(vaultKey) ?? 0));
    }

    return vaultSum.toString();
  }
}
