import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:whatsup/src/add_user/add_user_controller.dart';
import 'package:whatsup/theme/colors.dart';

class AddUserPage extends StatelessWidget {
  const AddUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddUserController controller = Get.find();
    var mask = MaskTextInputFormatter(
        mask: '(##) #####-####', filter: {"#": RegExp(r'[0-9]')});

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: controller.goBack,
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        "assets/icons/angulo-esquerdo.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Contatos",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    top: 200, bottom: 350, left: 15, right: 30),
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/do-utilizador.svg",
                          height: 35,
                        ),
                        SizedBox(
                          width: 430,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "User",
                            ),
                            onChanged: (value) => controller.setUsername(value),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Text(
                        controller.errorMessageUser.value,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 58,
                        ),
                        SizedBox(
                          width: 430,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(hintText: "Nickname"),
                            onChanged: (value) => controller.setNickname(value),
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Text(
                        controller.errorMessageNick.value,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/phone-svgrepo-com.svg",
                          width: 35,
                        ),
                        SizedBox(
                          width: 430,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Number",
                            ),
                            onChanged: (value) => controller.setNumber(value),
                            keyboardType: TextInputType.number,
                            inputFormatters: [mask],
                          ),
                        ),
                      ],
                    ),
                    Obx(
                      () => Text(
                        controller.errorMessageNumber.value,
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black),
                        color: const Color.fromARGB(20, 0, 0, 0),
                      ),
                      child: InkWell(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        onTap: () {
                          controller.validateUsername();
                          controller.validateNickname();
                          controller.validateNumber();
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
