import 'package:coffycup/core/constants.dart';
import 'package:coffycup/presentations/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignInForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: filcolor,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: const Icon(Icons.visibility_off),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: filcolor,
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.orange, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 163),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 18, color: btntext),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "--------------- Or login with ---------------",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: btnbgcolor, // Background color

                  borderRadius:
                      BorderRadius.circular(10), // Optional: rounded corners
                ),
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 20), // Space between icons
              Container(
                decoration: BoxDecoration(
                  color: btnbgcolor, // Background color

                  borderRadius:
                      BorderRadius.circular(10), // Optional: rounded corners
                ),
                child: IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.googlePlusG,
                    color: Colors.white, // You can use red color for Google
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}
