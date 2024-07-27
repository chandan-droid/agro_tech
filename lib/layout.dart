import 'package:agro_tech/tabs/cropTab.dart';
import 'package:agro_tech/tabs/homeTab.dart';
import 'package:agro_tech/tabs/soilHealthTab.dart';
import 'package:agro_tech/tabs/weatherTab.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Layout extends StatefulWidget {
  Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var currentIndex = 0;
  final List<Widget> _pages = [
    HomeTab(),
    WeatherTab(title: 'erp'),
    SoilHealthTab(title: "test"),
    CropTab(title: "test"),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: DefaultTabController(
      length: 4,
      child: Scaffold(
        body: _pages[0],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: WidgetStatePropertyAll(
              const TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
          child: NavigationBar(
            backgroundColor: const Color(0xff4A6B3E),
            height: MediaQuery.of(context).size.height * 0.08,
            indicatorColor: Colors.transparent,
            selectedIndex: currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage("lib/assets/icons/Home.png"),
                  color: Colors.white,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage("lib/assets/icons/Cloud.png"),
                  color: Colors.white,
                ),
                label: 'Weather',
              ),
              NavigationDestination(
                icon: ImageIcon(
                  AssetImage("lib/assets/icons/Leaf.png"),
                  color: Colors.white,
                ),
                label: 'Soil Health',
              ),
              NavigationDestination(
                icon: Icon(
                  Icons.call_outlined,
                  color: Colors.white,
                ),
                label: 'Crop Advisory',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
