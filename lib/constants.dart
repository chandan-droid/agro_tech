import 'dart:ui';

import 'package:flutter/material.dart';

const themeColor = Color(0xff4A6B3E);
const themeColor1 = Color(0xffA2C392);
const themeColor2 = Color(0xffCFEBC1);
const themeColor3 = Color(0xffCFF3BE);

//Location
final String location = "S Block 17, Bodhanga, Cuttack-08..";

class Weather {
  final String wind_speed;
  final String precipitation;
  final String sunrise_sunset;
  final String humidity;
  final String uv_index;
  final String moon_phase;
  final String dew_point;
  final String visibility;


  Weather({
    required this.wind_speed,
    required this.precipitation,
    required this.sunrise_sunset,
    required this.humidity,
    required this.uv_index,
    required this.moon_phase,
    required this.dew_point,
    required this.visibility,

  });
}
class Parameter{
  final List<Weather> sign;
  final List<Weather>? name;
  final List<Weather> value;
  final List<Weather>? unit;

  Parameter(
      this.sign, this.name, this.value, this.unit,

      );

}

// final List<Map<>> demo = [
//
//
//
//
// ];
final List<String>crops=['rice','maize','coffee', 'jute', 'cotton' ,'coconut' ,'papaya' ,'orange' ,'apple' ,'muskmelon' ,'watermelon' ,'grapes' ,'mango' ,'banana' ,'pomegranate' ,'lentil' ,'chickpea' ,'pigeonpeas', 'mothbeans', 'mungbean', 'blackgram' ];
final List<String>season=['summer','rainy','autumn','dew','winter','spring'];
final List<String>states=['Odisha', 'West bangle'];
class Soil{
  final String crop;
  final double npk;
  final double ph;
  final double soil_moisture;
  final double temp;
  final double humidity;

  Soil(this.crop, this.npk, this.ph, this.soil_moisture, this.temp, this.humidity
      );

}