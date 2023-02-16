import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ludu/apps/components/navbar.dart';
import 'package:ludu/apps/experience/experience.dart';
import 'package:ludu/general/constants/constants.dart';
import 'package:ludu/general/utils/asset_path.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/general/utils/style.dart';
import 'package:ludu/widgets/appbar/k_appbar.dart';
import 'package:ludu/widgets/button/k_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black87,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: KColor.primary,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              alignment: Alignment.center,
              child: const Center(child: KNavbar()),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: KColor.secondary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ExperienceScreen()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
