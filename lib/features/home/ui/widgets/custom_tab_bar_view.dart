import 'package:flutter/material.dart';
import 'package:travel_app/features/home/data/model/place_model.dart';
import 'package:travel_app/features/home/ui/widgets/places_list_view.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.tabController,
    required this.places,
  });

  final TabController tabController;
  final List<PlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.maxFinite,
      child: TabBarView(controller: tabController, children: [
        PlacesListView(places: places),
        const Text("Inspirations"),
        const Text("Emotions"),
      ]),
    );
  }
}
