import 'package:flutter/material.dart';

class LoginInPage extends StatelessWidget {
  const LoginInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 360,
            ),
            const Text(
              "What's your Phone Number",
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(
              height: 180,
              width: 160,
              child: Row(),
            ),
            GestureDetector(
              onTap: () => {},
              child: const Text(
                "Wanna connect with your Google Account?",
                style: TextStyle(
                    color: Color.fromARGB(255, 16, 97, 163),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
