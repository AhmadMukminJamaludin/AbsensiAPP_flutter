import 'package:cobaapp/font_style.dart';
import 'package:cobaapp/home_page.dart';
import 'package:cobaapp/login_page.dart';
import 'package:cobaapp/splashscreen_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (context) => SplashScreenPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => homeApp(),
    },
  ));
}
