import 'package:ecommerce_01/utils/utils.dart';
import 'package:ecommerce_01/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class ShowTabBar extends StatefulWidget {
  const ShowTabBar({
    super.key,
  });

  @override
  State<ShowTabBar> createState() => _ShowTabBarState();
}

class _ShowTabBarState extends State<ShowTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme.primary;
    final sizeHeight = context.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TabBar(
          indicatorWeight: 2,
          controller: _tabController,
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          isScrollable: true,
          indicatorColor: colors.primary,
          labelColor: colors.black,
          physics: const BouncingScrollPhysics(),
          overlayColor:
              MaterialStateProperty.all(colors.primary.withOpacity(0.1)),
          tabs: const [
            Tab(
              text: 'Fruit Salad',
            ),
            Tab(
              text: 'Fruit Juice',
            ),
            Tab(
              text: 'Fruit Salad Combo',
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 0.33,
          width: double.infinity,
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            children: [
              const SizedBox(
                child: Center(
                  child: Text('Fruit Salad'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ShowCombo(
                      itemCount: hottest,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: Center(
                  child: Text('Fruit Salad Combo'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
