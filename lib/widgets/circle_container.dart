import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
     this.colors,
    this.child,
    this.boxShadow,
    this.padding,
    this.width,
    this.height,
    this.border,
    this.borderColor,
  });

  final Color? colors;
  final Widget? child;
  final List<BoxShadow>? boxShadow;
  final double? padding;
  final double? width;
  final double? height;
  final double? border;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width ?? 0 ,
      height: height ?? 0,
      padding: EdgeInsets.all(padding ?? 0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors,
        boxShadow: boxShadow,
        border: Border.all(
          width: border ?? 0.0,
          color: borderColor  ?? Colors.transparent,
        ),
      ),
      child: child,
    );
  }
}
