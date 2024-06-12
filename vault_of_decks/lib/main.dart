import 'package:apphud/apphud.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_jokers.dart';
import 'package:vault_of_decks/vault_model/some_ut/vault_resources.dart';
import 'package:vault_of_decks/vault_sce/vault_conts/vault_mus_cont.dart';
import 'package:vault_of_decks/vault_sce/vault_start_sce.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await VaultHran.vauuuult();
  VaultJokers.initJokers();
  //await VaultHran.vaultHran!.clear();
  if (VaultHran.vaultHran!.getString('vaultSelTag') == null) {
    await VaultHran.vaultHran!.setInt('vaultLvl', 0);
    await VaultHran.vaultHran!.setString('vaultSelTag', 'start');
  }
  await VaultResources.initResouces();
  await Apphud.start(apiKey: 'app_GPhKpEJPJnE67zUo2mUfsxT4h4hFya');

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const VaultApp());
}

class VaultApp extends StatelessWidget {
  const VaultApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Vault Of Decks',
        theme: ThemeData(
          fontFamily: 'RobotoFlex',
          useMaterial3: true,
        ),
        home: StatefulBuilder(builder: (context, func) {
          final vaultMusCont = Get.put(VaultMusCont());
          return GetBuilder<VaultMusCont>(builder: (context) {
            return MediaQuery.withNoTextScaling(
              child: VaultStartSce(),
            );
          });
        }));
  }
}
