import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const QrMenuApp());
}

class QrMenuApp extends StatelessWidget {
  const QrMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "KAY'S KITCHEN",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: const Color(0xFF2D2D2D),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2D2D2D),
          brightness: Brightness.light,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


// Menu Page
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menu = [
      {
        "category": "BREAKFAST",
        "icon": Icons.free_breakfast_outlined,

        "items": [
          {"name": "Small Breakfast", "price": "£7.00"},
          {"name": "Medium Breakfast", "price": "£8.00"},
          {"name": "Large Breakfast", "price": "£9.50"},
          {"name": "Gutter Buster", "price": "£12.50"},
          {"name": "Wraps Bacon / Sausage / Egg / Hash Brown / Cheese", "price": "£6.70"},
          {"name": "Bin Lids Bacon / Sausage / Hash Brown / Black Pudding / Egg", "price": "£6.70"},
          {"name": "Sausage", "price": "£2.50"},
          {"name": "Egg", "price": "£2.00"},
          {"name": "Bacon", "price": "£2.50"},
          {"name": "Beans on Toast", "price": "£3.00"},
          {"name": "Scrambled Egg on Toast", "price": "£3.00"},
          {"name": "Salt & Pepper Hash Brown", "price": "£4.50"},
          {"name": "2 x Toast", "price": "£1.00"},
          {"name": "2 x Bread & Butter", "price": "£1.00"},
        ]
      },
      {
        "category": "LUNCH",
        "icon": Icons.restaurant_outlined,

        "items": [
          {
            "name": "Salad",
            "isComplex": true,
            "variants": [
              {"name": "Plain", "price": "£2.00"},
              {"name": "Cheese", "price": "£3.50"},
              {"name": "Ham", "price": "£4.50"},
              {"name": "Tuna", "price": "£4.50"},
              {"name": "Chicken", "price": "£4.80"},
            ]
          },
          {
            "name": "Wraps",
            "isComplex": true,
            "variants": [
              {"name": "Crispy Chicken", "price": "£5.30"},
              {"name": "Ham", "price": "£5.30"},
              {"name": "Cheese", "price": "£5.30"},
              {"name": "Tuna Mayo", "price": "£5.30"},
            ]
          },
          {
            "name": "Jackets",
            "isComplex": true,
            "variants": [
              {"name": "w/ filling + salad", "price": "£5.00"},
            ]
          },
          {
            "name": "Sandwiches",
            "isComplex": true,
            "variants": [
              {"name": "Bag or Roll", "price": "£3.75"},
            ]
          },
          {
            "name": "Meal Deals",
            "isComplex": true,
            "variants": [
              {"name": "Wrap + Can", "price": "£5.50"},
              {"name": "Toastie + Can", "price": "£5.50"},
            ]
          },

          {"name": "Toasties", "price": "£17.00"},
          {"name": "Chips", "price": "£2.30"},
          {"name": "Chip - Beans or Gravy or Cheese", "price": "£3.50"},
          {"name": "Chips, Cheese, Gravy", "price": "£4.00"},
          {"name": "Sausage, Egg, Chip, Beans", "price": "£6.00"},
          {"name": "Chicken Nuggets + Chips", "price": "£5.75"},
          {"name": "Pie, Chips, Gravy", "price": "£6.50"},
          {"name": "Sausage Roll & Chips", "price": "£6.00"},
          {"name": "Omelette & Chips", "price": "£5.70"},
          {"name": "Salt & Pepper Chicken Wrap", "price": "£5.60"},
          {"name": "Hunter Wrap", "price": "£6.20"},
          {"name": "Hunter Topped Chips", "price": "£8.20"},
          {"name": "Salt & Pepper Chicken Wings", "price": "£4.50"},
          {"name": "Salt & Pepper Chicken Wings + Chips", "price": "£7.20"},
          {"name": "Salt & Pepper Chicken + Chips", "price": "£7.20"},
          {"name": "Salt & Pepper Chicken", "price": "£4.60"},
        ]

      },
      {
        "category": "BEVERAGES",
        "icon": Icons.local_cafe_outlined,

        "items": [
          {"name": "Tea", "price": "£1.20"},
          {"name": "Coffee", "price": "£1.20"},
          {"name": "Cans", "price": "£1.30"},
          {"name": "Coke Cola", "price": "£1.50"},
          {"name": "Water", "price": "£1.00"},
          {"name": "Energy", "price": "£2.30"},
        ]
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: const Color(0xFF2D2D2D),
            height: 2.0,
          ),
        ),
        title: Text(
          'MENU',
          style: GoogleFonts.montserrat(
            fontSize: 26,
            color: const Color(0xFF2D2D2D),
            letterSpacing: 8,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          // Meal Preps Info Banner
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFE0E0E0), width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Row(
                  children: [
                    const Icon(Icons.restaurant_menu, size: 20, color: Color(0xFF2D2D2D)),
                    const SizedBox(width: 8),
                    const Text(
                      'Meal Preps',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D2D2D),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF25D366).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const FaIcon(FontAwesomeIcons.whatsapp, size: 14, color: Color(0xFF25D366)),
                          const SizedBox(width: 6),
                          Text(
                            'Pre-order > WhatsApp',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.green[800],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Info Blocks
                _buildInfoRow("Mon/Wed by 8 PM", "Collect Tue/Thu"),
                const SizedBox(height: 8),
                _buildInfoRow("Sat by 3 PM (Sun Lunch)", "Collect Sunday"),
              ],
            ),
          ),
          // Menu List
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: menu.length,
              itemBuilder: (context, index) {
                final category = menu[index];
          return MenuCategoryCard(
            category: category["category"],
            items: List<Map<String, dynamic>>.from(category["items"]),
          );
        },
      ),
          ),
        ],
      ),
    );
  }
  Widget _buildInfoRow(String deadline, String collection) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Deadline:",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                deadline,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D2D2D),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          height: 24,
          color: Colors.grey[300],
          margin: const EdgeInsets.symmetric(horizontal: 12),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Collection:",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                collection,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2D2D2D),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Menu Category Card Widget
class MenuCategoryCard extends StatelessWidget {
  final String category;
  final List<Map<String, dynamic>> items;

  const MenuCategoryCard({
    super.key,
    required this.category,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Text(
            category,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xFF2D2D2D),
              letterSpacing: 0.5,
            ),
          ),
        ),
        // Items List
        ...items.map((item) {
          if (item['isComplex'] == true) {
            return ComplexMenuItemCard(item: item);
          }
          return SimpleMenuItemCard(item: item);
        }).toList(),
        const SizedBox(height: 16),
      ],
    );
  }
}

class SimpleMenuItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  const SimpleMenuItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(16),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item['name'],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2D2D2D),
                    ),
                  ),
                ),
                Text(
                  item['price'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2D2D2D),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        ),
      ),
    );
  }
}

class ComplexMenuItemCard extends StatelessWidget {
  final Map<String, dynamic> item;
  const ComplexMenuItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> variants = List<Map<String, dynamic>>.from(item['variants']);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: const BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.all(16),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  item['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D2D2D),
                  ),
                ),
                const SizedBox(height: 12),
                // Variants List
                ...variants.map((variant) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "• ${variant['name']}",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF444444),
                          ),
                        ),
                        Text(
                          variant['price'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2D2D2D),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
        ),
      ),
    );
  }
}

