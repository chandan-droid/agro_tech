
import 'dart:io';
import 'package:agro_tech/constants.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerPage extends StatefulWidget {
  const SellerPage({super.key});

  @override
  State<SellerPage> createState() => _SellerPageState();
}

class _SellerPageState extends State<SellerPage> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  void pickFile() async{
    try{
      result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: false
      );

      if(result!=null){
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());
      }
      setState(() {
        isLoading = false;
      });
    }catch(error){
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Sell My Crops',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Outfit',
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.store_outlined),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoardPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[

                  const Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text('Crop Details', style: TextStyle(fontFamily: 'Outfit', fontSize: 25, fontWeight: FontWeight.bold),),),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width - 20,
                    padding:const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(color:themeColor3,borderRadius: BorderRadius.circular(5.0),),
                    child:TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Crop Name',
                          hintStyle: TextStyle(color: themeColor)),
                    )
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding:const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(color:themeColor3,borderRadius: BorderRadius.circular(5.0),),
                      child:TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Quantity',
                            hintStyle: TextStyle(color: themeColor)),
                      )
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding:const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(color:themeColor3,borderRadius: BorderRadius.circular(5.0),),
                      child:TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Price per Kg',
                            hintStyle: TextStyle(color: themeColor)),
                      )
                  ),
                  const SizedBox(height: 15),
                  InkWell(
                    onTap: (){
                      pickFile();
                      },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color:themeColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Center(
                        child: Text('Upload Photos', style: TextStyle(fontFamily: 'Outfit', fontSize: 19, color: Colors.white, fontWeight: FontWeight.w400,)),
                      ),
                    ),
                  ),
                  if(pickedfile!=null)
                      SizedBox(
                        height: 400,
                        width: 500,
                        child: Image.file(fileToDisplay!),
                      ),

              const SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width - 20,
                  height: 100,
                  padding:const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: themeColor1, width: 3.0),
                    borderRadius: BorderRadius.circular(5.0),),
                  child:TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add description...',
                        hintStyle: TextStyle(color: themeColor)),
                  )
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){

                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 20,
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(color: themeColor, borderRadius: BorderRadius.circular(8.0),),
                  child: const Center(
                    child: Text('Submit', style: TextStyle(fontFamily: 'Outfit', fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400,),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

class DashBoardPage extends StatefulWidget {
  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  double onOfProduct = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'My Products',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Outfit',
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(color: themeColor, borderRadius: BorderRadius.circular(25.0),),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.add_circle_outline,color: Colors.white,),

                      Text('Add Products',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              StoreItem(image: 'lib/assets/products/rice.png', title: "Rice", price: "40",quantity: '400',),
              StoreItem(image: 'lib/assets/products/mango.png', title: "Mango", price: "50",quantity: '100',),
              StoreItem(image: 'lib/assets/products/jackfruit.png', title: "Jackfruit", price: "10",quantity: '200',),
              StoreItem(image: 'lib/assets/products/tamato.png', title: "Tamato", price: "20",quantity: '200',)

            ],
          ),
        ),
      )
    );
  }
}
class StoreItem extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String quantity;


  const StoreItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.quantity,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: themeColor2,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 80,
                width: 80,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$quantity kg',
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    '₨ $price/kg ',
                    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              Expanded(
                child:Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    backgroundColor: themeColor.withOpacity(0.5),
                    radius: 20,
                    child: IconButton(
                    icon: Icon(Icons.delete),
                    color: themeColor,
                    onPressed: () {

                    },
                    ),
                  ),
                )
              )
            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}
