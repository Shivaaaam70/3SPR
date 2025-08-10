import 'package:find_job/core/const/string_const.dart';
import 'package:flutter/material.dart';

class JobDiscoverySection extends StatelessWidget {
  const JobDiscoverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Image
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/images/jobDiscovery.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 40),

          // Right Text
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icon
                Image.asset(
                  'assets/images/job_search_icon.png',
                  height: 50, // You can adjust the size
                ),

                const SizedBox(height: 16),

                // Title
                const Text(
                  'Transforming Job Discovery with\nIntelligent Automation',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),

                const SizedBox(height: 20),

                // Description 1
                Text(
                  StringConst.job_discovery_desc1 ,
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),

                const SizedBox(height: 12),

                // Description 2
                Text(
                  StringConst.job_discovery_desc2,
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),

                const SizedBox(height: 12),

                // Description 3
                Text(
                  StringConst.job_discovery_desc3,
                  style: TextStyle(fontSize: 16, height: 1.3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
