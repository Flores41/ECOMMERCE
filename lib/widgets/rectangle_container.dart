import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';

class RectangleContainer extends StatelessWidget {
  const RectangleContainer({
    super.key,
    this.colors,
    this.child,
    this.boxShadow,
    this.radius,
    this.padding,
    this.onTap,
    this.width,
    this.height,
    this.marginHoreizontal,
    this.marginVertical,
  });

  final Color? colors;
  final Widget? child;
  final List<BoxShadow>? boxShadow;
  final double? radius;
  final double? padding;
  final Function()? onTap;
  final double? width;
  final double? height;
  final double? marginHoreizontal;
  final double? marginVertical;

  @override
  Widget build(BuildContext context) {
    final sizeWidth = context.width;
    final sizeHeight = context.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: marginHoreizontal ?? 0, vertical: marginVertical ?? 0),
        width: width ?? sizeWidth * 0.8,
        height: height ?? sizeHeight * 0.06,
        padding: EdgeInsets.all(padding ?? 15),
        decoration: BoxDecoration(
          color: colors,
          boxShadow: boxShadow,
          borderRadius: BorderRadius.circular(radius ?? 00),
        ),
        child: child,
      ),
    );
  }
}
