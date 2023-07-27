import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assignment/app_colors.dart';

/// Generic widget created to show icon with as number.
class IconWithNumber extends StatelessWidget {
  final String assetUrl;
  final int? count;

  /// Since on ef the SVG export was not working properly so I used a customIcon to take care of that.
  final IconData? customIcon;

  /// to lower down the icon and count size as it is being reused
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
            color: AppColors.textingColor,
          )
        else
          SvgPicture.asset(
            assetUrl,
            width: isSizeLowered ? 22 : 32,
            height: isSizeLowered ? 22 : 32,
          ),
        if (count != null)
          Padding(
            padding: const EdgeInsets.only(left: 2.0),
            child: Text(
              count!.toString(),
              style: TextStyle(
                color: AppColors.subPartColor,
                fontSize: isSizeLowered ? 9 : 12,

                ///Since custom fonbt is being used here.
                fontFamily: "Roboto",
              ),
            ),
          ),
        const SizedBox(
          width: 4,
        )
      ],
    );
  }
}
