import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ludu/apps/experience/experience.dart';
import 'package:ludu/general/constants/constants.dart';
import 'package:ludu/general/utils/asset_path.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/general/utils/style.dart';
import 'package:ludu/widgets/appbar/k_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: KAppBar(),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: 1150,
              child: Column(
                children: [
                  Container(
                    height: context.screenHeight * 0.5,
                    width: context.screenWidth,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(AssetPath.background),
                        opacity: 0.12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hello, I'm Sadia Afrin",
                                style: KTextStyle.headline2
                                    .copyWith(color: KColor.white),
                              ),
                              const SizedBox(height: 12),
                              Flexible(
                                child: Text(
                                  bodyContent,
                                  style: KTextStyle.title3.copyWith(
                                    color: KColor.white.withOpacity(0.8),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: context.screenWidth * 0.4,
                                child: DefaultTextStyle(
                                  style: KTextStyle.headline1.copyWith(
                                      color: KColor.white.withOpacity(0.6)),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                          '1+ year Experience | Mobile App Developer'),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          child: Image.asset(
                            AssetPath.portfolio,
                            height: context.screenHeight * 0.5,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      ],
                    ),
                  ),
                  const ExperienceScreen(),
                  Container(
                    height: context.screenHeight,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
