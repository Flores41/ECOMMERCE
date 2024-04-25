import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/widgets.dart';

class AuthenticationScreen extends StatelessWidget {
  static AuthenticationScreen builder(
      BuildContext context, GoRouterState state) {
    return const AuthenticationScreen();
  }

  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = context.width;
    final sizeheight = context.height;
    final colors = context.colorScheme.primary;
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ShowSquare(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              width: sizeWidth,
              height: sizeheight * 0.6,
              colors: colors.primary,
              image: const Column(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/authentication.png',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DisplayWhiteText(
                  text: 'What is your firstname?',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  textColor: colors.title,
                ),
                const Gap(20),
                const ShowForm(
                  hintText: 'Core',
                  labelText: 'Nombre',
                  keyboardType: TextInputType.text,
                  isVisble: true,
                ),
                const Gap(20),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
