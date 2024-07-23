import 'dart:async';

import 'package:agro_tech/layout.dart';
import 'package:agro_tech/register_page.dart';
import 'package:agro_tech/tabs/homeTab.dart';
import 'package:agro_tech/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agro Tech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade900),
        useMaterial3: true,
      ),
      home:Splash(),
    );

  }
}
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLoggedIn = false;
  bool isExistingUser = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 2),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.green,
      nextScreen:LayoutBuilder(
        builder: (context, constraints) {
          if(!isLoggedIn)
            return LoginPage();
          return Layout();

        },
      ),
      splash: null,
    );
  }
}





