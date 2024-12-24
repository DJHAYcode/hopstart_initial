import 'package:flutter/material.dart';
import 'package:hopstart_app/screens/account_signup_screen/hopstart_account_signup_screen.dart';
import 'package:hopstart_app/screens/home_screen/hopstart%20_home_screen.dart';
import 'package:hopstart_app/screens/intro_screen/hopstart_intro_screen.dart';
import 'package:hopstart_app/screens/login_screen/hopstart_signin_screen.dart';
import 'package:hopstart_app/screens/new_user_data_screen/new_user_data_screen.dart';

void main() {
  runApp(HopStartApp());
}

class HopStartApp extends StatelessWidget {
  const HopStartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Set Poppins as the default font for the entire app
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          headlineLarge: TextStyle(fontFamily: 'Poppins'),
          headlineMedium: TextStyle(fontFamily: 'Poppins'),
          headlineSmall: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      home:  //HopStartIntroScreen(),
            // HopstartHomeScreen(),
            //HopstartSignInScreen(),
            //HopstartAccountSignupScreen(),
            NewUserDataScreen(),
    );
  }
}
