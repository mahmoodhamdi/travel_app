import 'package:flutter/material.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/features/home/data/model/place_model.dart';

class PlacesListView extends StatelessWidget {
  const PlacesListView({
    super.key,
    required this.places,
  });

  final List<PlaceModel> places;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 15, top: 10),
            width: 200,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(places[index].image),
                  fit: BoxFit.cover,
                )),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: places[index].name,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      AppText(
                        text: places[index].location,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
