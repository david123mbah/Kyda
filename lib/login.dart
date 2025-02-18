import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F9FF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  'assets/images/nameLogo11.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 32),

              // Let's Sign In Text
              const Text(
                "Let's Sign In.!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2B2B2B),
                ),
              ),
              const SizedBox(height: 8),

              // Subtitle
              const Text(
                'Login to Your Account to Continue your Courses',
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 32),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.email_outlined),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Password Field
              TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Remember Me and Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value ?? false;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      const Text('Remember Me'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xFF0754AA)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Updated Sign In Button
              Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF0754AA),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Stack(
                  children: [
                    // Main Sign In Text
                    const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // Circular button with arrow
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        height: 48,
                        width: 48,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF0754AA),
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    // Make the entire button clickable
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          // Add your sign in logic here
                        },
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Or Continue With
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(color: Color(0xFF757575)),
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 24),

              // Social Login Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialLoginButton('assets/images/google.png'),
                  const SizedBox(width: 16),
                  _socialLoginButton('assets/images/apple.png'),
                ],
              ),
              const SizedBox(height: 24),

              // Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Color(0xFF0754AA),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialLoginButton(String iconPath) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Image.asset(
        iconPath,
        height: 24,
        width: 24,
      ),
    );
  }
}
