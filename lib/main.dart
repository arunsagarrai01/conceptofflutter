import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}

// ------------------------------------------------------------
// HOME PAGE
// ------------------------------------------------------------

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // ------------------------------------------------
              // HEADER
              // ------------------------------------------------

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 25, 30, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    const Text(
                      'Home Page',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff222222),
                      ),
                    ),

                    // Profile icon
                    Container(
                      width: 58,
                      height: 58,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffeeeeee),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                        color: Color(0xffc8c8c8),
                      ),
                    ),
                  ],
                ),
              ),

              // ------------------------------------------------
              // SEARCH BAR
              // ------------------------------------------------

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color(0xfff1f1f1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [

                      const SizedBox(width: 20),

                      const Icon(
                        Icons.search,
                        size: 32,
                        color: Color(0xff999999),
                      ),

                      const SizedBox(width: 20),

                      const Expanded(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),

                      const Icon(
                        Icons.mic_none,
                        size: 30,
                        color: Color(0xff999999),
                      ),

                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // PROMOTIONAL CARD
              // ------------------------------------------------

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff586df0),
                        Color(0xff4556bd),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        'Jing A studio',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        'Tell me your dream',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(
                        'Invite friends to sell 1000 red packets',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffd8ddff),
                        ),
                      ),

                      const SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {
                          print('Details button clicked');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffa62b),
                          foregroundColor: Colors.white,
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 28,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: const Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 35),

              // ------------------------------------------------
              // CATEGORY MENU
              // ------------------------------------------------

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    categoryItem(
                      icon: Icons.new_releases,
                      label: 'New',
                      color: const Color(0xffffa726),
                    ),

                    categoryItem(
                      icon: Icons.school,
                      label: 'Skill',
                      color: const Color(0xff42a5f5),
                    ),

                    categoryItem(
                      icon: Icons.dashboard,
                      label: 'Easel',
                      color: const Color(0xffd62f69),
                    ),

                    categoryItem(
                      icon: Icons.business,
                      label: 'Room',
                      color: const Color(0xff4595dd),
                    ),

                    categoryItem(
                      icon: Icons.location_on,
                      label: 'Project',
                      color: const Color(0xffab5ac4),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              // ------------------------------------------------
              // DIVIDER
              // ------------------------------------------------

              Container(
                height: 12,
                color: const Color(0xfff4f4f4),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // CURRICULUM TITLE
              // ------------------------------------------------

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [

                    Container(
                      width: 8,
                      height: 42,
                      color: const Color(0xff5369df),
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      'Curriculum',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // COURSE 1
              // ------------------------------------------------

              courseCard(
                title: 'Elite class',
                descriptionTitle: 'Central Quing elite class',
                description:
                'Elite first choice rapid improvmentof\npainting ability',
                price: '€53,000',
                color: const Color(0xff5369df),
              ),

              const SizedBox(height: 25),

              // ------------------------------------------------
              // COURSE 2
              // ------------------------------------------------

              courseCard(
                title: 'Design class',
                descriptionTitle: 'Central Quing design class',
                description:
                'Elite first choice rapid improvmentof\npainting ability',
                price: '€48,000',
                color: const Color(0xffff9825),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------------------------------------------------
  // CATEGORY ITEM
  // ------------------------------------------------------------

  Widget categoryItem({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [

        Container(
          width: 62,
          height: 62,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 36,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff555555),
          ),
        ),
      ],
    );
  }

  // ------------------------------------------------------------
  // COURSE CARD
  // ------------------------------------------------------------

  Widget courseCard({
    required String title,
    required String descriptionTitle,
    required String description,
    required String price,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // -----------------------------------------------
          // LEFT COURSE BOX
          // -----------------------------------------------

          Container(
            width: 145,
            height: 210,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Icon(
                  Icons.star,
                  size: 62,
                  color: Colors.white,
                ),

                const SizedBox(height: 25),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 25),

          // -----------------------------------------------
          // RIGHT CONTENT
          // -----------------------------------------------

          Expanded(
            child: SizedBox(
              height: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    descriptionTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color(0xff999999),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Color(0xffaaaaaa),
                    ),
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          print('$title purchased');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: color,
                          foregroundColor: Colors.white,
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: const Text(
                          'Purchase',
                          style: TextStyle(
                            fontSize: 16,
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
        ],
      ),
    );
  }
}