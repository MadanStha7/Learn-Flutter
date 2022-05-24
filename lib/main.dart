import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/login_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.green,
      ),
      initialRoute: '/home',
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
