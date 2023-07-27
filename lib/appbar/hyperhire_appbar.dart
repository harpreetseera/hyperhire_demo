import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assignment/hyperhire.dart';

/// Createed a custom appbar for the application so that any type of customisation remains segregated
class HyperHireAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HyperHireAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    const appBarTitle = "자유톡";
    return AppBar(
      centerTitle: true,
      title: const Text(
        appBarTitle,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const Icon(Icons.arrow_back_ios_rounded),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 0,
          ),
          child: SvgPicture.asset(AppData.bellIconUrl),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
