import 'package:coffycup/core/constants.dart';
import 'package:coffycup/presentations/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  const RegisterForm({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.confirmPasswordController,
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
              labelText: "Full Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: filcolor,
            ),
          ),
          const SizedBox(height: 20),
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
          const SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              suffixIcon: const Icon(Icons.visibility_off),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: filcolor,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 151),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: const Text(
              "Register",
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
                "--------------- Or Register with ---------------",
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
            height: 100,
          ),
        ],
      ),
    );
  }
}
