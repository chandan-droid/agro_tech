import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage  extends StatefulWidget{
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context ).size.width;
    print(screenWidth);
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome!",style: TextStyle(color: Color(0xff4A6B3E),fontSize: 40,fontWeight: FontWeight.bold),),
            CircleAvatar(
              radius: 40,
              child: Image.asset("lib/assets/farmer.png"),
            ),
            Container(
                  decoration: BoxDecoration(
                      color: Color(0xff4A6B3E),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  height:40 ,
                  width: 300,
                  child: Center(child: Text("Login as farmer",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
            ),


            CircleAvatar(
              radius: 40,
              child: Image.asset("lib/assets/consumer.png"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff4A6B3E),
                  borderRadius: BorderRadius.circular(15)
              ),
              height: 40,
              width: 300,
              child: Center(child: Text("Login as consumer",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
            ),
          ],
        ),
      )
    );
  }
}