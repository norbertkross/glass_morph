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
    50: Color.fromRGBO(53, 100, 120, .1),
    100: Color.fromRGBO(53, 100, 120, .2),
    200: Color.fromRGBO(53, 100, 120, .3),
    300: Color.fromRGBO(53, 100, 120, .4),
    400: Color.fromRGBO(53, 100, 120, .5),
    500: Color.fromRGBO(53, 100, 120, .6),
    600: Color.fromRGBO(53, 100, 120, .7),
    700: Color.fromRGBO(53, 100, 120, .8),
    800: Color.fromRGBO(53, 100, 120, .9),
    900: Color.fromRGBO(53, 100, 120, 1),
  };
  // final MaterialColor colorCustom = const MaterialColor(0xFF1a4ff7, color);

  final MaterialColor colorCustom = const MaterialColor(0xFF356478, color);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'glass_morph',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorCustom,
        primaryColorDark: const Color(0xFF356478),
      ),
      home: const GlassMorph(),
    );
  }
}
