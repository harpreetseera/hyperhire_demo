import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assignment/appColors.dart';

class IconWithNumber extends StatelessWidget {
  final String assetUrl;
  final int? count;
  final IconData? customIcon;
  final bool isSizeLowered;

  const IconWithNumber({
    super.key,
    required this.assetUrl,
    this.customIcon,
    this.count,
    this.isSizeLowered = false,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (customIcon != null)
          Icon(
            size: isSizeLowered ? 20 : 26,
            customIcon,
            color: const Color(0xffAFB9CA),
          )
        else
          SvgPicture.asset(
            assetUrl,
            width: isSizeLowered ? 22 : 32,
            height: isSizeLowered ? 22 : 32,
          ),
        if (count != null)
          Text(
            count!.toString(),
            style: TextStyle(
              color: AppColors.subPartColor,
              fontSize: isSizeLowered ? 9 : 12,
              fontFamily: "Roboto",
            ),
          ),
        const SizedBox(
          width: 4,
        )
      ],
    );
  }
}
