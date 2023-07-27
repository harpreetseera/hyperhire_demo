import 'package:flutter/material.dart';
import 'package:hyperhire_assignment/appbar/hyperhire_appbar.dart';
import 'package:hyperhire_assignment/hyperhire.dart';
import 'package:hyperhire_assignment/widgets/bottom_bar.dart';
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
              const HyperHireBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
