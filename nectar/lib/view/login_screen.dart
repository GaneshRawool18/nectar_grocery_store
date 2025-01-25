import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar/view/home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/carrot.png",
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Loging",
              style:
                  GoogleFonts.dmSans(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            Text(
              "Enter your emails and password",
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(124, 124, 124, 1)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(124, 124, 124, 1)),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter email",
                hintStyle: GoogleFonts.dmSans(
                  fontSize: 16,
                  color: const Color.fromRGBO(124, 124, 124, 1),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: GoogleFonts.dmSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(124, 124, 124, 1)),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, right: 50),
                  child: TextField(
                    controller: passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      border: InputBorder.none,
                      hintStyle: GoogleFonts.dmSans(
                        fontSize: 16,
                        color: const Color.fromRGBO(124, 124, 124, 1),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color.fromARGB(255, 170, 170, 169),
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Spacer(),
                Text(
                  "Forgot Password?",
                  style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(24, 23, 37, 1)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) {
                  return const HomePage();
                }));
              },
              child: Container(
                width: 364,
                height: 67,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(83, 177, 117, 1)),
                child: Center(
                    child: Text(
                  "Log In",
                  style: GoogleFonts.dmSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(255, 249, 255, 1)),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: GoogleFonts.dmSans(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Singup",
                    style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(83, 177, 117, 1)),
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
