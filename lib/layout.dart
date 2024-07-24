import 'package:agro_tech/colors.dart';
import 'package:agro_tech/tabs/cropTab.dart';
import 'package:agro_tech/tabs/homeTab.dart';
import 'package:agro_tech/tabs/soilHealthTab.dart';
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
    WeatherTab(title: 'erp',),
    SoilHealthTab(title: 'efef''',),
    CropTab(title: 'kk',)

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
     return DefaultTabController(

           length: 4,
         child:Scaffold(

           body:_pages[currentIndex],

           // floatingActionButton: FloatingActionButton(
           //   onPressed: () {},
           //   // backgroundColor: tabColor,
           //   child: const Icon(
           //     Icons.comment,
           //     color: Colors.white,
           //   ),
           // ),
           bottomNavigationBar:BottomNavigationBar(
             type: BottomNavigationBarType.fixed,
             backgroundColor:themeColor,
             selectedItemColor: Colors.white,
             unselectedItemColor: Colors.white70,
             iconSize: 30,
             unselectedLabelStyle: TextStyle(fontSize: 12),
             currentIndex: currentIndex,
             onTap: (index){
                      setState(() {
                        currentIndex=index;
                      });
                    },
             items: const [
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("lib/assets/icons/Home.png")),
                 label: 'Home',
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("lib/assets/icons/Cloud.png")),
                 label: 'Weather',
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("lib/assets/icons/Leaf.png")),
                 label: 'Soil Health',
               ),
               BottomNavigationBarItem(
                 icon: ImageIcon(AssetImage("lib/assets/icons/Crop.png"),size: 35,),
                 label: 'Advisory',
               ),

             ],
           ),
           //
         ) ,
      );
  }
}