import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_works/app/services/repository/course.dart';

import 'app/screens/bottom_nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AnimatedBottomBar(),
      ),
    );
  }
}
