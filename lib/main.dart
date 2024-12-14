import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wm1/controllers/provider.dart';
import 'package:wm1/views/screen/auth/auth.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
