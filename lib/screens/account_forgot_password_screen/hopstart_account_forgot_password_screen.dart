import 'package:flutter/material.dart';

class HopstartAccountForgotPasswordScreen extends StatefulWidget {
  const HopstartAccountForgotPasswordScreen({super.key});

  @override
  State<HopstartAccountForgotPasswordScreen> createState() =>
      _HopstartAccountForgotPasswordScreenState();
}

class _HopstartAccountForgotPasswordScreenState
    extends State<HopstartAccountForgotPasswordScreen> {
  bool _isNewPasswordObscured = true;
  bool _isConfirmPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FB), // Background color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50), // Top padding
              // Image at the top
              Center(
                child: Image.asset(
                  "assets/images/hopstart_forgot_password.png",
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 5), // Space between image and heading
              // Heading
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20), // Space after heading
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.mail, color: Colors.green),
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15), // Space between text fields
              // New Password TextField with Show/Hide feature
              TextField(
                obscureText: _isNewPasswordObscured,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.green),
                  hintText: 'Enter your New Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isNewPasswordObscured
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      setState(() {
                        _isNewPasswordObscured = !_isNewPasswordObscured;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15), // Space between text fields
              // Confirm New Password TextField with Show/Hide feature
              TextField(
                obscureText: _isConfirmPasswordObscured,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.check_circle, color: Colors.green),
                  hintText: 'Confirm your New Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isConfirmPasswordObscured
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.green,
                    ),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordObscured =
                            !_isConfirmPasswordObscured;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 20), // Space after text fields
              // Reset Password Button
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.green, Colors.blue],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Add functionality here
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Reset Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Space after button
              // Have an Account? Login Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Have an Account?',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to Sign In screen
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
