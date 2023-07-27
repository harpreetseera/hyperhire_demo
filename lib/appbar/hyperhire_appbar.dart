import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assignment/hyperhire.dart';

class HyperHireAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HyperHireAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "자유톡",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
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
