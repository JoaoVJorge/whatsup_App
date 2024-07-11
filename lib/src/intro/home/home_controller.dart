import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:whatsup/app/app_routes.dart';

class HomeController extends DisposableInterface {
  final name = "Whats'Up";
  final RxInt currentRouteIndex = 0.obs;
  final int nestedKey = 1;
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

  Future<void> goConfig() async {
    Get.toNamed(AppRoutes.config);
  }
}
