import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class HomeController extends DisposableInterface {
  final name = "Whats'Up";
  final RxInt currentRouteIndex = 0.obs;
  final int nestedKey = 1;
  final RxInt transitionIndex = 1.obs;
  final List<GetPage> pages = AppRoutes.getTopBarPages;
  late String initialRouteName = pages.first.name;

  void goToPage(String route) {
    Get.toNamed(
      route,
      id: nestedKey,
    );
  }

  void onTapBack() {
    return Get.back(id: nestedKey);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    return AppRoutes.onGenerateRoute(settings);
  }

  void setCurrentRouteIndex(int index) {
    currentRouteIndex.value = index;
  }

  void setCurrentTransition(int transition) {
    transitionIndex.value = transition;
  }

  void tapChat() {
    if (currentRouteIndex.value != 0) {
      setCurrentTransition(1);
      goToPage(AppRoutes.chat);
      setCurrentRouteIndex(0);
    }
  }

  void tapGroup() {
    if (currentRouteIndex.value != 1) {
      if (currentRouteIndex.value == 0) {
        setCurrentTransition(0);
      } else {
        setCurrentTransition(1);
      }
      setCurrentRouteIndex(1);
      goToPage(AppRoutes.group);
    }
  }

  void tapCall() {
    if (currentRouteIndex.value != 2) {
      setCurrentTransition(0);
      goToPage(AppRoutes.call);
      setCurrentRouteIndex(2);
    }
  }

  Future<void> goConfig() async {
    Get.toNamed(AppRoutes.config);
  }
}
