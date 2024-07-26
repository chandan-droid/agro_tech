import 'dart:async';

import 'package:agro_tech/layout.dart';
import 'package:agro_tech/register_page.dart';
import 'package:agro_tech/tabs/consumer%20view/shop_page.dart';
import 'package:agro_tech/tabs/homeTab.dart';
import 'package:agro_tech/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'login_page.dart';

bool isLoggedIn = true;
bool isFarmer = true;

void main () async {
  // WidgetsBinding widgetsBinding =WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await Future.delayed(Duration(seconds: 2));
  // FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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


  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
       if(!isLoggedIn) {
         isLoggedIn = true;
          return WelcomePage();
        } else{
         if(isFarmer) return Layout();
         return ShopPage();
         }
     }
     ));
    });

  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return    Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width:MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/splash.png"),
                    fit: BoxFit.fill
                )
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
              child: Text("AgroTech",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 70),)),
        ],
      )
    );
  }
}





