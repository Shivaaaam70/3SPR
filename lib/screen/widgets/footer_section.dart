import 'package:find_job/core/const/asset_const.dart';
import 'package:flutter/material.dart';


class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F9FB),
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AssetConst.applogo , // <-- your logo path
                    width: 120,
                  ),
                ],
              ),

              // Job Type
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Job Type",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("Job data"),
                  Text("Job view"),
                  Text("Job API"),
                ],
              ),

              // Home
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("About us"),
                  Text("Trending jobs"),
                  Text("Services"),
                  Text("Job API"),
                ],
              ),

              // Contact
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Contact us",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Text("About us"),
                  Text("Trending jobs"),
                  Text("Job API"),
                ],
              ),

              // Newsletter Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Subscribe to Newsletter",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "By submitting this, you are agreed to our privacy policy.",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Your email ID',
                            border: InputBorder.none,
                            icon: Icon(Icons.email_outlined),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF003459),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        ),
                        icon: const Icon(Icons.send),
                        label: const Text("Submit"),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          // Social Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FooterIcon(icon: Icons.email_outlined),
              SizedBox(width: 20),
              FooterIcon(icon: Icons.phone_outlined),
              SizedBox(width: 20),
              FooterIcon(icon: Icons.location_city),
              SizedBox(width: 20),
              FooterIcon(icon: Icons.share_outlined),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "© 2025 Your Company. All rights reserved.",
            style: TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class FooterIcon extends StatelessWidget {
  final IconData icon;
  const FooterIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.white,
      child: Icon(icon, color: Colors.grey[700]),
    );
  }
}
