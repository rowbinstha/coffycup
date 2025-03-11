import 'package:coffycup/core/constants.dart';
import 'package:coffycup/presentations/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("lib/assets/images/coffy_img.png"),
          SizedBox(
            height: 30,
          ),
          Image.asset("lib/assets/images/wc_img.png", height: 300),
          Text(
            "Welcome to",
            style: GoogleFonts.lobster(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Text(
            "CoffyCup",
            style: GoogleFonts.lobster(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Wrap inside a Builder widget to use the correct context
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: btnbgcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18, color: btntext),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
