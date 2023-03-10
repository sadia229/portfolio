import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ludu/apps/components/navbar.dart';
import 'package:ludu/general/utils/asset_path.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/widgets/button/k_button.dart';

class KAppBar extends StatelessWidget {
  const KAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: KColor.background,
      elevation: 0,
      centerTitle: true,
      title: SizedBox(
        width: context.screenWidth * 0.5,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AssetPath.logo, height: 30),
              const KNavbar(),
            ],
          ),
        ),
      ),
    );
  }
}
