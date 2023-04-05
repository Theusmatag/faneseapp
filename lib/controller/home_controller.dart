import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController {
  Rx<bool> selected = Rx<bool>(true);
  Rx<double> opc = Rx<double>(0.0);
  Rx<bool> loginmode = Rx<bool>(true);
  Rx<bool> obscuredmode = Rx<bool>(true);

  Rx<TextEditingController> email =
      Rx<TextEditingController>(TextEditingController());
  Rx<TextEditingController> password =
      Rx<TextEditingController>(TextEditingController());
  Rx<TextEditingController> name =
      Rx<TextEditingController>(TextEditingController());

  void playanimation() {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      selected.value = false;
      opc.value = 1.0;
    });
  }
}
