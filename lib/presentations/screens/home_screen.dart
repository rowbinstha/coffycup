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
              child: const Text("New in",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: newInCoffees.length,
                controller: PageController(viewportFraction: 0.4),
                itemBuilder: (context, index) {
                  final coffee = newInCoffees[index];
                  return CoffeeCard(coffee: coffee);
                },
              ),
            ),

            // Frequently Ordered Section (Vertical List)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              child: const Text("Frequently ordered",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: frequentlyOrdered.length,
              itemBuilder: (context, index) {
                final coffee = frequentlyOrdered[index];
                return CoffeeListItem(coffee: coffee);
              },
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
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
class CoffeeCard extends StatelessWidget {
  final Map<String, dynamic> coffee;

  const CoffeeCard({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
        shadowColor: Colors.grey.withOpacity(0.2),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100, // Background color
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Image.asset(coffee["image"], height: 100),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(coffee["name"],
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Text("\$${coffee["price"]}",
                          style:
                              const TextStyle(color: Colors.red, fontSize: 16)),
                      const SizedBox(width: 40),
                    ],
                  ),
                ],
              ),
              Positioned(
                bottom: -10,
                right: -10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.circlePlus,
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
class CoffeeListItem extends StatelessWidget {
  final Map<String, dynamic> coffee;

  const CoffeeListItem({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(coffee["image"], height: 60),
      title: Text(coffee["name"],
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      subtitle: Text(coffee["size"],
          style: const TextStyle(fontSize: 14, color: Colors.grey)),
      trailing: Text("\$${coffee["price"]}",
          style: const TextStyle(fontSize: 16, color: Colors.red)),
    );
  }
}
