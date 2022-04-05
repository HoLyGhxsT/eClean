import 'package:eclean/pages/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:eclean/pages/login_page.dart';
import 'package:eclean/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/main_page.dart';
import 'pages/registration_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        // MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.mainRoute: (context) => MainPage(),
        MyRoutes.regRoute: (context) => RegPage()
      },
    );
  }
}
