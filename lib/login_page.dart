import 'package:agro_tech/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset("lib/assets/farmer.png"),
                  ),
                  const SizedBox(height: 50),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //

                        CustomInputField(
                          height: 60,
                          width: _input_box_width,
                          color: Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: ImageIcon(AssetImage("lib/assets/icons/Phone.png")),
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
                        const SizedBox(height: 16),
                        CustomInputField(
                          height: 60,
                          width: _input_box_width,
                          color: Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: ImageIcon(AssetImage("lib/assets/icons/Lock.png")),
                          hintText: 'Password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                            // if (value.length != 10 ) {
                            //   return 'Invalid mobile number';
                            // }
                            return null;
                          },
                        ),
                        SizedBox(height: 10,),
                        Positioned(
                            right: 0,
                            child:Text("Forgot password ?",style: TextStyle(color:Color(0xff91AF82)),)
                        ),
                        const SizedBox(height: 32),
                        Container(
                          width: _input_box_width,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {

                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff4A6B3E),
                              // padding:  EdgeInsets.symmetric(
                              //     horizontal:_input_box_width*0.4,
                              //     vertical: 20
                              // ),
                              textStyle: const TextStyle(fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const Text('Log in',style: TextStyle(color: Colors.white),),
                          ),

                        ),
                        SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (builder) => RegisterPage()));
                          },
                            child: Text("Don't have an account ?",style: TextStyle(color:Color(0xff91AF82)),))
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