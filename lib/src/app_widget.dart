import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffe9e9e9),
        colorScheme: const ColorScheme.light(
          primary: Color(0xffa1a1a1),
          secondary: Color(0xff676c76),
          tertiary: Color(0xfffcfcfc),
        ),
        cardColor: const Color(0xffd9d9d9),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff515151),
        ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
