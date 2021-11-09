import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'src/data/done_provider.dart';
import 'src/data/loader.dart';
import 'src/data/parse_agenda.dart';
import 'src/list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => DoneNotifier(),
    child: MyApp(),
  ));
}

Map<int, Color> MagicMintcolor = {
  50: Color.fromRGBO(244, 253, 249, .1),
  100: Color.fromRGBO(228, 249, 239, .2),
  200: Color.fromRGBO(211, 245, 228, .3),
  300: Color.fromRGBO(193, 241, 217, .4),
  400: Color.fromRGBO(179, 238, 209, .5),
  500: Color.fromRGBO(166, 235, 201, .6),
  600: Color.fromRGBO(158, 233, 195, .7),
  700: Color.fromRGBO(149, 229, 188, .8),
  800: Color.fromRGBO(139, 226, 181, .9),
  900: Color.fromRGBO(123, 221, 169, 1),
};

Map<int, Color> ScreaminGreencolor = {
  50: Color.fromRGBO(236, 255, 240, .1),
  100: Color.fromRGBO(208, 255, 216, .2),
  200: Color.fromRGBO(176, 255, 191, .3),
  300: Color.fromRGBO(144, 255, 165, .4),
  400: Color.fromRGBO(121, 255, 145, .5),
  500: Color.fromRGBO(97, 255, 126, .6),
  600: Color.fromRGBO(89, 255, 118, .7),
  700: Color.fromRGBO(79, 255, 107, .8),
  800: Color.fromRGBO(51, 255, 78, .9),
  900: Color.fromRGBO(123, 221, 169, 1),
};

Map<int, Color> ScreaminGreencolor2 = {
  50: Color.fromRGBO(236, 253, 235, .1),
  100: Color.fromRGBO(207, 249, 206, .2),
  200: Color.fromRGBO(175, 245, 173, .3),
  300: Color.fromRGBO(142, 241, 140, .4),
  400: Color.fromRGBO(118, 238, 116, .5),
  500: Color.fromRGBO(94, 235, 91, .6),
  600: Color.fromRGBO(86, 233, 83, .7),
  700: Color.fromRGBO(76, 229, 73, .8),
  800: Color.fromRGBO(66, 226, 64, .9),
  900: Color.fromRGBO(49, 221, 47, 1),
};

Map<int, Color> GreenRYBcolor = {
  50: Color.fromRGBO(236, 245, 231, .1),
  100: Color.fromRGBO(208, 230, 195, .2),
  200: Color.fromRGBO(177, 213, 155, .3),
  300: Color.fromRGBO(145, 196, 115, .4),
  400: Color.fromRGBO(122, 184, 85, .5),
  500: Color.fromRGBO(98, 171, 55, .6),
  600: Color.fromRGBO(90, 164, 49, .7),
  700: Color.fromRGBO(80, 154, 42, .8),
  800: Color.fromRGBO(70, 145, 35, .9),
  900: Color.fromRGBO(52, 128, 22, 1),
};

Map<int, Color> OliveDrab7color = {
  50: Color.fromRGBO(231, 231, 229, .1),
  100: Color.fromRGBO(196, 194, 189, .2),
  200: Color.fromRGBO(156, 154, 146, .3),
  300: Color.fromRGBO(116, 113, 102, .4),
  400: Color.fromRGBO(87, 82, 69, .5),
  500: Color.fromRGBO(57, 52, 36, .6),
  600: Color.fromRGBO(51, 47, 32, .7),
  700: Color.fromRGBO(44, 39, 27, .8),
  800: Color.fromRGBO(36, 33, 22, .9),
  900: Color.fromRGBO(23, 21, 13, 1),
};

MaterialColor magicMint = MaterialColor(0xFFA6EBC9, MagicMintcolor);
MaterialColor screaminGreen = MaterialColor(0xFFA6EBC9, ScreaminGreencolor);
MaterialColor screaminGreen2 = MaterialColor(0xFFA6EBC9, ScreaminGreencolor2);
MaterialColor greenRYB = MaterialColor(0xFFA6EBC9, GreenRYBcolor);
MaterialColor oliveDrab7 = MaterialColor(0xFFA6EBC9, OliveDrab7color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // bruh
          colorScheme: ColorScheme.fromSwatch(
        primarySwatch: magicMint,
      ).copyWith(
        secondary: screaminGreen,
      )),
      home: Loader(
        () => parseAgenda(context),
        (agenda) => MyAgendaList(agenda),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
