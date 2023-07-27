import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/app_colors.dart';
import 'package:hyperhire_assignment/hyperhire.dart';
import 'package:hyperhire_assignment/modal/feed_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:hyperhire_assignment/widgets/feed_list_tile.dart';
import 'package:hyperhire_assignment/widgets/icon_with_number.dart';

class FeedCard extends StatelessWidget {
  final FeedDataItem itemData;
  const FeedCard({
    super.key,
    required this.itemData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeedListTile(
                title: itemData.title,
                subtTitle: "${itemData.height} ･ ${itemData.weight}",
                actionTitle: itemData.actionTitle,
                titleSubPart: itemData.titleSubPart,
              ),
              Text(
                itemData.description,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                itemData.subDescription,
                style: const TextStyle(
                  color: AppColors.subDescriptionColor,
                  fontSize: 12,
                ),
              ),
              Wrap(
                children: [
                  for (final tag in itemData.tagList)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.tagBackgroundColor,
                          borderRadius: BorderRadius.circular(999),
                          border: Border.all(
                            color: AppColors.tagBorderColor,
                            width: 0.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          child: Text(
                            tag,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColors.tagTextColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Roboto",
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: CachedNetworkImage(
            imageUrl: itemData.imageUrl,
            fit: BoxFit.cover,
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.5,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              IconWithNumber(
                assetUrl: AppData.heartIconAssetUrl,
                count: itemData.likeCount,
                customIcon: Icons.favorite_border_rounded,
              ),
              IconWithNumber(
                assetUrl: AppData.commentIconAssetUrl,
                count: itemData.commentCount,
              ),
              IconWithNumber(
                assetUrl: AppData.saveIconAssetUrl,
              ),
              IconWithNumber(
                assetUrl: AppData.threeDotIconAssetUrl,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Divider(
            height: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeedListTile(
                title: itemData.commentTitle,
                actionTitle: itemData.actionTitle,
                titleSubPart: itemData.titleSubPart,
                isThreeDotAtTrailing: true,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 46.0, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemData.commentSubDescription,
                      style: const TextStyle(
                        color: AppColors.subDescriptionColor,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        IconWithNumber(
                          assetUrl: AppData.heartIconAssetUrl,
                          count: itemData.likeCount,
                          customIcon: Icons.favorite_border_rounded,
                          isSizeLowered: true,
                        ),
                        IconWithNumber(
                          assetUrl: AppData.commentIconAssetUrl,
                          count: itemData.commentCount,
                          isSizeLowered: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 46.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeedListTile(
                      customAvatarUrl: AppData.customAvatarAssetUrl,
                      title: itemData.commentReplyTitle,
                      titleSubPart: itemData.commentReplyTitleSubPart,
                      isThreeDotAtTrailing: true,
                      tickAvailable: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 46.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemData.commentReplySubDescription,
                            style: const TextStyle(
                              color: AppColors.subDescriptionColor,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              IconWithNumber(
                                assetUrl: AppData.heartIconAssetUrl,
                                count: itemData.likeCount,
                                customIcon: Icons.favorite_border_rounded,
                                isSizeLowered: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
