import 'package:find_job/screen/widgets/dash_sidebar_menu.dart';
import 'package:find_job/screen/widgets/dash_success_chart.dart';
import 'package:find_job/screen/widgets/dash_top_nav.dart';
import 'package:find_job/screen/widgets/dash_trending_jobs.dart';
import 'package:flutter/material.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      body: Row(
        children: [
          const SidebarMenu(), // Sidebar icons
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header with Search, Notification, Profile
                    const TopNavBar(),

                    const SizedBox(height: 20),

                    // Trending Jobs
                    const TrendingJobs(),

                    const SizedBox(height: 40),

                    // This Year Success Rate Chart
                    const SuccessChart(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
