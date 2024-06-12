import 'package:shared_preferences/shared_preferences.dart';

class VaultHran {
  static SharedPreferences? vaultHran;

  static Future<(List, List<bool>)> vauuuult() async {
    vaultHran = await SharedPreferences.getInstance();
    return ([], [false, true, false]);
  }
}
