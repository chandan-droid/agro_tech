import 'package:agro_tech/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String userName = "user";
  final ScrollController _scrollController = ScrollController();
  double _opacity = 1.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _opacity = (_scrollController.offset / 400);
    });
  }

  // final GlobalKey<ScaffoldState> _sKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: themeColor,
        centerTitle: true,
        title: const Text(
          "AgroTech",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 32,
        ),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 40,
                child: Image.asset("lib/assets/farmer.png"),
              ),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: themeColor,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: const Text('My Account'),
            onTap: () {
              Navigator.pushNamed(context, '/my_account');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Community'),
            onTap: () {
              Navigator.pushNamed(context, '/community');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('Sell Your Crops'),
            onTap: () {
              Navigator.pushNamed(context, '/sell_crops');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Welcome Ramesh",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Image.asset(
              'lib/assets/homepage.png',
              width: screenWidth,
              fit: BoxFit.cover,
            ),
            _buildSection(
              title: 'Real Time Weather Updates',
              imageUrl: 'lib/assets/realtime weather.png',
            ),
            _buildSection(
              title: 'pH Levels',
              imageUrl: 'lib/assets/home soil health.png',
            ),
            _buildSection(
              title: 'Crop Advisory',
              imageUrl: "lib/assets/crop advisory.png",
            ),
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text("Cultivate",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
            //       Text("with Love !",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600)),

            //       Text("Made with with ❤️ by AgroTech"),

            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

Widget _buildSection({required String title, String? imageUrl}) {
  return Container(
    padding: const EdgeInsets.all(24.0),
    margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
    decoration: BoxDecoration(
      color: themeColor2.withOpacity(0.7),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        if (imageUrl != null)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Image.asset(
              imageUrl,
            ),
          ),
      ],
    ),
  );
}
