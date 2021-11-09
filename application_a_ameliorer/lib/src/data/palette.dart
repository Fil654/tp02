import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor magicMint_ = const MaterialColor(
    0xFFA6EBC9, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: Color(0xFFF4FDF9),
      100: Color(0xFFE4F9EF),
      200: Color(0xFFD3F5E4),
      300: Color(0xFFC1F1D9),
      400: Color(0xFFB3EED1),
      500: Color(0xFFA6EBC9),
      600: Color(0xFF9EE9C3),
      700: Color(0xFF95E5BC),
      800: Color(0xFF8BE2B5),
      900: Color(0xFF7BDDA9),
    },
  );
}
