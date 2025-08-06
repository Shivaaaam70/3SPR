import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.jpg', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),

          // ✅ Glass card
          Center(
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.85),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Reset Password",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Please enter your new password below.",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),

                  // ✅ New Password
                  TextField(
                    obscureText: _obscureNew,
                    decoration: InputDecoration(
                      labelText: "New Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureNew ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() => _obscureNew = !_obscureNew);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // ✅ Confirm Password
                  TextField(
                    obscureText: _obscureConfirm,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureConfirm ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() => _obscureConfirm = !_obscureConfirm);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ✅ Reset Button
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003B6F),
                      ),
                      onPressed: () {
                        // TODO: Handle reset logic or success dialog
                      },
                      child: const Text("Reset Password", style: TextStyle(fontSize: 16)),
                    ),
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
