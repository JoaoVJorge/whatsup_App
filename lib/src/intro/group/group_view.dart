import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:whatsup/theme/colors.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                            "assets/images/Untitled.jpg",
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
                        "Grupo da Familia",
                        style: TextStyle(
                          fontSize: 25,
                          height: 1.2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "vai arruma oq fzr",
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
          "assets/images/Untitled.jpg",
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
