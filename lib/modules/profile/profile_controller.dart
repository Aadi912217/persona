import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile_app/core/constants/app_constants.dart';
import 'package:my_profile_app/data/models/profile_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileController extends GetxController {
  final isDarkMode = false.obs;

  final profile = ProfileModel(
    name: 'Azan Ahmed',
    profession: 'Flutter Developer',
    bio:
        'A passionate Flutter developer with a love for creating beautiful and functional mobile applications. Experienced in building cross-platform apps from scratch.',
    email: AppConstants.email,
    phone: AppConstants.phone,
    location: AppConstants.location,
    education: [
      Education(
        institution: 'Karakoram International University',
        degree: 'B.Sc. in Software Engineering',
        period: '2022-2026',
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'GetX',
      'Firebase',
      'REST APIs',
      'UI/UX Design',
      'Agile',
    ],
    hobbies: ['Coding', 'Reading', 'Gaming', 'Hiking'],
  ).obs;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }

  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      Get.snackbar('Error', 'Could not launch $url');
    }
  }
}
