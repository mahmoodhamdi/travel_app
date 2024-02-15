import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_large_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
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
            height: 40,
          ),
          AppLargeText(text: "Discover"),
          const SizedBox(
            height: 30,
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
              Container(
                child: const Text("Places"),
              ),
              Container(
                child: const Text("Inspirations"),
              ),
              Container(
                child: const Text("Emotions"),
              ),
            ]),
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
