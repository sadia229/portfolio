import 'package:flutter/material.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/general/utils/style.dart';

class KNavbar extends StatelessWidget {
  const KNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Text(
          'Experience',
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
        SizedBox(width: context.screenWidth * 0.03),
        Text(
          'Portfolio',
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
        SizedBox(width: context.screenWidth * 0.03),
        Text(
          'Skills',
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
        SizedBox(width: context.screenWidth * 0.03),
        Text(
          'Education',
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
        SizedBox(width: context.screenWidth * 0.03),
        Text(
          'About',
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
