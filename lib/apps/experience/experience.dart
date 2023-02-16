
import 'package:flutter/material.dart';
import 'package:ludu/general/constants/constants.dart';
import 'package:ludu/widgets/button/experience_btn.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 30.0,
            childAspectRatio: 38 / 5,
          ),
          itemCount: officeImg.length,
          itemBuilder: (context, index) {
            return ExperienceBtn(
              image: officeImg[index],
              name: officeName[index],
              address: officeaddress[index],
              duration: officeDuration[index],
            );
          },
        ),
      ],
    );
  }
}
