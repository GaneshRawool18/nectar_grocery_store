import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/beverages_page.dart';
import 'package:nectar/view/find_products.dart';
import 'package:nectar/view/place_order.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
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
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Favourite",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Divider(),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Image.asset("assets/images/sprit.png"),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sprite Can",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: const Color.fromARGB(
                                            255, 10, 10, 10)),
                                  ),
                                  Text(
                                    "325ml, Price",
                                    style: GoogleFonts.dmSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromARGB(
                                            255, 176, 176, 174)),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "\$1.50",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          indent: 20,
                          endIndent: 20,
                        )
                      ],
                    );
                  }),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const PlaceOrder();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 364,
                  height: 67,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromRGBO(83, 177, 117, 1)),
                  child: Center(
                      child: Text(
                    "Add All To Cart",
                    style: GoogleFonts.dmSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 249, 255, 1)),
                  )),
                ),
              ),
            ),
          ],
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
          const BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
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
