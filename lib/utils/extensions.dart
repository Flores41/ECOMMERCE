import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension ColorExtension on Color {
  Color get primary => const Color(0xffffa451);
  Color get title => const Color(0xFF27214d);
  Color get subTitle => const Color(0xff5d577e);
  Color get sombra => const Color(0xFFf08626);
  Color get form => const Color(0xfff3f1f1);
  Color get black => const Color(0xff000000);
}