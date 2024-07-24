import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../colors.dart';


class WeatherTab extends StatefulWidget {
  WeatherTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _WeatherTabState createState() => _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
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
            SizedBox(height: 5,),
            Text(location,style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold))
          ],
        ),
        backgroundColor:themeColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              themeColor, // Start color
              themeColor2, // End color
              themeColor
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'Current Weather',
                  style: TextStyle(
                    color: themeColor1,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: themeColor3.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  '26°',
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 16),
                                Icon(
                                  Icons.cloud,
                                  size: 48,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Text(
                              'High: 28° Low: 24°',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cloudy',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Feels like 31°',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor2,
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text('Today'),
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor2,
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text('Tomorrow'),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor2,
                          padding: EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Text('10 Days'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
                        parameter:"wind speed" ,
                        value:"12" ,
                        unit:"Km/hr" ),
                    SizedBox(width: 16),
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Rain.png")) ,
                        parameter:"precipitation" ,
                        value:"12" ,
                        unit:"Km/hr" ),
                  ],
                ),
                    SizedBox(height: 16),
                Row(
                  children: [
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Sunrise.png")) ,
                        parameter:"Sunrise/Sunset" ,
                        value:"12" ,
                        unit:"Km/hr" ),

                    SizedBox(width: 16),
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
                        parameter:"Humidity" ,
                        value:"60" ,
                        unit:"%" ),

                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Sun light.png")) ,
                        parameter:"wind speed" ,
                        value:"12" ,
                        unit:"Km/hr" ),

                    SizedBox(width: 16),
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Half moon.png")) ,
                        parameter:"wind speed" ,
                        value:"12" ,
                        unit:"Km/hr" ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Droplet.png")) ,
                        parameter:"wind speed" ,
                        value:"12" ,
                        unit:"Km/hr" ),
                    SizedBox(width: 16),
                    CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Eye closed.png")) ,
                        parameter:"wind speed" ,
                        value:"12" ,
                        unit:"Km/hr" ),
                  ],
                ),
                SizedBox(height: 16),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget{

 final Widget prefixIcon ;
 final String parameter;
 final String value;
 final String unit;

 CustomBox({super.key,
   required this.prefixIcon,
   required this.parameter,
   required this.value,
    required this.unit
 });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: themeColor4.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            prefixIcon,
            SizedBox(height: 8),
            Text(parameter),
            SizedBox(height: 8),
            Text("$value $unit",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

