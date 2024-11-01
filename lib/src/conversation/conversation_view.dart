import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:whatsup/src/conversation/conversation_controller.dart';
import 'package:whatsup/theme/colors.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ConversationController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: AppColors.primary,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                InkWell(
                  onTap: controller.goBackToChat,
                  child: Container(
                    width: 45,
                    height: 80,
                    margin: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      "assets/icons/angulo-esquerdo.svg",
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => (),
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                        ),
                        child: Image.asset("assets/images/foto.png"),
                      ),
                      const Text(
                        "João",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            color: AppColors.gray,
          )),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomCenter,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Write Here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
