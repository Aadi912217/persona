import 'package:get/get.dart';
import 'package:my_profile_app/routes/app_routes.dart';

class WelcomeController extends GetxController {
  void goToProfile() {
    Get.toNamed(Routes.profile);
  }
}
