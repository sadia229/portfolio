

import 'package:flutter/material.dart';
import 'package:ludu/general/utils/asset_path.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(AssetPath.profile),
          ),
          
        ],
      ),
    );
  }
}