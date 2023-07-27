import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assignment/app_colors.dart';
import 'package:hyperhire_assignment/hyperhire.dart';

class HyperHireBottomBar extends StatelessWidget {
  const HyperHireBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: SvgPicture.asset(AppData.imageIconAssetUrl),
      title: const Text(
        AppData.bottombarActionText,
        style: TextStyle(
          color: AppColors.textingColor,
          fontSize: 12,
        ),
      ),
      trailing: const Text(
        AppData.bottombarTrailingActionText,
        style: TextStyle(
          color: AppColors.subPartColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
