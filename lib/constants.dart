import 'dart:ui';

import 'package:flutter/material.dart';

const themeColor = Color(0xff4A6B3E);
const themeColor1 = Color(0xffA2C392);
const themeColor2 = Color(0xffCFEBC1);
const themeColor3 = Color(0xffCFF3BE);

//Location
const String location = "S Block 17, Bodhanga, Cuttack-08..";

class Weather {
  final String windSpeed;
  final String precipitation;
  final String sunriseSunset;
  final String humidity;
  final String uvIndex;
  final String moonPhase;
  final String dewPoint;
  final String visibility;

  Weather({
    required this.windSpeed,
    required this.precipitation,
    required this.sunriseSunset,
    required this.humidity,
    required this.uvIndex,
    required this.moonPhase,
    required this.dewPoint,
    required this.visibility,
  });
}

class Parameter {
  final List<Weather> sign;
  final List<Weather>? name;
  final List<Weather> value;
  final List<Weather>? unit;

  Parameter(
    this.sign,
    this.name,
    this.value,
    this.unit,
  );
}

// final List<Map<>> demo = [
//
//
//
//
// ];
final List<String> crops = [
  'rice',
  'maize',
  'coffee',
  'jute',
  'cotton',
  'coconut',
  'papaya',
  'orange',
  'apple',
  'muskmelon',
  'watermelon',
  'grapes',
  'mango',
  'banana',
  'pomegranate',
  'lentil',
  'chickpea',
  'pigeonpeas',
  'mothbeans',
  'mungbean',
  'blackgram'
];
final List<String> season = [
  'summer',
  'rainy',
  'autumn',
  'dew',
  'winter',
  'spring'
];
final List<String> states = ['Odisha', 'West bangle'];

class Soil {
  final String crop;
  final double npk;
  final double ph;
  final double soilMoisture;
  final double temp;
  final double humidity;

  Soil(this.crop, this.npk, this.ph, this.soilMoisture, this.temp,
      this.humidity);
}
