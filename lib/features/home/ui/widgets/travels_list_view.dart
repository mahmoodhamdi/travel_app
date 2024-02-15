import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/features/home/data/model/travel_model.dart';

class TravelsListView extends StatelessWidget {
  const TravelsListView({
    super.key,
    required this.travels,
  });

  final List<TravelModel> travels;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.maxFinite,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: travels.length,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(travels[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppText(
                        text: travels[index].name,
                        color: AppColors.textColor2,
                      )
                    ]));
          }),
    );
  }
}
