import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ludu/apps/components/navbar.dart';
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
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
          child: KAppBar()),
      body: Container(
        height: context.screenHeight * 0.4,
        color: KColor.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: KTextStyle.headline2.copyWith(color: KColor.white),
                ),
                const SizedBox(height: 12),
                Text(
                  'Hello',
                  style: KTextStyle.title3.copyWith(
                    color: KColor.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 12),
                DefaultTextStyle(
                  style: KTextStyle.headline3
                      .copyWith(color: KColor.white.withOpacity(0.6)),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Discipline is the best tool'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
