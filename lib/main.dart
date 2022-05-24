import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/utils/routes.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
