import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ludu/general/utils/colors.dart';
import 'package:ludu/general/utils/config.dart';
import 'package:ludu/general/utils/style.dart';

class ExperienceBtn extends StatelessWidget {
  const ExperienceBtn({
    super.key,
    this.image,
    this.name,
    this.address,
    this.duration,
  });

  final String? image;
  final String? name;
  final String? address;
  final String? duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: KColor.deepSecondary,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 0),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: context.screenWidth * 0.1,
            height: context.screenHeight * 0.1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: KColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(image!),
          ),
          const SizedBox(width: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!,
                style: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
              const SizedBox(height: 5),
              Text(
                address!,
                style: KTextStyle.title7.copyWith(
                  color: KColor.white.withOpacity(0.7),
                ),
              ),
              Text(
                duration!,
                style: KTextStyle.title7.copyWith(
                  color: KColor.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
