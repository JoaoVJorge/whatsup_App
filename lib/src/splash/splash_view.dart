import 'package:flutter/material.dart';
import 'package:whatsup/theme/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          "Whats'Up",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Bebas",
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}
