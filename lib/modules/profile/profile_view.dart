import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile_app/core/constants/app_constants.dart';
import 'package:my_profile_app/modules/profile/profile_controller.dart';
import 'package:my_profile_app/routes/app_routes.dart';
import 'package:my_profile_app/core/widgets/social_icon_button.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          Obx(
            () => IconButton(
              icon: Icon(
                controller.isDarkMode.value
                    ? Icons.light_mode
                    : Icons.dark_mode,
              ),
              onPressed: controller.toggleTheme,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 24),
            _buildBio(),
            const SizedBox(height: 24),
            _buildContactInfo(),
            const SizedBox(height: 24),
            _buildSocialLinks(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.about),
        child: const Icon(Icons.person_outline),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/images/image.jpg',
            ), // Placeholder
          ),
          const SizedBox(height: 16),
          Obx(
            () => Text(
              controller.profile.value.name,
              style: Get.theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Obx(
            () => Text(
              controller.profile.value.profession,
              style: Get.theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About Me', style: Get.theme.textTheme.titleLarge),
        const SizedBox(height: 8),
        Obx(
          () => Text(
            controller.profile.value.bio,
            style: Get.theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  Widget _buildContactInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact', style: Get.theme.textTheme.titleLarge),
        const SizedBox(height: 8),
        Obx(
          () => ListTile(
            leading: const Icon(Icons.email),
            title: Text(controller.profile.value.email),
            onTap: () => controller.launchURL(
              'mailto:${controller.profile.value.email}',
            ),
          ),
        ),
        Obx(
          () => ListTile(
            leading: const Icon(Icons.phone),
            title: Text(controller.profile.value.phone),
          ),
        ),
        Obx(
          () => ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(controller.profile.value.location),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLinks() {
    return Center(
      child: Column(
        children: [
          Text('Connect with Me', style: Get.theme.textTheme.titleLarge),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIconButton(
                icon: Icons.link,
                onPressed: () => controller.launchURL(AppConstants.linkedinUrl),
              ),
              SocialIconButton(
                icon: Icons.code,
                onPressed: () => controller.launchURL(AppConstants.githubUrl),
              ),
              SocialIconButton(
                icon: Icons.message,
                onPressed: () => controller.launchURL(AppConstants.twitterUrl),
              ),
              SocialIconButton(
                icon: Icons.facebook,
                onPressed: () => controller.launchURL(AppConstants.facebookUrl),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
