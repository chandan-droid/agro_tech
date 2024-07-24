import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget{
  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgroTech'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        scrollDirection: Axis.vertical,
        children:[

        ]
      ),

    );
  }
}