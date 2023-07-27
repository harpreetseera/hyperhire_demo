import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assignment/app_colors.dart';
import 'package:hyperhire_assignment/hyperhire.dart';
import 'package:hyperhire_assignment/widgets/icon_with_number.dart';

/// Generic ListTile widget to show custom data in same listtile format with ticks and trailing widgets
class FeedListTile extends StatelessWidget {
  final String title;
  final String titleSubPart;
  final bool tickAvailable;
  final bool isThreeDotAtTrailing;
  final String? subtTitle;
  final String? actionTitle;
  final String customAvatarUrl;

  const FeedListTile({
    super.key,
    required this.title,
    required this.titleSubPart,
    this.tickAvailable = true,
    this.isThreeDotAtTrailing = false,
    this.subtTitle,
    this.actionTitle,
    this.customAvatarUrl = AppData.cavatarAssetUrl,
  });
  @override
  Widget build(BuildContext context) {
    const captionStyle = TextStyle(
      color: AppColors.subPartColor,
      fontSize: 12.0,
    );
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      visualDensity: VisualDensity.compact,
      leading: Image.asset(
        customAvatarUrl,
        width: 34,
        height: 34,
      ),
      title: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Offstage(
                offstage: !tickAvailable,
                child: SvgPicture.asset(AppData.tickIconAssetUrl)),
          ),
          Text(
            titleSubPart,
            style: captionStyle,
          ),
        ],
      ),
      subtitle: subtTitle != null
          ? Text(
              subtTitle!,
              style: captionStyle,
            )
          : const Offstage(),
      trailing: isThreeDotAtTrailing
          ? IconWithNumber(
              assetUrl: AppData.threeDotIconAssetUrl,
            )
          : Container(
              decoration: BoxDecoration(
                color: AppColors.appColor,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
                child: Text(
                  actionTitle!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
    );
  }
}
