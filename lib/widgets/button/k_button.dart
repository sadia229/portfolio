import 'package:flutter/material.dart';
import 'package:ludu/general/utils/style.dart';

class KButton extends StatelessWidget {
  const KButton({
    super.key,
    this.btnColor,
    this.btnText,
    this.width,
    this.textColor,
  });
  final Color? btnColor;
  final Color? textColor;
  final String? btnText;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          btnText!,
          style: KTextStyle.title4.copyWith(color: textColor),
        ),
      ),
    );
  }
}
