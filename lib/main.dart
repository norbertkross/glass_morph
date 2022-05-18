import 'package:flutter/material.dart';
import 'package:glass_morph/views/morph/morph_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const Map<int, Color> color = {
  //   50: Color.fromRGBO(26, 79, 247, .1),
  //   100: Color.fromRGBO(26, 79, 247, .2),
  //   200: Color.fromRGBO(26, 79, 247, .3),
  //   300: Color.fromRGBO(26, 79, 247, .4),
  //   400: Color.fromRGBO(26, 79, 247, .5),
  //   500: Color.fromRGBO(26, 79, 247, .6),
  //   600: Color.fromRGBO(26, 79, 247, .7),
  //   700: Color.fromRGBO(26, 79, 247, .8),
  //   800: Color.fromRGBO(26, 79, 247, .9),
  //   900: Color.fromRGBO(26, 79, 247, 1),
  // };

  static const  Map<int, Color> color = {
    50: Color.fromRGBO(10, 171, 32, .1),
    100: Color.fromRGBO(10, 171, 32, .2),
    200: Color.fromRGBO(10, 171, 32, .3),
    300: Color.fromRGBO(10, 171, 32, .4),
    400: Color.fromRGBO(10, 171, 32, .5),
    500: Color.fromRGBO(10, 171, 32, .6),
    600: Color.fromRGBO(10, 171, 32, .7),
    700: Color.fromRGBO(10, 171, 32, .8),
    800: Color.fromRGBO(10, 171, 32, .9),
    900: Color.fromRGBO(10, 171, 32, 1),
  };
  // final MaterialColor colorCustom = const MaterialColor(0xFF1a4ff7, color);

  final MaterialColor colorCustom = const MaterialColor(0xFF0aab20, color);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'glass_morph',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        primaryColorDark: const Color(0xFF0aab20),
      ),
      home: const GlassMorph(),
    );
  }
}
