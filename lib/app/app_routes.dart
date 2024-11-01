import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:whatsup/src/add_user/add_user_bindings.dart';
import 'package:whatsup/src/add_user/add_user_view.dart';
import 'package:whatsup/src/config/config_bindings.dart';
import 'package:whatsup/src/config/config_view.dart';
import 'package:whatsup/src/conversation/conversation_bindings.dart';
import 'package:whatsup/src/conversation/conversation_view.dart';
import 'package:whatsup/src/intro/call/call_bindings.dart';
import 'package:whatsup/src/intro/call/call_view.dart';
import 'package:whatsup/src/intro/chat/chat_bindings.dart';
import 'package:whatsup/src/intro/chat/chat_view.dart';
import 'package:whatsup/src/intro/group/group_bindings.dart';
import 'package:whatsup/src/intro/group/group_view.dart';
import 'package:whatsup/src/intro/home/home_bindings.dart';
import 'package:whatsup/src/intro/home/home_controller.dart';
import 'package:whatsup/src/intro/home/home_view.dart';
import 'package:whatsup/src/login/initial/login_bindings.dart';
import 'package:whatsup/src/login/initial/login_view.dart';
import 'package:whatsup/src/login/send_code/login_in_bindings.dart';
import 'package:whatsup/src/login/send_code/login_in_view.dart';
import 'package:whatsup/src/splash/splash_bindings.dart';
import 'package:whatsup/src/splash/splash_view.dart';

final HomeController homeController = Get.find();

class AppRoutes {
  static const splash = "/";
  static const home = "/home";
  static const login = "/login";
  static const config = "/config";
  static const adduser = "/adduser";
  static const chat = "/chat";
  static const group = "/group";
  static const call = "/call";
  static const loginin = "/loginin";
  static const conversation = "/conversation";

  static final getPages = [
    GetPage(
      name: home,
      page: () => const HomeNavigationPage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: loginin,
      page: () => const LoginInPage(),
      binding: LoginInBindings(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: config,
      page: () => const ConfigPage(),
      binding: ConfigBindings(),
    ),
    GetPage(
      name: adduser,
      page: () => const AddUserPage(),
      binding: AddUserBindings(),
    ),
    GetPage(
      name: conversation,
      page: () => const ConversationPage(),
      binding: ConversationBindings(),
    )
  ];
  static final getTopBarPages = [
    GetPage(
      name: chat,
      page: () => const ChatPage(),
      binding: ChatBindings(),
    ),
    GetPage(
      name: group,
      page: () => const GroupPage(),
      binding: GroupBindings(),
    ),
    GetPage(
      name: call,
      page: () => const CallPage(),
      binding: CallBindings(),
    ),
  ];
  static Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == null) return null;

    final GetPage? route =
        getTopBarPages.firstWhereOrNull((page) => page.name == settings.name);

    if (route != null) {
      Get.routing.args = settings.arguments;
      if (homeController.transitionIndex.value == 0) {
        return GetPageRoute(
          transition: Transition.rightToLeft,
          settings: settings,
          page: route.page,
          binding: route.binding,
          transitionDuration: const Duration(milliseconds: 150),
        );
      }
      if (homeController.transitionIndex.value == 1) {
        return GetPageRoute(
          transition: Transition.leftToRight,
          settings: settings,
          page: route.page,
          binding: route.binding,
          transitionDuration: const Duration(milliseconds: 150),
        );
      }
      return null;
    }
    return null;
  }
}
