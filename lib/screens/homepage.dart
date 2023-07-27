import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assignment/appColors.dart';
import 'package:hyperhire_assignment/appbar/hyperhire_appbar.dart';
import 'package:hyperhire_assignment/hyperhire.dart';
import 'package:hyperhire_assignment/widgets/feed_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HyperHireAppBar(),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: AppData.mockData.length,
                  itemBuilder: (context, index) => FeedCard(
                    itemData: AppData.mockData[index],
                  ),
                ),
              ),
              const Divider(
                height: 0,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                leading: SvgPicture.asset(AppData.imageIconAssetUrl),
                title: const Text(
                  "댓글을 남겨주세요.",
                  style: TextStyle(
                    color: AppColors.textingColor,
                    fontSize: 12,
                  ),
                ),
                trailing: const Text(
                  "등록",
                  style: TextStyle(
                    color: AppColors.subPartColor,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
