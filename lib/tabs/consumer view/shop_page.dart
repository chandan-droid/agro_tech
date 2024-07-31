import 'package:agro_tech/constants.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

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
        backgroundColor:themeColor,
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
        ],
      ),
      drawer: NavigationDrawer(
        indicatorColor: Colors.white,
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
           SizedBox(
             height: 200,
             child: ScrollSnapList(itemBuilder: _buildItemList,
                 itemCount: data.length,
                 itemSize:screenWidth ,
                 onItemFocus: (int){}),
           ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Market View",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MarketItem(
                        image: 'assets/images/mango.jpg',
                        title: 'Mango',
                        price: '100/- per kg',
                      ),
                      MarketItem(
                        image: 'assets/images/tomato.jpg',
                        title: 'Tomato',
                        price: '150/- per kg',
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MarketItem(
                        image: 'assets/images/jackfruit.jpg',
                        title: 'Jackfruit',
                        price: '170/- per kg',
                      ),
                      MarketItem(
                        image: 'assets/images/rice.jpg',
                        title: 'Rice',
                        price: '30/- per kg',
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    "Popular Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItem(
                        image: 'assets/images/beans.jpg',
                      ),
                      CategoryItem(
                        image: 'assets/images/rice_field.jpg',
                      ),
                    ],
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
  final String price;

  const MarketItem({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 80,
              width: 80,
            ),
            Column(
              children: [
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  price,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;

  const CategoryItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(image),
      ),
    );
  }
}

class ScrollableAdWidget extends StatefulWidget {
  final List<Widget> ads;
  final double height;

  const ScrollableAdWidget({
    super.key,
    required this.ads,
    this.height = 100.0,
  });

  @override
  State<ScrollableAdWidget> createState() => _ScrollableAdWidgetState();
}

class _ScrollableAdWidgetState extends State<ScrollableAdWidget> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.ads.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Transform.scale(
              scale: index == _pageController!.page!
                  ? 1.0
                  : 0.9, // Scale down inactive ads
              child: widget.ads[index],
            ),
          );
        },
      ),
    );
  }
}

final List<Widget> ads = [
  Container(
    padding: const EdgeInsets.all(8),
    color: Colors.green,
    child: Row(
      children: [
        const Column(
          children: [
            Text(
              "Discount",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "25%",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "All vegetables & Fruits",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Image.asset('lib/assets/ads1.png'),
      ],
    ),
  ),
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green,
      child: Row(
        children: [
          const Column(
            children: [
              Text(
                "Discount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "25%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "All vegetables & Fruits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Image.asset('lib/assets/ads1.png')
        ],
      ),
    ),
  ),
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green,
      child: Row(
        children: [
          const Column(
            children: [
              Text(
                "Discount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "25%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                "All vegetables & Fruits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Image.asset('lib/assets/ads1.png')
        ],
      ),
    ),
  ),
  Expanded(
    child: Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green,
      child: Row(
        children: [
          const Column(
            children: [
              Text(
                "Discount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "25%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "All vegetables & Fruits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Image.asset('lib/assets/ads1.png')
        ],
      ),
    ),
  )
];

List<int> data = [
  10,9,8,7,6,5,4,3,2,1
];

Widget _buildItemList(BuildContext context, int index){
  return Expanded(
    child: Container(
      width: 400,
      padding: const EdgeInsets.all(8),
      color: themeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discount",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "25%",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "All vegetables & Fruits",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(width: 30,),
          Image.asset('lib/assets/ads1.png')
        ],
      ),
    ),
  );
}
