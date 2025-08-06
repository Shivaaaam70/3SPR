import 'package:flutter/material.dart';
import 'package:find_job/screen/widgets/login_page.dart';
import 'package:find_job/core/const/asset_const.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 1440,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Full 20 radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 600;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // App Logo
                Image.asset(
                  AssetConst.applogo,
                  height: 40,
                ),

                // Navigation & Button
                if (!isMobile)
                  Row(
                    children: [
                      _navItem('Home'),
                      const SizedBox(width: 10),
                      _navItem('About'),
                      const SizedBox(width: 10),
                      _navItem('Contact'),
                      const SizedBox(width: 20),

                      // 👇 Get Started button with navigation
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const LoginPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                else
                  // Mobile menu icon
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      // TODO: Implement drawer or bottom sheet
                    },
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  // Navigation item widget
  Widget _navItem(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
