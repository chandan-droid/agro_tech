import 'package:agro_tech/login_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome!",
                style: TextStyle(
                    color: Color(0xff4A6B3E),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                radius: 40,
                child: Image.asset("lib/assets/farmer.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginPage(
                      isFarmer: true,
                    );
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4A6B3E),
                      borderRadius: BorderRadius.circular(15)),
                  height: 40,
                  width: 300,
                  child: const Center(
                      child: Text("Login as farmer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              CircleAvatar(
                radius: 40,
                child: Image.asset("lib/assets/consumer.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const LoginPage(
                      isFarmer: false,
                    );
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff4A6B3E),
                      borderRadius: BorderRadius.circular(15)),
                  height: 40,
                  width: 300,
                  child: const Center(
                      child: Text("Login as consumer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))),
                ),
              )
            ],
          ),
        ));
  }
}
