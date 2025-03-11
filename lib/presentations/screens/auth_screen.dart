import 'package:coffycup/presentations/screens/login_screen.dart';
import 'package:coffycup/presentations/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isSignIn = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TOP SECTION WITH IMAGE AND TABS
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Background Image with Rounded Bottom
                Container(
                  height: 170,
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10), // Adjust for alignment
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        isSignIn
                            ? "Let's get you signed in!"
                            : "Let's get you registered!",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                // Overlapping Tabs Container
                Positioned(
                  bottom: -20, // Adjust this value to control overlap
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      // height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildTabButton("Sign in", isSignIn, true),
                          _buildTabButton("Register", !isSignIn, false),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30), // Added space to prevent overlap issue
            isSignIn
                ? SignInForm(
                    emailController: emailController,
                    passwordController: passwordController,
                  )
                : RegisterForm(
                    emailController: emailController,
                    passwordController: passwordController,
                    confirmPasswordController: confirmPasswordController,
                  ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isSignIn
                          ? Row(
                              children: [
                                const Text("Don't have an account? "),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignIn = false;
                                    });
                                  },
                                  child: const Text(
                                    "Register Here",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                const Text("Already have an account? "),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSignIn = true;
                                    });
                                  },
                                  child: const Text(
                                    "Login Here",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
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

  Widget _buildTabButton(String text, bool isActive, bool signIn) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSignIn = signIn;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
