import 'package:flutter/material.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/general/utils/style.dart';

class KNavbar extends StatelessWidget {
  const KNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildOptions(Icons.ad_units, 'Experience'),
        SizedBox(height: context.screenHeight * 0.03),
        _buildOptions(Icons.ad_units, 'Portfolio'),
        SizedBox(height: context.screenHeight * 0.03),
        _buildOptions(Icons.ad_units, 'Skills'),
        SizedBox(height: context.screenHeight * 0.03),
        _buildOptions(Icons.ad_units, 'Education'),
        SizedBox(height: context.screenHeight * 0.03),
        _buildOptions(Icons.ad_units, 'About'),
      ],
    );
  }

  Row _buildOptions(icon, options) {
    return Row(
      children: [
        Icon(icon, color: KColor.white.withOpacity(0.7), size: 20),
        const SizedBox(width: 25),
        Text(
          options,
          style: KTextStyle.title3.copyWith(
            color: KColor.white.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
