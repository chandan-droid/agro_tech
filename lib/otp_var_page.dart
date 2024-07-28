import 'package:agro_tech/constants.dart';
import 'package:agro_tech/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'layout.dart';

final double otp = 1111;

class OtpPage extends StatefulWidget{
  const OtpPage({super.key});
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    double _input_box_width = MediaQuery.of(context).size.width * 0.7 ;

    return Material(
      child: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                "lib/assets/login page farmer.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              heightFactor:1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff4A6B3E),
                    ),
                  ),
                  const SizedBox(height: 50),
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset("lib/assets/farmer.png"),
                  ),

                  const SizedBox(height: 50),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [

                        OtpTextField(
                          numberOfFields: 4,
                          fieldWidth: 37,
                          fieldHeight: 50,
                          showFieldAsBox: true,
                          borderColor: themeColor,
                          borderWidth: 1.5,
                          borderRadius: BorderRadius.circular(10),
                          keyboardType: TextInputType.number,
                          onSubmit: (gotOtp){

                          },

                        ),

                        const SizedBox(height: 32),
                        Container(
                          width: _input_box_width,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                  return Layout();
                                }
                                ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: themeColor,
                              // padding:  EdgeInsets.symmetric(
                              //     horizontal:_input_box_width*0.4,
                              //     vertical: 20
                              // ),
                              textStyle: const TextStyle(fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const Text('Login',style: TextStyle(color: Colors.white),),
                          ),

                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}


