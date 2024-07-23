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
        // Number of columns
        crossAxisCount: 2,
        // Spacing between the grid items
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // How the grid items are placed (vertical or horizontal)
        scrollDirection: Axis.vertical,
        // The items in the grid
        children: List.generate(10, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: TextStyle(fontSize: 20),
            ),
          );
        }),
      )
    );
  }
}