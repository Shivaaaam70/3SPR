import 'package:flutter/material.dart';
import 'package:find_job/core/const/asset_const.dart';

class SidebarMenu extends StatefulWidget {
  const SidebarMenu({super.key});

  @override
  State<SidebarMenu> createState() => _SidebarMenuState();
}

class _SidebarMenuState extends State<SidebarMenu> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isExpanded ? 250 : 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo + Toggle
          Column(
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    AssetConst.applogo,
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              _buildMenuItem(Icons.home, "Home"),
              _buildMenuItem(Icons.people, "People"),
              _buildMenuItem(Icons.bar_chart, "Analytics"),
            ],
          ),

          // Logout
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: _buildMenuItem(Icons.logout, "Logout"),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, size: 24),
      title: isExpanded ? Text(title) : null,
      onTap: () {
        Navigator.pop(context);
      },
      contentPadding: EdgeInsets.symmetric(horizontal: isExpanded ? 20 : 12),
      horizontalTitleGap: 10,
    );
  }
}
