import 'package:get/get.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultJokers {
  static RxInt redJ = 0.obs;
  static RxInt blackJ = 0.obs;
  static RxInt vaultLevel = 0.obs;

  static void initJokers() {
    redJ.value = VaultHran.vaultHran!.getInt('vaultRedJ') ?? 0;
    blackJ.value = VaultHran.vaultHran!.getInt('vaultBlackJ') ?? 0;
    vaultLevel.value = VaultHran.vaultHran!.getInt('vaultLvl')!;
  }

  static void incRedJ() {
    redJ.value++;
    VaultHran.vaultHran!.setInt('vaultRedJ', redJ.value);
  }

  static void incBlackJ() {
    blackJ.value++;
    VaultHran.vaultHran!.setInt('vaultBlackJ', blackJ.value);
  }

  static void incVaultLvl() {
    vaultLevel.value++;
    VaultHran.vaultHran!.setInt('vaultLvl', vaultLevel.value);
  }
}
