import 'package:find_job/screen/widgets/job_discovery_section.dart';
import 'package:find_job/screen/widgets/jobfinderprocess_section.dart';
import 'package:find_job/screen/widgets/footer_section.dart';
import 'package:find_job/screen/widgets/statsbox_section.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_header.dart';
import '../widgets/hero_section.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomHeader(),
              const SizedBox(height: 0), // 🔹 space after header

              const HeroSection(),
              const SizedBox(height: 60), // 🔹 space after hero

              const JobFinderProcess(),
              const SizedBox(height: 60), // 🔹 space after job process

              JobDiscoverySection(),
              const SizedBox(height: 60),

              const StatsBox(),
              const SizedBox(height: 60), // 🔹 space before footer

              const FooterSection(),
              const SizedBox(height: 20), // 🔹 optional final spacing
            ],
          ),
        ),
      ),
    );
  }
}
