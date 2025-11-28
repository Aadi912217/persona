import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile_app/modules/about/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Education',
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.profile.value.education.length,
                itemBuilder: (context, index) {
                  final education = controller.profile.value.education[index];
                  return ListTile(
                    leading: const Icon(Icons.school),
                    title: Text(education.degree),
                    subtitle: Text(
                      '${education.institution} (${education.period})',
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            _buildSection(
              'Skills',
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: controller.profile.value.skills
                    .map((skill) => Chip(label: Text(skill)))
                    .toList(),
              ),
            ),
            const SizedBox(height: 24),
            _buildSection(
              'Hobbies',
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: controller.profile.value.hobbies
                    .map((hobby) => Chip(label: Text(hobby)))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Get.theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        content,
      ],
    );
  }
}
