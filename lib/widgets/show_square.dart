
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowSquare extends StatelessWidget {
  const ShowSquare({
    super.key,
    this.image,
    this.colors,
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
    this.width,
    this.height,
    this.child,
    this.paddingBottom,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
  });

  final Widget? image;
  final Widget? child;
  final Color? colors;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;
  final double? width;
  final double? height;
  final double? paddingBottom;
  final  MainAxisAlignment? mainAxisAlignment;
  final  CrossAxisAlignment? crossAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ?? 0.0),
          topRight: Radius.circular(topRight ?? 0.0),
          bottomLeft: Radius.circular(bottomLeft ?? 0.0),
          bottomRight: Radius.circular(bottomRight ?? 0.0),
        ),
      ),
      child: Padding(
          padding:  EdgeInsets.only(bottom: paddingBottom ?? 0),
          child: Column(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            children: [
              image ?? const Gap(0),
              
              child ?? const Gap(0),
            ],
          )),
    );
  }
}
