import 'package:flutter/material.dart';
import 'package:ludu/apps/screens/home_screen.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: context.screenWidth,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      home: const HomeScreen(),
    );
  }
}
