import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                color: Color.fromRGBO(242, 243, 241, 1)),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Icon(Icons.upload_file)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image.asset("assets/images/apple.png"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text(
                  "Naturel Red Apple",
                  style: GoogleFonts.dmSans(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                const Icon(Icons.favorite_border_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "1kg, Price",
              style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(124, 124, 124, 1)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Icon(Icons.horizontal_rule),
                ),
                Container(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: const Color.fromRGBO(253, 255, 254, 1),
                        border: Border.all(width: 0.2)),
                    child: Text("$count")),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.add,
                    color: Color.fromRGBO(83, 177, 117, 1),
                  ),
                ),
                const Spacer(),
                Text(
                  "\$4.99",
                  style: GoogleFonts.dmSans(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            indent: 40,
            endIndent: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Product Detail",
              style:
                  GoogleFonts.dmSans(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Text(
              "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a\n healtful and varied diet.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been 1500s, but also the leap into electronic typesetting, remaining essentially unchanged.",
              style: GoogleFonts.dmSans(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(124, 124, 124, 1)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Container(
              width: 364,
              height: 50,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(83, 177, 117, 1)),
              child: Center(
                  child: Text(
                "Add To Basket",
                style: GoogleFonts.dmSans(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 249, 255, 1)),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
