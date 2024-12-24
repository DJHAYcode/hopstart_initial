import 'package:flutter/material.dart';
import 'package:hopstart_app/screens/login_screen/hopstart_signin_screen.dart';


class HopstartLoadingScreen extends StatefulWidget {
  const HopstartLoadingScreen({super.key});

  @override
  State<HopstartLoadingScreen> createState() => _HopstartLoadingScreenState();
}

class _HopstartLoadingScreenState extends State<HopstartLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HopstartSignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/hopstartlogo.png',
            height: 300,
          ),
          const SizedBox(height: 20),
          const Center(
            child: CircularProgressIndicator(
              color: Colors.blue, 
            ),
          ),
        ],
      ),
    );
  }
}
