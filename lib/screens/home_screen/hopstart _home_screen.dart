import 'package:flutter/material.dart';

class HopstartHomeScreen extends StatelessWidget {
  const HopstartHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F6FB),
      appBar: AppBar(
        title: const Text('Home'),
        
        actions: [
         
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Add some padding
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/home_card.png'), // Make sure the image is added to the assets folder
                    fit: BoxFit.cover, // Cover the entire container
                  ),
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
