import 'package:flutter/material.dart';

abstract class _ThemeColor {
  ///netural colour
  final Color black = HexColor.fromHex('#000000');
  final Color gray1 = HexColor.fromHex('#484848');
  final Color gray2 = HexColor.fromHex('#797979');
  final Color gray3 = HexColor.fromHex('#A9A9A9');
  final Color gray4 = HexColor.fromHex('#D9D9D9');
  final Color white = HexColor.fromHex('#FFFFFF');

  ///primary
  final Color primary100 = HexColor.fromHex('#129575');
  final Color primary80 = HexColor.fromHex('#71B1A1');
  final Color primary60 = HexColor.fromHex('#AFD3CA');
  final Color primary40 = HexColor.fromHex('#DBEBE7');
  final Color primary20 = HexColor.fromHex('#F6FAF9');

  ///rating
  final Color rating = HexColor.fromHex('#FFAD30');

  ///warning
  final Color warning = HexColor.fromHex('#804E00');

  ///success
  final Color success = HexColor.fromHex('#31B057');
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
