import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';
import 'package:vault_of_decks/vault_sche/vault_hran.dart';

class VaultResources {
  // game resources
  static late ui.Image conv;
  static late ui.Image road;
  static late ui.Image ch;
  static late ui.Image p;
  static late ui.Image b;
  static late ui.Image kr;
  // cards can change
  static late ui.Image rj;
  static late ui.Image bj;
  static late ui.Image dc;
  static late ui.Image backCard;
  static List<ui.Image> chs = [];
  static List<ui.Image> ps = [];
  static List<ui.Image> bs = [];
  static List<ui.Image> krs = [];

  static Future<void> initResouces() async {
    conv = await _getResource('vault_assets/fab/conv.png');
    road = await _getResource('vault_assets/fons/road.png');
    ch = await _getResource('vault_assets/fab/ch.png');
    p = await _getResource('vault_assets/fab/p.png');
    b = await _getResource('vault_assets/fab/b.png');
    kr = await _getResource('vault_assets/fab/kr.png');
    await kolodaResouces();
    VaultHran.vaultHran!.getString('vaultSelTag');
  }

  static Future<void> kolodaResouces() async {
    final vaultTag = VaultHran.vaultHran!.getString('vaultSelTag')!;
    rj = await _getResource('vault_assets/fab/$vaultTag/rj.png');
    bj = await _getResource('vault_assets/fab/$vaultTag/bj.png');
    dc = await _getResource('vault_assets/fab/$vaultTag/dc.png');
    chs.clear();
    ps.clear();
    bs.clear();
    krs.clear();
    backCard = await _getResource('vault_assets/fab/$vaultTag/back.png');
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_6.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_7.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_8.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_9.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_10.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_j.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_q.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_k.png'));
    chs.add(await _getResource('vault_assets/fab/$vaultTag/ch_t.png'));

    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_6.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_7.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_8.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_9.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_10.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_j.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_q.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_k.png'));
    ps.add(await _getResource('vault_assets/fab/$vaultTag/p_t.png'));

    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_6.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_7.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_8.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_9.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_10.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_j.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_q.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_k.png'));
    bs.add(await _getResource('vault_assets/fab/$vaultTag/b_t.png'));

    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_6.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_7.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_8.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_9.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_10.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_j.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_q.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_k.png'));
    krs.add(await _getResource('vault_assets/fab/$vaultTag/kr_t.png'));
  }

  static Future<ui.Image> _getResource(String resPath) async {
    final dataFab = await rootBundle.load(resPath);
    final listFaa = Uint8List.view(dataFab.buffer);
    final completerFab = Completer<ui.Image>();
    ui.decodeImageFromList(listFaa, completerFab.complete);
    return completerFab.future;
  }
}
