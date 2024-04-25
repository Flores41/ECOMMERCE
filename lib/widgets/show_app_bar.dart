import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';

class ShowAppBar extends StatelessWidget {
  const ShowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidth = context.width;
    final sizeHeight = context.height;
    final colors = context.colorScheme.primary;
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
      child: SizedBox(
        width: sizeWidth,
        height: sizeHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Icon(
              Icons.menu,
              color: colors.black,
              size: 30,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: colors.primary,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
