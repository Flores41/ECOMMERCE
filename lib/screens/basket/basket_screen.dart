import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/widgets.dart';

class BasketScreen extends StatelessWidget {
  static BasketScreen builder(BuildContext context, GoRouterState state) {
    return const BasketScreen();
  }

  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = context.width;
    final sizeHeight = context.height;
    final colors = context.colorScheme.primary;
    final colorScheme = context.colorScheme;
    return Scaffold(
      body: Column(
        children: [
          ShowSquare(
            width: sizeWidth,
            height: sizeHeight * 0.17,
            colors: colors.primary,
            child: Padding(
              padding: EdgeInsets.only(top: sizeHeight * 0.07, left: 15),
              child: Row(
                children: [
                  RectangleContainer(
                    colors: colorScheme.surface,
                    width: sizeWidth * 0.22,
                    height: sizeHeight * 0.05,
                    radius: 200,
                    padding: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: colors.black,
                          size: 20,
                        ),
                        DisplayWhiteText(
                          text: 'Go back',
                          textColor: colors.black,
                          fontSize: 10,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const Gap(30),
                  DisplayWhiteText(
                    text: 'My Basket',
                    textColor: colorScheme.surface,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
