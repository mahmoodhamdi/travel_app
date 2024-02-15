import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_large_text.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/features/home/data/model/place_model.dart';
import 'package:travel_app/features/home/data/model/travel_model.dart';
import 'package:travel_app/features/home/ui/widgets/custom_tab_bar.dart';
import 'package:travel_app/features/home/ui/widgets/custom_tab_bar_view.dart';
import 'package:travel_app/features/home/ui/widgets/home_view_header.dart';
import 'package:travel_app/features/home/ui/widgets/travels_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    List<PlaceModel> places = [
      PlaceModel(
        name: "Cascades",
        image: "assets/images/mountain.jpeg",
        location: "Canada,Banff",
      ),
      PlaceModel(
        name: "Sydney",
        image: "assets/images/us.webp",
        location: "US,Sydney",
      ),
      PlaceModel(
        name: "Cascades",
        image: "assets/images/mountain.jpeg",
        location: "Canada,Banff",
      ),
    ];
    List<TravelModel> travels = [
      TravelModel(
        name: "Kayaking",
        image: "assets/images/kayaking.png",
      ),
      TravelModel(
        name: "Hiking",
        image: "assets/images/hiking.png",
      ),
      TravelModel(
        name: "Snorkeling",
        image: "assets/images/snorkling.png",
      ),
      TravelModel(
        name: "Ballooning",
        image: "assets/images/balloning.png",
      )
    ];
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewHeader(),
            const SizedBox(
              height: 30,
            ),
            AppLargeText(text: "Discover"),
            const SizedBox(
              height: 20,
            ),
            CustomTabBar(tabController: tabController),
            CustomTabBarView(tabController: tabController, places: places),
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              AppLargeText(
                text: "Explore more",
                size: 22,
              ),
              const SizedBox(
                width: 20,
              ),
              AppText(
                text: "See all",
                color: AppColors.textColor1,
              )
            ]),
            const SizedBox(
              height: 20,
            ),
            TravelsListView(travels: travels)
          ],
        ),
      ),
    ));
  }
}
