import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:healcardo_mobile/page/login/login_page.dart';
import 'package:healcardo_mobile/service/theme_service.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HealcardoApp());
}

class HealcardoApp extends StatelessWidget {
  const HealcardoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healcardo',
      theme: ThemeService.themeData,
      home: const LoginPage(),
    );
  }
}
