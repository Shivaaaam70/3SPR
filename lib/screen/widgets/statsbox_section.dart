import 'package:flutter/material.dart';

class StatsBox extends StatelessWidget {
  const StatsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [Colors.white, Color(0xFFEAF6FF)], // light gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            StatItem(title: "10,000 +", subtitle: "Happy Clients"),
            SizedBox(width: 40),
            StatItem(title: "1 Million +", subtitle: "Daily Job Scans"),
            SizedBox(width: 40),
            StatItem(title: "50,000 +", subtitle: "Man Hours Saved"),
          ],
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const StatItem({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
