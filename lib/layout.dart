import 'package:agro_tech/tabs/crop_tab.dart';
import 'package:agro_tech/tabs/home_tab.dart';
import 'package:agro_tech/tabs/soil_health_tab.dart';
import 'package:agro_tech/tabs/weatherTab.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var currentIndex = 0;

  final List<Widget> _pages = [
    const HomeTab(),
    const WeatherTab(title: "test"),
    const SoilHealthTab(title: "test"),
    const CropTab(title: "test"),
  ];

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: _pages[currentIndex],
          bottomNavigationBar: NavigationBarTheme(
            data: const NavigationBarThemeData(
              labelTextStyle: WidgetStatePropertyAll(
                TextStyle(
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
      ),
    );
  }
}
