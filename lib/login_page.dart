import 'package:agro_tech/constants.dart';
import 'package:agro_tech/otp_var_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

late final String phone_no;

class LoginPage extends StatefulWidget{
  const LoginPage({super.key,required this.isFarmer});
  final bool isFarmer;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller  = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double inputBoxWidth = MediaQuery.of(context).size.width * 0.7 ;

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
                    'Login',
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
                        CustomInputField2(
                          height: 60,
                          width: inputBoxWidth,
                          color: const Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: const ImageIcon(AssetImage("lib/assets/icons/Phone.png")),
                          hintText: 'Mobile number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile no';
                            }
                            if (value.length != 10 ) {
                              return 'Invalid mobile number';
                            }
                            return null;
                          },

                        ),

                        const SizedBox(height: 32),
                        SizedBox(
                          width: inputBoxWidth,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              phone_no = _controller.text;
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                  return const OtpPage();
                                }
                                ));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: themeColor,

                              textStyle: const TextStyle(fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const Text('Get OTP',style: TextStyle(color: Colors.white),),
                          ),
                        ),

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

class CustomInputField2 extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderWidth;
  final Widget prefixIcon;
  final String hintText;
  final String? Function(String?)? validator;
  final String? Function(String?)? saveFunction;


  CustomInputField2({
    this.height = 50,
    this.width = 150,
    this.borderWidth = 1,
    this.color = Colors.grey,
    required this.prefixIcon,
    required this.hintText,
    this.validator,
    this.saveFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: color, width: borderWidth),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          children: [
            prefixIcon != null?
            Theme(
              data: ThemeData(iconTheme: IconThemeData(color: color)),
              child: prefixIcon,
            ): Container(),
            const SizedBox(width: 10.0),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: color)
                ),
                onSaved: saveFunction,
                validator: validator,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
