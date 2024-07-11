import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:whatsup/src/intro/chat/chat_controller.dart';
import 'package:whatsup/theme/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        //     itemCount: controller.users.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 90,
            margin: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: AppColors.gray,
            ),
            child: Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(60),
                  onTap: () => {
                    Get.dialog(
                      const ZoomImage(),
                    ),
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 99, 99, 99)),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/foto.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle),
                  ),
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "João",
                        style: TextStyle(
                          fontSize: 25,
                          height: 1.2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "oi",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    DateFormat.jm().format(
                      DateTime(2024, 3, 2, 12, 24),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: InkWell(
        onTap: () => controller.goAddUser(),
        borderRadius: BorderRadius.circular(40),
        child: Container(
          alignment: Alignment.bottomRight,
          height: 80,
          width: 80,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/icons/mais.svg",
              height: 40,
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
        ),
      ),
    );
  }
}

class ZoomImage extends StatelessWidget {
  const ZoomImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: Get.back,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
        Image.asset(
          "assets/images/foto.png",
          width: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.fitWidth,
        ).animate().scaleXY(
            begin: 0,
            end: 1,
            duration: const Duration(milliseconds: 100),
            curve: Curves.decelerate),
      ],
    );
  }
}
