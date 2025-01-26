import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/beverages_page.dart';
import 'package:nectar/view/favourite_page.dart';
import 'package:nectar/view/home_page.dart';

class FindProducts extends StatefulWidget {
  const FindProducts({super.key});

  @override
  State<FindProducts> createState() => _FindProductsState();
}

class _FindProductsState extends State<FindProducts> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Find Products",
                  style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(24, 23, 27, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 364,
                  height: 52,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(242, 243, 242, 1),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 2,
                            blurStyle: BlurStyle.outer,
                            color: Color.fromARGB(255, 200, 199, 199))
                      ]),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Search Store",
                          style: GoogleFonts.dmSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 170, 170, 169)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(83, 177, 117, 0.8)),
                        color: const Color.fromRGBO(83, 177, 117, 0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/fruits.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Frash Fruits\n& Vegetable",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(248, 164, 76, 0.7)),
                        color: const Color.fromRGBO(248, 164, 76, 0.1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/oil.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Cooking Oil\n   & Ghee",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(247, 165, 147, 1)),
                        color: const Color.fromRGBO(247, 165, 147, 0.25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/chicken.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Meat & Fish",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(211, 176, 224, 1)),
                        color: const Color.fromRGBO(211, 176, 224, 0.25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/sweet.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Bakery & Snacks",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(253, 229, 152, 1)),
                        color: const Color.fromRGBO(253, 229, 152, 0.25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/eggs.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Dairy & Eggs",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(183, 223, 241, 1)),
                        color: const Color.fromRGBO(183, 223, 241, 0.15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/cold_drinks.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Beverages",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(131, 106, 246, 1)),
                        color: const Color.fromRGBO(131, 106, 246, 0.15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/fruits.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Frash Fruits\n& Vegetable",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 189,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            width: 0.4,
                            color: const Color.fromRGBO(215, 59, 119, 1)),
                        color: const Color.fromRGBO(215, 59, 119, 0.15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/oil.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Cooking Oil\n   & Ghee",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const HomePage();
                  }));
                },
                child: const Icon(Icons.storefront)),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const FindProducts();
                  }));
                },
                child: const Icon(Icons.explore)),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const BeveragesPage();
                  }));
                },
                child: const Icon(Icons.shopping_cart_outlined)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const FavouritePage();
                  }));
                },
                child: const Icon(Icons.favorite_outline_outlined)),
            label: 'Favourite',
          ),
        ],
      ),
    );
  }
}
