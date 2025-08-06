import 'package:find_job/screen/widgets/reset_password.dart';
import 'package:flutter/material.dart';
 // 👈 Make sure this file exists

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // ✅ Background image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.jpg', // 👈 Replace with your actual asset path
              fit: BoxFit.cover,
            ),
          ),

          // ✅ Glass Card
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
                    "Welcome back! Olivia",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Nice to see you again!",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "No problem please follow the information.",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),

                  // ✅ Email/Mobile Input
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter your email or mobile number",
                      hintText: "Type your email or mobile number",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ✅ Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003B6F),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ResetPasswordPage(),
                          ),
                        );
                      },
                      child: const Text("Submit", style: TextStyle(fontSize: 16)),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ✅ Admin Contact
                  const Text(
                    "Having problem with changing password?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      // You can open mail or support chat
                    },
                    child: const Text(
                      "Contact Admin",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
