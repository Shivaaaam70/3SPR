import 'package:flutter/material.dart';

class TrendingJobs extends StatelessWidget {
  const TrendingJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Trending Jobs",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ElevatedButton(onPressed: () {}, child: const Text("Filter")),
            const SizedBox(width: 10),
            TextButton(onPressed: () {}, child: const Text("View All")),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300, 
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 4, 
            separatorBuilder: (_, __) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              return _buildJobCard();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildJobCard() {
    return SizedBox(
      width: 263,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Company and Logo
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Google",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/google_logo.png'),
                  ),
                ],
              ),
              const SizedBox(height: 6),

              // Product and New
              const Row(
                children: [
                  Text("Product", style: TextStyle(fontSize: 11)),
                  SizedBox(width: 4),
                  Text("New", style: TextStyle(color: Colors.red, fontSize: 11)),
                ],
              ),
              const SizedBox(height: 6),

              // Job title
              const Text(
                "Frontend Junior Engineer",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Colors.blue),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),

              // Location and remote tag
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, size: 12),
                  const SizedBox(width: 4),
                  const Expanded(
                    child: Text(
                      "Mumbai, Maharashtra",
                      style: TextStyle(fontSize: 11),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    child: const Text("Remote", style: TextStyle(fontSize: 10)),
                  )
                ],
              ),
              const SizedBox(height: 6),

              // Time & Date
              const Row(
                children: [
                  Icon(Icons.access_time, size: 12),
                  SizedBox(width: 4),
                  Text("20:49:29Z", style: TextStyle(fontSize: 10)),
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Icon(Icons.calendar_month, size: 12),
                  SizedBox(width: 4),
                  Text("2025-06-06 / 3 week", style: TextStyle(fontSize: 10)),
                ],
              ),
              const SizedBox(height: 6),

              // Tags
              Wrap(
                spacing: 10,
                runSpacing: 4,
                children: [
                  _tagChip("Frontend Developer"),
                  _tagChip("Junior Frontend"),
                  _tagChip("Angular Developer"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tagChip(String label) {
    return Chip(
      label: Text(label, style: const TextStyle(fontSize: 10)),
      backgroundColor: Colors.grey[200],
      padding: const EdgeInsets.symmetric(horizontal: 6),
    );
  }
}
