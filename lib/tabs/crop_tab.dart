import 'package:flutter/material.dart';

import '../constants.dart';



class CropTab extends StatefulWidget {
  const CropTab({super.key, required this.title});

  final String title;

  @override
  State<CropTab> createState() => _CropTabState();
}

class _CropTabState extends State<CropTab> {
  final _formKey = GlobalKey<FormState>();
  final String location = "S Block 17, Bodhanga, Cuttack-08..";
  final _phController = TextEditingController();
  final _npkController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _phController.text = 'John Doe'; // Pre-fill from your data source
    _npkController.text = 'john.doe@example.com';
  }

  @override
  void dispose() {
    _phController.dispose();
    _npkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context ).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
        toolbarHeight:screenHeight*0.1,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("AgroTech",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            Text(location,style: const TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold))
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
              const Align(alignment: Alignment.center,
                child: Text(
                  'Top Crop Picker',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Form(
                key: _formKey,
                  child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButtonFormField<String>(

                          decoration: const InputDecoration(
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
                      const SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            controller: _npkController,
                            decoration: const InputDecoration(
                              labelText: 'NPK Values',
                            ),

                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                            controller: _phController,
                            decoration: const InputDecoration(
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
                      const SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Soil Moisture',
                            ),

                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(

                            decoration: const InputDecoration(
                              labelText: 'Temperature',
                            ),

                          )
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Humidity',
                            ),

                          )
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Process form data (e.g., send to a server)
                          // print('Name: ${_phController.text}');
                          // print('Email: ${_npkController.text}');
                        }

                      },
                      child: const Text('Auto-fill Data'),
                    ),
                  ),
                ],
              )),
              const SizedBox(height: 32),
              const Text(
                'Crops Recommendation List',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              
              const Card(
                color: themeColor2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
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
              const SizedBox(height: 16),
              const Card(
                color: themeColor2,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
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
              const SizedBox(height: 32),
              const Text(
                'Yield Booster',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Land Area (hectares)',
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'State Name',
                ),
                items: states
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (value) {

                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
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
              const SizedBox(height: 16),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Expected Production (tons)',
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Selected Season',
                ),
                items: season
                    .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 32),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Yield Optimization Results',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Yield Optimization Results',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 16),

            ],
          ),
        ),
      ),
    );
  }
}
