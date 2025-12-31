import 'package:flutter/material.dart';
import '../../../../core/theme.dart';

import '../../../main_navigation/presentation/pages/main_navigation_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    // Navigate to Main Navigation
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const MainNavigationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Image Section
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                // Background Image Placeholder (University Building)
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.grey, // Placeholder color
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/university_bg.jpg'),
                    //   fit: BoxFit.cover,
                    // ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80), // Curved effect
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "University Building Image",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),

                // Logo Circle Overlay
                Positioned(
                  bottom: -40,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.primary, // Red background for logo
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.school, // Placeholder Logo
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // Login Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text('Login', style: AppTextStyles.heading1),
                  ),
                  const SizedBox(height: 40),

                  // Email Field
                  const Text('Email 365', style: AppTextStyles.caption),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'user@university.edu',
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password Field
                  const Text('Password', style: AppTextStyles.caption),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      hintText: '••••••••',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Login Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _login,
                      child: const Text(
                        'Log In',
                        style: AppTextStyles.buttonText,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Help Text
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Handle Help
                      },
                      child: const Text(
                        'Bantuan ?',
                        style: TextStyle(color: AppColors.primary),
                      ),
                    ),
                  ),

                  // Bottom Wave Decoration (Visual flair from design)
                  // Implementing a simple version using Container or CustomPaint if needed.
                  // For now, leaving simple to ensure functionality.
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
