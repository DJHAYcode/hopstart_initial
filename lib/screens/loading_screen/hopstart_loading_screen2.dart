import 'package:flutter/material.dart';
import 'package:hopstart_app/screens/home_screen/hopstart%20_home_screen.dart';


class HopstartLoadingScreenTwo extends StatefulWidget {
  const HopstartLoadingScreenTwo ({super.key});

  @override
  State<HopstartLoadingScreenTwo> createState() => _HopstartLoadingScreenState();
}

class _HopstartLoadingScreenState extends State<HopstartLoadingScreenTwo> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HopstartHomeScreen()),
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
