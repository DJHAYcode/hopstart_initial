import 'package:flutter/material.dart';

class NewUserDataScreen extends StatefulWidget {
  const NewUserDataScreen({super.key});

  @override
  _NewUserDataScreenState createState() => _NewUserDataScreenState();
}

class _NewUserDataScreenState extends State<NewUserDataScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _petnameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  String? _selectedBreed;

  // List of rabbit breeds
  final List<String> _rabbitBreeds = [
    'American Chinchilla',
    'American Fuzzy Lop',
    'American Rabbit',
    'Argente Rabbit',
    'Britannia Petite',
    'Californian Rabbit',
    'Champagne d\'Argent',
    'Checkered Giant',
    'Cinnamon Rabbit',
    'Continental Giant',
    'Dutch Rabbit',
    'Dwarf Hotot',
    'English Angora',
    'English Spot',
    'Flemish Giant',
    'French Angora',
    'Harlequin Rabbit',
    'Havana Rabbit',
    'Holland Lop',
    'Jersey Wooly',
    'Lionhead',
    'Lop Eared Rabbit',
    'Mini Lop',
    'Mini Rex',
    'Netherland Dwarf',
    'New Zealand Rabbit',
    'Palomino Rabbit',
    'Polish Rabbit',
    'Rex Rabbit',
    'Rhinelander',
    'Satin Angora',
    'Silver Fox Rabbit',
    'Silver Rabbit',
    'Tan Rabbit',
    'Thrianta Rabbit',
  ];

  void _validateInputs() {
    if (_usernameController.text.isEmpty ||
        _petnameController.text.isEmpty ||
        _selectedBreed == null ||
        _ageController.text.isEmpty) {
      // Show snackbar if inputs are empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please fill all the inputs"),
          backgroundColor: Colors.grey,
        ),
      );
    } else {
      // Proceed to the next screen or perform an action
      // Add your action here
      debugPrint('Inputs are valid!');
    }
  }

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
                  "assets/images/welcome_user.png",
                  width: 300,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20), // Space between image and heading
              // Heading
              const Text(
                'Welcome to HopStart!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              // Subheading
              const Text(
                'Before we proceed, we want to know about you and your bunny pet! Kindly introduce yourself and your pet to us!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 20), // Space after subheading
              // Username TextField
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15), // Space between text fields
              // Petname TextField
              TextField(
                controller: _petnameController,
                decoration: InputDecoration(
                  hintText: 'Petname',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15), // Space between text fields
              // Dropdown Menu for Breeds
              DropdownButtonFormField<String>(
                value: _selectedBreed,
                items: _rabbitBreeds.map((breed) {
                  return DropdownMenuItem(
                    value: breed,
                    child: Text(breed),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedBreed = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Select Breed',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 15), // Space between text fields
              // Age TextField
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Age(in months)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 20), // Space after age field
              // Proceed Button
              SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.green],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: _validateInputs,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
