import 'package:app_fanese/controller/home_controller.dart';
import 'package:app_fanese/view/components/form_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    homeController.playanimation();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark,
    );
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) => SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Obx(() => SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: constraints.maxHeight * 0.07,
                  ),
                  AnimatedOpacity(
                    opacity: homeController.opc.value,
                    duration: const Duration(seconds: 2),
                    child: SizedBox(
                        height: constraints.maxHeight * 0.10,
                        width: 250,
                        child: Image.asset(
                          color: Theme.of(context).colorScheme.secondary,
                          'assets/images/logo.png',
                          fit: BoxFit.contain,
                        )),
                  ),
                  AnimatedOpacity(
                    opacity: homeController.opc.value,
                    duration: const Duration(seconds: 2),
                    child: const FormComponent(),
                  ),
                ]),
              )),
        ),
      ),
    );
  }
}
