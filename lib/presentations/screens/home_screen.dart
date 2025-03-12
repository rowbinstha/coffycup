import 'package:coffycup/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, dynamic>> newInCoffees = [
    {
      "name": "Caramel Macchiato",
      "price": 4.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Vanilla Latte",
      "price": 3.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "White Choco Mocha",
      "price": 5.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "White Mocha",
      "price": 9.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caramel Macchiato",
      "price": 4.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Vanilla Latte",
      "price": 3.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "White Choco Mocha",
      "price": 5.00,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "White Mocha",
      "price": 9.00,
      "image": "lib/assets/images/vanilla.png"
    },
  ];

  final List<Map<String, dynamic>> frequentlyOrdered = [
    {
      "name": "Caramel Macchiato",
      "size": "Large, Oat milk",
      "price": 6.70,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Almond milk",
      "price": 7.80,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Oat milk",
      "price": 3.40,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Almond milk",
      "price": 9.30,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caramel Macchiato",
      "size": "Large, Oat milk",
      "price": 6.70,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Almond milk",
      "price": 7.80,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Oat milk",
      "price": 3.40,
      "image": "lib/assets/images/vanilla.png"
    },
    {
      "name": "Caffe Mocha",
      "size": "Large, Almond milk",
      "price": 9.30,
      "image": "lib/assets/images/vanilla.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section with Background Image & Search Bar
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2E384D),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: const DecorationImage(
                      image: AssetImage("lib/assets/images/top_img.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 16, top: 30),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Let's get you registered! \nYour cafe CoffyCup Cafe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.sliders,
                              color: Colors.grey, size: 18),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            decoration: const InputDecoration(
                              hintText: "Search...",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.magnifyingGlass,
                              color: Colors.grey, size: 18),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // New In Section (Horizontal Scroll)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "New in",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Padding(
                padding: EdgeInsets.only(left: 8), // Add left margin
                child: PageView.builder(
                  itemCount: newInCoffees.length,
                  controller: PageController(
                    viewportFraction: 0.45,
                    initialPage: 0,
                  ),
                  padEnds: false,
                  itemBuilder: (context, index) {
                    final coffee = newInCoffees[index];
                    return Padding(
                      padding:
                          EdgeInsets.only(right: 10), // Spacing between items
                      child: CoffeeCard(coffee: coffee),
                    );
                  },
                ),
              ),
            ),
            // Frequently Ordered Section (Vertical List)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: const Text(
                "Frequently ordered",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 300, // Set a fixed height for the ListView
              child: Padding(
                padding: EdgeInsets.only(top: 8),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics:
                      ClampingScrollPhysics(), // Allows scrolling within the ListView
                  itemCount: frequentlyOrdered.length,
                  itemBuilder: (context, index) {
                    final coffee = frequentlyOrdered[index];
                    return CoffeeListItem(coffee: coffee);
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 243, 146, 0),
        unselectedItemColor: const Color.fromARGB(255, 179, 179, 179),
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookOpen), label: "Menu"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heart), label: "Favorites"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user), label: "Profile"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cartShopping), label: "Cart"),
        ],
      ),
    );
  }
}

// Coffee Card (For Horizontal Scroll)
class CoffeeCard extends StatefulWidget {
  final Map<String, dynamic> coffee;

  const CoffeeCard({super.key, required this.coffee});

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 248, 248, 248),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            clipBehavior: Clip
                .none, // Allow the Positioned widget to extend beyond the bounds
            children: [
              Column(
                children: [
                  Container(
                    height: 110,
                    width: 125,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 214, 214, 214), // Background color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Image.asset(widget.coffee["image"], height: 100),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(widget.coffee["name"],
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
              Positioned(
                bottom: 1, // Position the price near the bottom
                left: 5, // Position it near the left side
                child: Text(
                  "\$${widget.coffee["price"]}",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ),
              // This Positioned widget is now relative to the card and should stay inside it
              Positioned(
                bottom: -10, // Place it at the top of the container
                right: -12, // Place it at the right side
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: btnbgcolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () {},
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

// Coffee List Item (For Vertical List)
class CoffeeListItem extends StatefulWidget {
  final Map<String, dynamic> coffee;

  const CoffeeListItem({super.key, required this.coffee});

  @override
  State<CoffeeListItem> createState() => _CoffeeListItemState();
}

class _CoffeeListItemState extends State<CoffeeListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 248, 248),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              ListTile(
                contentPadding: EdgeInsets.only(
                  left: 85,
                  right: 16,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.coffee["name"],
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold)),
                    Text(widget.coffee["size"],
                        style:
                            const TextStyle(fontSize: 10, color: Colors.grey)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("\$${widget.coffee["price"]}",
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red)),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        255, 214, 214, 214), // Background color
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(widget.coffee["image"], height: 60),
                ),
              ),
              Positioned(
                bottom: 0, // Place it at the top of the container
                right: 0, // Place it at the right side
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: btnbgcolor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () {},
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
