import 'package:flutter/material.dart';



class Sellerpage extends StatelessWidget {
  const Sellerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const MyAppBar(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text('Crop Details', style: TextStyle(fontFamily: 'Outfit', fontSize: 25, fontWeight: FontWeight.bold),),),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding:const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(color:const Color(0xffDFEED7),borderRadius: BorderRadius.circular(5.0),),
                      child:const Text('Crop Name', style: TextStyle(fontFamily: 'Outfit', fontSize: 18, color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(color: Color(0xffDFEED7), borderRadius: BorderRadius.circular(5.0),),
                      child: Text('Quantity', style: TextStyle(fontFamily: 'Outfit', fontSize: 18, color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(color: Color(0xffDFEED7), borderRadius: BorderRadius.circular(5.0),),
                      child: Text('Price per kg', style: TextStyle(fontFamily: 'Outfit',fontSize: 18, color: Colors.black,),),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xff4A6B3E),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text('Upload Photos', style: TextStyle(fontFamily: 'Outfit', fontSize: 19, color: Colors.white, fontWeight: FontWeight.w100,)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 3.0,), borderRadius: BorderRadius.circular(5.0),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wheat', style: TextStyle(fontFamily: 'Outfit',fontWeight: FontWeight.bold, fontSize: 20,),),
                        SizedBox(height: 8.0),
                        Text('Farm-Fresh Wheat: High-quality and nutrient-rich', style: TextStyle(fontSize: 12,), textAlign: TextAlign.left,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 3.0,), borderRadius: BorderRadius.circular(5.0),),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Tomatoes', style: TextStyle(fontFamily: 'Outfit',fontWeight: FontWeight.bold, fontSize: 20,),),
                        SizedBox(height: 8.0),
                        Text('Freshly Picked from the farm', style: TextStyle(fontSize: 12,), textAlign: TextAlign.left,),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(color: Color(0xff4A6B3E), borderRadius: BorderRadius.circular(8.0),),
                child: Center(
                  child: Text('Submit', style: TextStyle(fontFamily: 'Outfit', fontSize: 18,color: Colors.white,fontWeight: FontWeight.w100,),),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Sell My Crops',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 45,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
          SizedBox(width: 48),
        ],
      ),
    );
  }
}
