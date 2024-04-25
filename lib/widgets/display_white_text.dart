import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';


class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText({
    super.key,
    required this.text,
     this.fontSize,
     this.fontWeight,
      this.textColor,
      this.textAlign,
      this.heightText,
      this.paddingHorizonal,
      this.paddingVertical,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? textAlign;
  final double? heightText;
  final double? paddingHorizonal;
  final double? paddingVertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: paddingHorizonal ?? 0, vertical: paddingVertical ?? 0),
      child: Text(
        text, textAlign: textAlign,
        style: context.textTheme.headlineSmall?.copyWith(
          color: textColor ?? context.colorScheme.surface,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.bold,
          height:heightText ?? 0.0,
          
        
        ),
      ),
    );
  }
}
