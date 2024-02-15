import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/helpers/circle_tab_indicator.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        labelColor: Colors.black,
        labelPadding: const EdgeInsets.only(left: 20, right: 20),
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: const CircleTabIndicator(
          color: AppColors.mainColor,
          radius: 4,
        ),
        dividerHeight: 0,
        controller: tabController,
        tabs: const [
          Tab(
            text: "Places",
          ),
          Tab(
            text: "Inspirations",
          ),
          Tab(
            text: "Emotions",
          ),
        ],
      ),
    );
  }
}
