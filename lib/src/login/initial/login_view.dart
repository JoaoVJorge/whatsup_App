import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:whatsup/src/login/initial/login_controller.dart';
import 'package:whatsup/theme/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.bottomCenter,
        color: Colors.white,
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/images/whatsapp-symbol-logo-svgrepo-com.svg",
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70),
              child: InkWell(
                onTap: controller.goToLog,
                child: Container(
                  height: 55,
                  width: 120,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(55),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
