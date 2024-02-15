import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_large_text.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/features/home/data/model/place_model.dart';
import 'package:travel_app/features/home/data/model/travel_model.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black54,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          AppLargeText(text: "Discover"),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
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
          ),
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: tabController, children: [
              ListView.builder(
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
                  }),
              Container(
                child: const Text("Inspirations"),
              ),
              Container(
                child: const Text("Emotions"),
              ),
            ]),
          ),
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
          SizedBox(
            height: 110,
            width: double.maxFinite,
            child: ListView.builder(
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
          )
        ],
      ),
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;
  const CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    Offset circleOffset = Offset(
        offset.dx + configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, paint);
  }
}
