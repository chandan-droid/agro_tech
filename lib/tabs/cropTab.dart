import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';



class CropTab extends StatefulWidget {
  CropTab({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CropTabState createState() => _CropTabState();
}

class _CropTabState extends State<CropTab> {
  final _formKey = GlobalKey<FormState>();
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
  final _cropController = TextEditingController();
  final _npkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _cropController.text = 'John Doe'; // Pre-fill from your data source
    _npkController.text = 'john.doe@example.com';
  }

  @override
  void dispose() {
    _cropController.dispose();
    _npkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context ).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.center,
                child: Text(
                  'Top Crop Picker',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Form(
                key: _formKey,
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(

                          decoration: InputDecoration(
                            labelText: 'Selected Crop',
                          ),
                          items: crops
                              .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                              .toList(),
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            controller: _npkController,
                            decoration: InputDecoration(
                              labelText: 'NPK Values',
                            ),

                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                            controller: _cropController,
                            decoration: InputDecoration(
                              labelText: 'pH Level',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },

                          )
                      ),
                      SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Soil Moisture',
                            ),

                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(

                            decoration: const InputDecoration(
                              labelText: 'Temperature',
                            ),

                          )
                      ),
                      SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Humidity',
                            ),

                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process form data (e.g., send to a server)
                        print('Name: ${_cropController.text}');
                        print('Email: ${_npkController.text}');
                      }

                    },
                    child: Text('Auto-fill Data'),
                  ),
                ],
              )),
              SizedBox(height: 32),
              Text(
                'Crops Recommendation List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wheat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Ideal for nitrogen-rich soil and moderate temperature.'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arhar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Arhar thrives in well-drained soils with a pH of 6.0-7.5 and temperatures of 25°C-35°C.'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Yield Booster',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Land Area (hectares)',
                ),
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'State Name',
                ),
                items: ['Odisha', 'West bengle']
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Selected Crop',
                ),
                items: crops
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Expected Production (tons)',
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Expected Production (tons)',
                  ),
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Yield Optimization Results',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}