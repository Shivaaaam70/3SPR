import 'package:flutter/material.dart';

class JobFinderProcess extends StatelessWidget {
  const JobFinderProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 🔴 Heading
        const Text(
          'The Magic Behind Our Automated Job Finder!',
          style: TextStyle(
            color: Color.fromARGB(255, 219, 79, 69),
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 12),

        // 📝 Subtitle
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Our intelligent job finder scans the internet in real-time, locating and organizing job listings from trusted \nsources so you don’t have to. Here’s how it works:',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
        ),

        const SizedBox(height: 30),

        // 📦 Cards Section
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: const [
            JobStepCard(
              imagePath: 'assets/images/step1.png',
              title: '1. Websites with\nJob Listings',
            ),
            JobStepCard(
              imagePath: 'assets/images/step2.png',
              title: '2. Smart Scraping\nTechnology',
            ),
            JobStepCard(
              imagePath: 'assets/images/step3.png',
              title: '3. Structured,\nSearchable Data',
            ),
          ],
        ),
      ],
    );
  }
}

class JobStepCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const JobStepCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 360,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imagePath,
            width: 350,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}
