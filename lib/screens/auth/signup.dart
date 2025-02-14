import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nike_sneaker_store/screens/auth/login.dart';
import 'package:nike_sneaker_store/screens/auth/otp_verification.dart';
import 'dart:math';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureTextPassword = true;
  bool _obscureTextConfirmPassword = true;

  // Function to generate a random OTP
  List<String> _generateRandomOTP() {
    final random = Random();
    return List.generate(4, (_) => random.nextInt(10).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, left: 24.0, right: 24.0, bottom: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back button to navigate to the previous screen
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
            ),
            const SizedBox(height: 20),
            // Heading for the sign-up page
            const Center(
              child: Text(
                "Register Account!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Subheading with instructions
            const Center(
              child: Text(
                "Fill Your Details To Create An Account",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Text field for entering the name
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "John Doe",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Text field for entering the email address
            TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "xyz@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Text field for entering the password with visibility toggle
            TextField(
              obscureText: _obscureTextPassword,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureTextPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureTextPassword = !_obscureTextPassword;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Text field for confirming the password with visibility toggle
            TextField(
              obscureText: _obscureTextConfirmPassword,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureTextConfirmPassword
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureTextConfirmPassword =
                          !_obscureTextConfirmPassword;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Button to sign up
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  final otp = _generateRandomOTP();
                  Get.to(() => OTPVerificationPage(otp: otp));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Button to sign up with Google
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                icon: SvgPicture.asset(
                  'assets/google.svg',
                  height: 24,
                ),
                label: const Text(
                  "Sign Up With Google",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(child: Container()),
            // Link to navigate to the login page
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(const LoginPage());
                },
                child: const Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    children: [
                      TextSpan(
                        text: "Sign In",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
