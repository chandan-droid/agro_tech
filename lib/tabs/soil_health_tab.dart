import 'package:flutter/material.dart';

import '../constants.dart';

class SoilHealthTab extends StatefulWidget {
  const SoilHealthTab({super.key, required this.title});

  final String title;

  @override
  State<SoilHealthTab> createState() => _SoilHealthTabState();
}

class _SoilHealthTabState extends State<SoilHealthTab> {
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
  final ScrollController _scrollController = ScrollController();
  double _opacity = 0.0; // Initial opacity

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
      _opacity = (_scrollController.offset / 1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "AgroTech",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(location,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold))
          ],
        ),
        backgroundColor: themeColor,
      ),
      body: Stack(alignment: Alignment.topCenter, children: [
        Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Soil Health',
              style: TextStyle(
                color: themeColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'lib/assets/Soil health.png',
              width: screenWidth,
            ),
          ],
        ),
        // Fading overlay
        AnimatedBuilder(
          animation: _scrollController,
          builder: (context, child) {
            return Opacity(
              opacity: _opacity,
              child: child,
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  themeColor, // Start color
                  themeColor2, // End color
                  themeColor
                ],
              ),
            ), // Replace with your desired overlay color
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const SizedBox(height: 300),
                _buildSection(
                  title: 'Soil Moisture Content',
                  content:
                      'The soil moisture content is adequate. Ensure regular irrigation to maintain this level.',
                  imageUrl: 'lib/assets/soil moisture.png',
                  currentData: '30%',
                ),
                _buildSection(
                  title: 'pH Levels',
                  content:
                      'The soil pH level is slightly acidic. Consider adding lime to raise pH level.',
                  imageUrl: 'lib/assets/pH level.png',
                  currentData: '6.5',
                ),
                _buildSection(
                  title: 'NPK Concentrations',
                  content:
                      'The NPK values are suitable, but increase Nitrogen if growth is weak and regularly test soil for adjustments.',
                  imageUrl: null,
                  currentData: null,
                  isNpkSection: true,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

Widget _buildSection({
  required String title,
  required String content,
  String? imageUrl,
  String? currentData,
  bool isNpkSection = false,
}) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    margin: const EdgeInsets.only(bottom: 16.0),
    decoration: BoxDecoration(
      color: themeColor2.withOpacity(0.7),
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              if (currentData != null)
                Text(
                  'Current $title: $currentData',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 8.0),
              Text(
                content,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: const TextStyle(
                    fontSize: 15.0, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 16.0),
              if (isNpkSection)
                Column(
                  children: [
                    _buildNpkItem(
                      label: 'Nitrogen',
                      value: '60 kg/ha',
                      color: Colors.red,
                    ),
                    _buildNpkItem(
                      label: 'Phosphorus',
                      value: '30 kg/ha',
                      color: Colors.green,
                    ),
                    _buildNpkItem(
                      label: 'Potassium',
                      value: '40 kg/ha',
                      color: Colors.blue,
                    ),
                  ],
                ),
            ],
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
              fit: BoxFit.fill,
            ),
          ),
      ],
    ),
  );
}

Widget _buildNpkItem({
  required String label,
  required String value,
  required Color color,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Text(
            label.substring(0, 1).toUpperCase(),
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        Text(
          '$label: $value',
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    ),
  );
}
