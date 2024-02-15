import 'package:flutter/material.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_page_model.dart';
import 'package:travel_app/features/onboarding/widgets/page_view_item.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    List<OnboardingPageModel> pages = [
      OnboardingPageModel(
        title: 'Tips',
        subtitle: 'Mountain',
        description:
            'mountain hikes give you an incredible sense of freedom along with endurance test',
        imagePath: 'assets/images/welcome-one.png',
      ),
      OnboardingPageModel(
        subtitle: 'Mountain',
        title: 'Travel',
        description: 'Montain is the most beautiful place in the world. ',
        imagePath: 'assets/images/welcome-two.png',
      ),
      OnboardingPageModel(
        title: 'Travel',
        subtitle: 'Mountain',
        description:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
        imagePath: 'assets/images/welcome-three.png',
      )
    ];
    return Scaffold(
      body: PageView.builder(
          itemCount: pages.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return PageViewItem(pages: pages, index: index);
          }),
    );
  }
}
