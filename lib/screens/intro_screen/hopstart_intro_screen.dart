import 'package:flutter/material.dart';
import 'package:hopstart_app/screens/intro_screen/hopstart_intro_page1.dart';
import 'package:hopstart_app/screens/intro_screen/hopstart_intro_page2.dart';
import 'package:hopstart_app/screens/intro_screen/hopstart_intro_page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HopStartIntroScreen extends StatefulWidget {
  const HopStartIntroScreen({super.key});

  @override
  State<HopStartIntroScreen> createState() => _HopStartIntroScreenState();
}

class _HopStartIntroScreenState extends State<HopStartIntroScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              HopstartIntroPage1(),
              HopstartIntroPage2(),
              HopstartIntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.95),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                dotWidth: 6.0,   // Adjust dot width (size)
                dotHeight: 6.0,  // Adjust dot height (size)
                spacing: 12.0,     // Adjust space between dots
                radius: 4,         // Radius of the active dot
                dotColor: Colors.blue,       // Inactive dots color
                activeDotColor: Colors.green, // Transparent active dot to show gradient
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientDot extends StatelessWidget {
  final double size;

  const GradientDot({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],  // Gradient from blue to green
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        shape: BoxShape.circle,  // Make it circular
      ),
    );
  }
}
