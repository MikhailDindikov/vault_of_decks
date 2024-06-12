import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_mus.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultMusCont extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onDetached() {}

  @override
  void onInactive() {
    if (VaultMus.vaultPl) {
      VaultMus.stoVaultMu();
    }
  }

  @override
  void onPaused() {}

  @override
  void onResumed() {
    if ((VaultHran.vaultHran!.getBool('vaultMu') ?? true)) {
      VaultMus.goVaultMu('mus/bg.mp3');
    }
  }

  @override
  void onHidden() {}
}
