import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_profile_app/routes/app_pages.dart';
import 'package:my_profile_app/routes/app_routes.dart';
import 'package:my_profile_app/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Profile',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: Routes.welcome,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
