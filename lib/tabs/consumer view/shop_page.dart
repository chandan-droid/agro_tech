import 'package:agro_tech/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:star_rating/star_rating.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor:themeColor,
        foregroundColor: Colors.white,
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text(
          "Hi Shyam!",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, color: Colors.white),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(100, 40),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 48,
              width: MediaQuery.of(context).size.width * 0.96,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),

              child:TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white10,
                    filled: true,
                    labelText: "Search...",
                    labelStyle: TextStyle(color: Colors.white38),
                    prefixIcon: Icon(Icons.search,
                      color: Colors.white38,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                    )

                ),
              ),

            ),
          ),
        ),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: themeColor,
            ),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 40,
                child: Image.asset("lib/assets/consumer.png"),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: const Text('My Account'),
            onTap: () {
              Navigator.pushNamed(context, '/my_account');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Community'),
            onTap: () {
              Navigator.pushNamed(context, '/community');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log out'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),
                  Text(
                    "Popular Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 80,
                    child: Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CategoryItem(
                              image: 'lib/assets/products/mango.png',
                              name: 'vegetables',
                            ),
                            CategoryItem(
                              image: 'lib/assets/products/mango.png',
                              name: 'fruits',
                            ),
                            CategoryItem(
                              image: 'lib/assets/products/mango.png',
                              name: 'flowers',
                            ),
                            CategoryItem(
                              image: 'lib/assets/products/mango.png',
                              name: 'crops',
                            ),

                          ],
                        ),

                      ),
                    ),
                  ),
                  SnapList(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Market View",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: themeColor,
                        child: Icon(CupertinoIcons.right_chevron,color: Colors.white,size: 13,),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MarketItem(
                          image: 'lib/assets/products/mango.png',
                          title: 'Mango',
                          description: 'fresh mangos',
                          price: '100/- per kg',
                          rating: 4,
                        ),
                        SizedBox(width: 16),
                        MarketItem(
                          image: 'lib/assets/products/tomato.png',
                          title: 'Tomato',
                          description: 'fresh organic tamatos',
                          price: '150/- per kg',
                          rating: 4,
                        ),
                        SizedBox(width: 16),
                        MarketItem(
                          image: 'lib/assets/products/tomato.png',
                          title: 'Tomato',
                          description: 'fresh organic tamatos',
                          price: '150/- per kg',
                          rating: 4,
                        ),
                        SizedBox(width: 16),
                        MarketItem(
                          image: 'lib/assets/products/tamato.png',
                          title: 'Tomato',
                          description: 'fresh organic tamatos',
                          price: '150/- per kg',
                          rating: 4,
                        ),
                      ],
                    ),
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final double rating;

  const MarketItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth= MediaQuery.of(context).size.width;
    return SizedBox(
      height: 130,
      width: screenWidth*0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(image,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              Text(price,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
            ],
          ),
          Align(
              alignment:Alignment.centerLeft,
              child: Text(description,style: TextStyle(color: Colors.black.withOpacity(0.5),),softWrap: true,)),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: StarRating(
                  length: 5,
                  rating: rating,
                  starSize: 15,
                ),
              ),

              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                  color: themeColor,
                    child: Text('Buy',style: TextStyle(color: Colors.white),))
              )
            ],
          ),


        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;


  const CategoryItem({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
              backgroundColor: Colors.transparent,
            ),
            Text(name),
          ],
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}




class SnapList extends StatefulWidget{
  @override
  State<SnapList> createState() => _SnapListState();
}

class _SnapListState extends State<SnapList> {
  List<String> adList = [
    'lib/assets/homepage.png',
    'lib/assets/homepage.png',
    'lib/assets/homepage.png',
    'lib/assets/homepage.png'
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: 200,
        width: screenWidth,
        child: ScrollSnapList(itemBuilder: _buildItemList,
            shrinkWrap: true,
            itemCount: adList.length,
            itemSize:screenWidth ,
            onItemFocus: (index){}
        ),
      ),
    );
  }
  Widget _buildItemList(BuildContext context, int index) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 12,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(adList[index],fit: BoxFit.cover,),
                )
            );
    }
}

