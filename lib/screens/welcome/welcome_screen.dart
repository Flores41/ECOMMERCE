import 'package:ecommerce_01/utils/utils.dart';
import 'package:ecommerce_01/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:gap/gap.dart';

class WelcomeScreen extends StatelessWidget {
  static WelcomeScreen builder(BuildContext context, GoRouterState state) {
    return const WelcomeScreen();
  }

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = context.width;
    final sizeheight = context.height;
    final colors = context.colorScheme.primary;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            ShowSquare(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                width: sizeWidth,
                height: sizeheight * 0.6,
                colors: colors.primary,
                child: const Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'assets/images/welcome_one.png',
                      ),
                      alignment: Alignment.center,
                    ),
                    Gap(10),
                    Image(
                      image: AssetImage(
                        'assets/images/Ellipse.png',
                      ),
                      alignment: Alignment.center,
                    ),
                    Gap(20),
                  ],
                )),
            Gap(sizeheight * 0.06),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DisplayWhiteText(
                      text: 'Get The Freshest Fruit Salad Combo',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      textColor: colors.title,
                    ),
                    const Gap(20),
                    DisplayWhiteText(
                      text:
                          'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      textColor: colors.subTitle,
                      heightText: 2,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(20),
            RectangleContainer(
              height: sizeheight * 0.06,
              width: sizeWidth * 0.8,
              colors: colors.primary,
              radius: 10,
              onTap: () {
               context.push('/authentication');
         

              },
              child: const DisplayWhiteText(
                text: 'Let\'s Continue',
                fontSize: 13,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}








