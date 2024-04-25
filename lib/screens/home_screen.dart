import 'package:ecommerce_01/utils/utils.dart';
import 'package:ecommerce_01/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../data/data.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme.primary;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ShowAppBar(),
            const Gap(10),
            DisplayWhiteText(
              text: 'Hello Jose, What fruit salad combo  do you want today?',
              fontSize: 18,
              textColor: colors.black,
              fontWeight: FontWeight.w200,
              heightText: 1.7,
              paddingHorizonal: 10,
            ),
            const Gap(20),
            const ShowForm(
              labelText: 'Fruit Salad Combo',
              hintText: 'Enter your fruit salad combo',
              keyboardType: TextInputType.text,
              isVisble: false,
              icon: Icons.search,
              paddingHorizonal: 10,
            ),
            DisplayWhiteText(
              text: 'Recomended Combo',
              fontSize: 18,
              textColor: colors.black,
              fontWeight: FontWeight.bold,
              heightText: 1.7,
              paddingHorizonal: 10,
            ),
            ShowCombo(
              itemCount: combo,
              onTap: () {
                context.go('/details');
              },
            ),
            const ShowTabBar()
          ],
        ),
      ),
    );
  }
}
