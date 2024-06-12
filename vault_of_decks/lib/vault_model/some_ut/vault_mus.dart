import 'package:just_audio/just_audio.dart';

class VaultMus {
  static bool vaultPl = false;
  static AudioPlayer vaultMus = AudioPlayer();

  static Future<((int, int), List)?> goVaultMu(String name) async {
    VaultMus.vaultPl = true;
    await vaultMus.setLoopMode(LoopMode.one);
    await vaultMus.setAsset('vault_assets/$name');
    await vaultMus.play();

    return ((1, 1), []);
  }

  static ((int, int), List)? musVaultOne(String name) {
    AudioPlayer()
      ..setAsset('vault_assets/$name')
      ..play();

    return ((1, 1), []);
  }

  static Future<((int, int), List)?> stoVaultMu() async {
    VaultMus.vaultPl = false;
    await vaultMus.stop();
    return ((1, 1), []);
  }
}
