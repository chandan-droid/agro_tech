import 'package:flutter/material.dart';

class WelcomePage  extends StatefulWidget{
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hi")),
    );
  }
}