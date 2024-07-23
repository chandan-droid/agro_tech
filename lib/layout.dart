import 'package:agro_tech/tabs/homeTab.dart';
import 'package:agro_tech/tabs/weatherTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget{
  Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var currentIndex = 0;
  final List<Widget> _pages = [
    HomeTab(),
    WeatherTab(),
    // SoilHealthTab(),
    // CropHealthTab()
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return SafeArea(
        child:DefaultTabController(

      length: 3,
      child:Scaffold(

        body:_pages[currentIndex],

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: NavigationBar(
          height: MediaQuery.of(context).size.height*0.08,
          selectedIndex: currentIndex,
          onDestinationSelected: (index){
            setState(() {
              currentIndex=index;
            });
          },
          indicatorColor: Colors.black12,
          destinations: const [

            NavigationDestination(icon:Icon(Icons.home),
                selectedIcon:Icon(Icons.chat) ,
                label: 'chat'),
            NavigationDestination(icon:Icon(Icons.update_outlined),
                selectedIcon:Icon(Icons.update_rounded,) ,
                label: 'updates'),
            NavigationDestination(icon:Icon(Icons.people_outline),
                selectedIcon: Icon(Icons.people),
                label: 'community'),
            NavigationDestination(icon:Icon(Icons.call_outlined),
                selectedIcon: Icon(Icons.call),
                label: 'calls'),
          ],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
      ) ,
    ) );
  }
}