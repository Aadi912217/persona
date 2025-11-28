import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:my_profile_app/modules/welcome/welcome_controller.dart';
import 'package:my_profile_app/modules/welcome/welcome_view.dart';

void main() {
  testWidgets('WelcomeView has a title and a button', (WidgetTester tester) async {
    // Initialize the controller
    Get.put(WelcomeController());

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const GetMaterialApp(
        home: WelcomeView(),
      ),
    );

    // Verify that our title is present.
    expect(find.text('Welcome to My Profile'), findsOneWidget);

    // Verify that our button is present.
    expect(find.byType(ElevatedButton), findsOneWidget);
  });
}
