import 'package:agro_tech/layout.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double inputBoxWidth = MediaQuery.of(context).size.width * 0.7;

    return Material(
      child: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                "lib/assets/reg page farmer.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Center(
              heightFactor: 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff4A6B3E),
                    ),
                  ),
                  const SizedBox(height: 70),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //
                        CustomInputField(
                          height: 60,
                          width: inputBoxWidth,
                          color: const Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: const ImageIcon(
                              AssetImage("lib/assets/icons/User.png")),
                          hintText: 'Full name',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your full name';
                            }
                            // if (!value.contains('@')) {
                            //   return 'Invalid email address';
                            // }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        CustomInputField(
                          height: 60,
                          width: inputBoxWidth,
                          color: const Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: const ImageIcon(
                              AssetImage("lib/assets/icons/Phone.png")),
                          hintText: 'Mobile number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your mobile no';
                            }
                            if (value.length != 10) {
                              return 'Invalid mobile number';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        CustomInputField(
                          height: 60,
                          width: inputBoxWidth,
                          color: const Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: const ImageIcon(
                              AssetImage("lib/assets/icons/Lock.png")),
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
                        const SizedBox(height: 16),
                        CustomInputField(
                          height: 60,
                          width: inputBoxWidth,
                          color: const Color(0xff91AF82),
                          borderWidth: 2,
                          prefixIcon: const ImageIcon(
                              AssetImage("lib/assets/icons/Lock.png")),
                          hintText: 'Re-enter password',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please re-enter password';
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
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (builder) => const Layout()));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff4A6B3E),
                              // padding:  EdgeInsets.symmetric(
                              //     horizontal:_input_box_width*0.4,
                              //     vertical: 20
                              // ),
                              textStyle: const TextStyle(fontSize: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            child: const Text(
                              'Sign up',
                              style: TextStyle(color: Colors.white),
                            ),
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

class CustomInputField extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final double borderWidth;
  final Widget prefixIcon;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomInputField({
    super.key,
    this.height = 50,
    this.width = 150,
    this.borderWidth = 1,
    this.color = Colors.grey,
    required this.prefixIcon,
    required this.hintText,
    this.validator,
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
            Theme(
              data: ThemeData(iconTheme: IconThemeData(color: color)),
              child: prefixIcon,
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: color)),
                validator: validator,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
