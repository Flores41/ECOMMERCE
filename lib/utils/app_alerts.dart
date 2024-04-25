import 'package:ecommerce_01/utils/utils.dart';
import 'package:flutter/material.dart';


@immutable
class AppAlerts {
  const AppAlerts._();

  static displaySnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.colorScheme.surface,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            height: 1.5
          
        )),
        backgroundColor: context.colorScheme.primary.primary,
      ),
    );
  }

}