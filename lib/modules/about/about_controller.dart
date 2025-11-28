import 'package:get/get.dart';
import 'package:my_profile_app/data/models/profile_model.dart';
import 'package:my_profile_app/core/constants/app_constants.dart';

class AboutController extends GetxController {
  final profile = ProfileModel(
    name: 'Your Name',
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
}
