import 'package:cobaapp/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'AbsensiAPP',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Spartan',
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Aplikasi Absensi Berbasis Mobile dan Website',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Spartan', fontSize: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
