import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../colors.dart';


class SoilHealthTab extends StatefulWidget {
  SoilHealthTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SoilHealthTabState createState() => _SoilHealthTabState();
}

class _SoilHealthTabState extends State<SoilHealthTab> {
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
  final ScrollController _scrollController = ScrollController();

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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context ).size.width;
    print(screenWidth);
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight:screenHeight*0.1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("AgroTech",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            Text(location,style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold))
          ],
        ),
        backgroundColor:themeColor,
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [

            const Text(
              'Soil Health',
              style: TextStyle(
                color: themeColor1,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Image.asset('lib/assets/Soil health.png'),


            _buildSection(
              title: 'Soil Moisture Content',
              content: 'The soil moisture content is adequate. Ensure regular irrigation to maintain this level.',
              imageUrl: '',
              currentData: '30%',
            ),
            _buildSection(
              title: 'pH Levels',
              content: 'The soil pH level is slightly acidic. Consider adding lime to raise pH level.',
              imageUrl: 'assets/ph_level.jpg',
              currentData: '6.5',
            ),
            _buildSection(
              title: 'NPK Concentrations',
              content: 'The NPK values are suitable, but increase Nitrogen if growth is weak and regularly test soil for adjustments.',
              imageUrl: null,
              currentData: null,
              isNpkSection: true,
            ),
          ],
        ),
      ),
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
      color: Colors.green[100],
      borderRadius: BorderRadius.circular(10.0),
    ),
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
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(height: 8.0),
        Text(
          content,
          style: const TextStyle(fontSize: 16.0),
        ),
        const SizedBox(height: 16.0),
        if (imageUrl != null)
          Image.asset(
            imageUrl,
            height: 150.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        if (isNpkSection)
          Column(
            children: [
              _buildNpkItem(
                label: 'Nitrogen',
                value: '60 kg/ha',
                color: Colors.blue,
              ),
              _buildNpkItem(
                label: 'Phosphorus',
                value: '30 kg/ha',
                color: Colors.orange,
              ),
              _buildNpkItem(
                label: 'Potassium',
                value: '40 kg/ha',
                color: Colors.purple,
              ),
            ],
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
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Text(
            label.substring(0, 1).toUpperCase(),
            style: const TextStyle(
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


