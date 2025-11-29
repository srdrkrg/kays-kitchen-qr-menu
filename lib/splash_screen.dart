import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/english.jpg',
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(color: const Color(0xFF1A1A1A));
            },
          ),
          // Dark Overlay
          Container(
            color: Colors.black.withOpacity(0.7),
          ),
          // Gold Border Frame and Content
          SafeArea(
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255), // Gold color
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  // Restaurant Name
                  const Text(
                    "KAY'S KITCHEN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255), // Gold
                      letterSpacing: 3,
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // "Menu" Text
                  const Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 255, 255, 255), // Gold
                      fontFamily: 'Serif',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Tagline
                  Text(
                    "Breakfast - Lunch - Beverages",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9),
                      letterSpacing: 4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(flex: 2),
                  // Go to Menu Button
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => const MenuPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Gold background
                        foregroundColor: Colors.black, // Black text
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Square/Sharp corners like the frame
                        ),
                        elevation: 5,
                      ),
                      child: const Text(
                        "GO TO MENU",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
