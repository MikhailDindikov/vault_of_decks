import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VaultSysSce extends StatefulWidget {
  final double tyty;
  const VaultSysSce({super.key, required this.tyty});

  @override
  State<VaultSysSce> createState() => _VaultSysSceState();
}

class _VaultSysSceState extends State<VaultSysSce> {
  late WebViewController vaultCon;

  @override
  void initState() {
    vaultCon = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(
        // pp
        widget.tyty == 0
            ? 'https://docs.google.com/document/d/1Ong_Z0hLryGuccGM_IWoi6ICriROfw6kuDdoGjONdRA/edit?usp=sharing'
            // tou
            : widget.tyty == 1
                ? 'https://docs.google.com/document/d/1OtKMbMiA27lNHxCM_YhDQew-YZ2b9fY0sc5UrUsYHpE/edit?usp=sharing'
                : 'https://sites.google.com/view/vault-of-decks/support-form',
      ));
    super.initState();
  }

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
                        widget.tyty == 0
                            ? 'Privacy Policy'
                            : widget.tyty == 1
                                ? 'Terms of Use'
                                : 'Support',
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
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: WebViewWidget(
                          controller: vaultCon,
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
