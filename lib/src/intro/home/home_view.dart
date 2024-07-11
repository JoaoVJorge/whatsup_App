import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';
import 'package:whatsup/src/intro/home/home_controller.dart';
import 'package:whatsup/theme/colors.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
            child: const AppTopBar(),
          ),
          Expanded(
            child: Navigator(
              key: Get.nestedKey(controller.nestedKey),
              initialRoute: controller.initialRouteName,
              onGenerateRoute: controller.onGenerateRoute,
            ),
          ),
        ],
      ),
    );
  }
}

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 35),
          height: 90,
          width: MediaQuery.of(context).size.width,
          color: AppColors.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                controller.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Bebas",
                  fontSize: 75,
                ),
              ),
              InkWell(
                onTap: controller.goConfig,
                child: Container(
                  width: 80,
                  height: 80,
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/icons/menu-pontos-vertical.svg",
                    height: 40,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
            color: AppColors.primary,
          ),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  if (controller.currentRouteIndex.value != 0) {
                    controller.goToPage(AppRoutes.chat);
                    controller.setCurrentRouteIndex(0);
                  }
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/comente.svg",
                      height: 35,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (controller.currentRouteIndex.value != 1) {
                    controller.setCurrentRouteIndex(1);
                    controller.goToPage(AppRoutes.group);
                  }
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/comercial.svg",
                      height: 35,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (controller.currentRouteIndex.value != 2) {
                    controller.setCurrentRouteIndex(2);
                    controller.goToPage(AppRoutes.call);
                  }
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/chamada-telefonica.svg",
                      height: 35,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
