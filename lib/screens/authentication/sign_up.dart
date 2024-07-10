import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignUpPageState();
  }
}

class SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Center(
          child: SingleChildScrollView( // Added SingleChildScrollView
            child: Column(
              children: [
                const Text(
                  "Sign up now",
                  style: TextStyle(
                    color: Color(0xFF1B1E28),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Sf Ui Display SemiBold",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Please fill the details and create account",
                  style: TextStyle(
                    fontFamily: "gill sans",
                    fontSize: 16,
                    color: Color(0xFF7D848D),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                     top: 20, left: 20, right: 20, bottom: 12),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      hintStyle: const TextStyle(
                          color: Color(0xFF7D848D),
                          fontFamily: "Sf Ui Display medium",
                          fontSize: 16),
                      fillColor: Colors.blueGrey.shade50,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFF24BAEC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 12, bottom: 12),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      hintStyle: const TextStyle(
                          color: Color(0xFF7D848D),
                          fontFamily: "Sf Ui Display medium",
                          fontSize: 16),
                      fillColor: Colors.blueGrey.shade50,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFF24BAEC),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 12, bottom: 5),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade50,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color(0xFF24BAEC),
                          ),
                        ),
                        suffixIcon: const Icon(Icons.visibility_off,
                            color: Color(0xFF7D848D)),
                        hintText: "******",
                        hintStyle:
                        const TextStyle(fontSize: 16, letterSpacing: 5)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230, bottom: 30),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text("Forget Password?",
                          style: TextStyle(
                              color: Color(0xFFFF7029),
                              fontFamily: "Sf Ui Display medium",
                              fontSize: 14))),
                ),
                SizedBox(
                  width: 335,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF24BAEC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Sf Ui Display medium",
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Sf Ui Display medium",
                          color: Color(0xFF707B81)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            fontFamily: "Sf Ui Display medium",
                            fontSize: 14,
                            color: Color(0xFFFF7029),
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Or connect",
                  style: TextStyle(
                      fontFamily: "Sf Ui Display medium",
                      color: Color(0xFF707B81)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1877F2), // Facebook blue color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/svg_icons/facebook.svg',
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF833AB4), // Purple
                            Color(0xFFC13584), // Pink
                            Color(0xFFE1306C), // Orange
                            Color(0xFFF77737), // Yellow
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/svg_icons/instagram.svg',
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFF1DA1F2), // Twitter blue color
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/svg_icons/twitter.svg',
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
