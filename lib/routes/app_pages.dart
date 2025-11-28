import 'package:get/get.dart';
import 'package:my_profile_app/modules/about/about_binding.dart';
import 'package:my_profile_app/modules/about/about_view.dart';
import 'package:my_profile_app/modules/profile/profile_binding.dart';
import 'package:my_profile_app/modules/profile/profile_view.dart';
import 'package:my_profile_app/modules/welcome/welcome_binding.dart';
import 'package:my_profile_app/modules/welcome/welcome_view.dart';
import 'package:my_profile_app/routes/app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.about,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
  ];
}
