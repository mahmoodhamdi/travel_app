import 'package:flutter/material.dart';
import 'package:travel_app/core/misc/colors.dart';
import 'package:travel_app/core/widgets/app_large_text.dart';
import 'package:travel_app/core/widgets/app_text.dart';
import 'package:travel_app/core/widgets/responsive_button.dart';
import 'package:travel_app/features/onboarding/data/model/onboarding_page_model.dart';

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
            return Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(pages[index].imagePath),
                )),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppLargeText(text: pages[index].title),
                            AppText(text: pages[index].subtitle, size: 30),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 250,
                              child: AppText(
                                text: pages[index].description,
                                color: AppColors.textColor2,
                                size: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const ResponsiveButton(),
                          ],
                        ),
                        Column(
                            children: List.generate(
                                3,
                                (dotsIndex) => Container(
                                    margin: const EdgeInsets.only(bottom: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: dotsIndex == index? AppColors.mainColor: AppColors.mainColor.withOpacity(0.3)),
                                    width: 8,
                                    height: dotsIndex == index ? 25 : 8)))
                      ]),
                ));
          }),
    );
  }
}
