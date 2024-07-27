// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import '../colors.dart';

// class WeatherTab extends StatefulWidget {
//   WeatherTab({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _WeatherTabState createState() => _WeatherTabState();
// }

// class _WeatherTabState extends State<WeatherTab> {
//   final String location = "S Block 17, Bodhanga, Cuttack-08..";
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context ).size.width;
//     print(screenWidth);
//     double screenHeight = MediaQuery.of(context).size.height;
//     print(screenHeight);

//     return Scaffold(

//       appBar: AppBar(
//         toolbarHeight:screenHeight*0.1,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text("AgroTech",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//             Text(location,style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold))
//           ],
//         ),
//         backgroundColor:themeColor,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               themeColor, // Start color
//               themeColor2, // End color
//               themeColor3
//             ],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 const Text(
//                   'Current Weather',
//                   style: TextStyle(
//                     color: themeColor1,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   padding: const EdgeInsets.all(18),
//                   decoration: BoxDecoration(
//                     color: themeColor3,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: const Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Now',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Text(
//                                   '26°',
//                                   style: TextStyle(
//                                     fontSize: 48,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 SizedBox(width: 16),
//                                 Icon(
//                                   Icons.cloud,
//                                   size: 48,
//                                   color: Colors.amber,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'High: 28° Low: 24°',
//                               style: TextStyle(
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Cloudy',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Feels like 31°',
//                               style: TextStyle(
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor2,
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('Today'),
//                       ),
//                     ),
//                     const SizedBox(width: 16,),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor2,
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('Tomorrow'),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor2,
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('10 Days'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),

//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
//                         parameter:"wind speed" ,
//                         value:"12" ,
//                         unit:"Km/hr" ),
//                       CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                           parameter: "precipitation",
//                           value:"86" ,
//                           unit: "%"),
//                     // CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Sun.png")) ,
//                     //     parameter:"Sunrise/Sunset" ,
//                     //     value: "6:03/17:34",
//                     //   unit: "",
//                     // ),
//                     // CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                     //     parameter: "Humidity",
//                     //     value:"60" ,
//                     //     unit: "%"),

//                 // Row(
//                 //   children: [
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.air,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Wind speed',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '12 km/hr',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //     SizedBox(width: 16),
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.cloud_queue,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Precipitation',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '86%',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 // SizedBox(height: 16),
//                 // Row(
//                 //   children: [
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.brightness_low,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Sunrise/Sunset',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '6:03/17:34',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //     SizedBox(width: 16),
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.waves,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Humidity',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '60%',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 // SizedBox(height: 16),
//                 // Row(
//                 //   children: [
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.brightness_high,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'UV Index',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '6',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //     SizedBox(width: 16),
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xff4A6B3E),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.nightlight_round,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Moon Phase',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Waning Gibbous',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 // SizedBox(height: 16),
//                 // Row(
//                 //   children: [
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.water_drop,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Dew Point',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '27°',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //     SizedBox(width: 16),
//                 //     Expanded(
//                 //       child: Container(
//                 //         padding: EdgeInsets.all(16),
//                 //         decoration: BoxDecoration(
//                 //           color: Color(0xFFF0FFF0),
//                 //           borderRadius: BorderRadius.circular(16),
//                 //         ),
//                 //         child: Column(
//                 //           crossAxisAlignment: CrossAxisAlignment.start,
//                 //           children: [
//                 //             Icon(
//                 //               Icons.visibility,
//                 //               size: 32,
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               'Visibility',
//                 //               style: TextStyle(
//                 //                 fontSize: 14,
//                 //               ),
//                 //             ),
//                 //             SizedBox(height: 8),
//                 //             Text(
//                 //               '6.4 km',
//                 //               style: TextStyle(
//                 //                 fontSize: 18,
//                 //                 fontWeight: FontWeight.bold,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         ),
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//                 // SizedBox(height: 16),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomBox extends StatelessWidget{

//  final Widget prefixIcon ;
//  final String parameter;
//  final String value;
//  final String unit;

//  CustomBox({super.key,
//    required this.prefixIcon,
//    required this.parameter,
//    required this.value,
//     required this.unit
//  });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: themeColor4,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           prefixIcon,
//           SizedBox(height: 8),
//           Text(parameter),
//           SizedBox(height: 8),
//           Text("$value $unit",
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// import '../constants.dart';

// class WeatherTab extends StatefulWidget {
//   WeatherTab({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _WeatherTabState createState() => _WeatherTabState();
// }

// class _WeatherTabState extends State<WeatherTab> {

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     // print(screenWidth);
//     double screenHeight = MediaQuery.of(context).size.height;
//     // print(screenHeight);

//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: screenHeight * 0.1,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(
//               "AgroTech",
//               style:
//                   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//             ),
//             Text(location,
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold))
//           ],
//         ),
//         backgroundColor: themeColor,
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomRight,
//             colors: [
//               themeColor, // Start color
//               themeColor2, // End color
//               themeColor
//             ],
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               children: [
//                 const Text(
//                   'Current Weather',
//                   style: TextStyle(
//                     color: themeColor1,
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   padding: const EdgeInsets.all(18),
//                   decoration: BoxDecoration(
//                     color: themeColor3.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: const Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Now',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               )),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Text(
//                                     '26°',
//                                     style: TextStyle(
//                                       fontSize: 48,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                   SizedBox(width: 16),
//                                   Icon(
//                                     Icons.cloud,
//                                     size: 48,
//                                     color: Colors.amber,
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'High: 28° Low: 24°',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 'Cloudy',
//                                 style: TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 'Feels like 31°',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     )),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor.withOpacity(0.4),
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             color: Colors.black,
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('Today'),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 16,
//                     ),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor3,
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('Tomorrow'),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: themeColor3,
//                           padding: EdgeInsets.symmetric(
//                             vertical: 16,
//                           ),
//                           textStyle: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                         ),
//                         child: Text('10 Days'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),

//                 Row(
//                   children: [
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
//                         parameter:"wind speed" ,
//                         value:"12" ,
//                         unit:"Km/hr" ),
//                     SizedBox(width: 16,),
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                         parameter: "precipitation",
//                         value:"86" ,
//                         unit: "%"),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   children: [
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
//                         parameter:"wind speed" ,
//                         value:"12" ,
//                         unit:"Km/hr" ),
//                     SizedBox(width: 16,),
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                         parameter: "precipitation",
//                         value:"86" ,
//                         unit: "%"),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   children: [
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
//                         parameter:"wind speed" ,
//                         value:"12" ,
//                         unit:"Km/hr" ),
//                     SizedBox(width: 16,),
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                         parameter: "precipitation",
//                         value:"86" ,
//                         unit: "%"),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   children: [
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Air.png")) ,
//                         parameter:"wind speed" ,
//                         value:"12" ,
//                         unit:"Km/hr" ),
//                     SizedBox(width: 16,),
//                     CustomBox(prefixIcon:const ImageIcon(AssetImage("lib/assets/icons/Humidity.png")) ,
//                         parameter: "precipitation",
//                         value:"86" ,
//                         unit: "%"),
//                   ],
//                 ),
//                 const SizedBox(height: 16),

//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomBox extends StatelessWidget {
//   final Widget prefixIcon;
//   final String parameter;
//   final String value;
//   final String unit;

//   CustomBox(
//       {super.key,
//       required this.prefixIcon,
//       required this.parameter,
//       required this.value,
//       required this.unit});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: themeColor.withOpacity(0.2),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             prefixIcon,
//             SizedBox(height: 8),
//             Text(parameter),
//             SizedBox(height: 8),
//             Text("$value $unit",
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:agro_tech/constants.dart';
import 'package:flutter/material.dart';

class WeatherTab extends StatefulWidget {
  const WeatherTab({super.key, required this.title});

  final String title;

  @override
  _WeatherTabState createState() => _WeatherTabState();
}

class _WeatherTabState extends State<WeatherTab> {
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
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
            Text(location,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold))
          ],
        ),
        backgroundColor: themeColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
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
                    color: themeColor2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: themeColor2.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                            Text(
                              'High: 28° Low: 24°',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Column(
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
                      ],
                    )),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor1,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text('Today'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor2,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text('Tomorrow'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: themeColor2,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text('10 Days'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    CustomBox(
                        assetImage: AssetImage("lib/assets/icons/Air.png"),
                        parameter: "Wind speed",
                        value: "12",
                        unit: "km/hr"),
                    SizedBox(width: 16),
                    CustomBox(
                        assetImage: AssetImage("lib/assets/icons/Rain.png"),
                        parameter: "Precipitation",
                        value: "86",
                        unit: "%"),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    CustomBox(
                        assetImage: AssetImage("lib/assets/icons/Sunrise.png"),
                        parameter: "Sunrise/Sunset",
                        value: "6:03/",
                        unit: "17:34"),
                    SizedBox(width: 16),
                    CustomBox(
                        assetImage: AssetImage("lib/assets/icons/Humidity.png"),
                        parameter: "Humidity",
                        value: "60",
                        unit: "%"),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    CustomBox(
                        assetImage:
                            AssetImage("lib/assets/icons/Sun light.png"),
                        parameter: "UV Index",
                        value: "6",
                        unit: ""),
                    SizedBox(width: 16),
                    CustomBox(
                        assetImage:
                            AssetImage("lib/assets/icons/Half moon.png"),
                        parameter: "Moon Phase",
                        value: "Waning\nGibbous",
                        unit: ""),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    CustomBox(
                        assetImage: AssetImage("lib/assets/icons/Droplet.png"),
                        parameter: "Dew Point",
                        value: "27",
                        unit: "°"),
                    SizedBox(width: 16),
                    CustomBox(
                        assetImage:
                            AssetImage("lib/assets/icons/Eye closed.png"),
                        parameter: "Visibility",
                        value: "6.1",
                        unit: "km"),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final ImageProvider assetImage;
  final String parameter;
  final String value;
  final String unit;

  const CustomBox(
      {super.key,
      required this.assetImage,
      required this.parameter,
      required this.value,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: themeColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageIcon(
              assetImage,
              size: 32,
              color: Colors.black,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(parameter),
                Text(
                  "$value$unit",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
