import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Hi Shyam!",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            ScrollableAdWidget(
              height: 200,
                ads: ads),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Market View",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
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
                  const SizedBox(height: 16),
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
                  const SizedBox(height: 32),
                  const Text(
                    "Popular Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
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
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 80,
              width: 80,
            ),
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
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;

  const CategoryItem({Key? key, required this.image}) : super(key: key);

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
    Key? key,
    required this.ads,
    this.height = 100.0,
  }) : super(key: key);

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
    return Container(
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

final List<Widget> ads=[
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
        Container(
          child: Image.asset('lib/assets/ads1.png'),
        ),

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
          Container(
            child: Image.asset('lib/assets/ads1.png'),
          )
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
          Container(
            child: Image.asset('lib/assets/ads1.png'),
          )
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
          Container(
            child: Image.asset('lib/assets/ads1.png'),
          )
        ],
      ),
    ),
  )
];