import 'package:app_fanese/controller/home_controller.dart';
import 'package:get/get.dart';

class Inject {
  static init() {
    Get.put(HomeController());
  }
}
