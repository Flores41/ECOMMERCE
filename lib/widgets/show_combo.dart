import 'package:ecommerce_01/utils/utils.dart';
import 'package:ecommerce_01/widgets/widgets.dart';

import 'package:flutter/material.dart';


class ShowCombo extends StatelessWidget {
  const ShowCombo({
    super.key,
    this.itemCount,
    this.onTap,
  });
  final List? itemCount;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme.primary;
    final colorScheme = context.colorScheme;
    final sizeWidth = context.width;
    final sizeHeight = context.height;

    return SizedBox(
      height: sizeHeight * 0.32,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount!.length,
        itemBuilder: (context, index) {
          final data = itemCount![index];
         
          return InkWell(
            onTap: onTap,
            child: RectangleContainer(
              marginHoreizontal: 5,
              marginVertical: 15,
              width: sizeWidth * 0.43,
              colors: colorScheme.surface,
              radius: 15,
              padding: 0,
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withOpacity(0.12),
                  blurRadius: 10,
                  spreadRadius: 0,
                  offset: const Offset(-2, 5),
                )
              ],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 6,
                    right: sizeWidth * -0.32,
                    left: 0,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: colors.primary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Image.asset(data['image'],
                              height: sizeHeight * 0.11,
                              width: sizeWidth * 0.3),
                        ),
                        RectangleContainer(
                          width: sizeWidth,
                          height: sizeHeight * 0.05,
                          padding: 0,
                          child: DisplayWhiteText(
                            text: data['name'],
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            textColor: colors.black,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: RectangleContainer(
                            width: sizeWidth,
                            height: sizeHeight * 0.06,
                            padding: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DisplayWhiteText(
                                  text: '\$ ${data['price']}0',
                                  textColor: colors.primary,
                                  fontSize: 15,
                                ),
                                CircleContainer(
                                  width: 34,
                                  height: 34,
                                  colors: colors.primary.withOpacity(0.1),
                                  padding: 1,
                                  child: Icon(
                                    Icons.add,
                                    color: colors.primary,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
