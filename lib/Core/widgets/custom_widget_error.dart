import 'package:booklyapp/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomWidgetError extends StatelessWidget {
  const CustomWidgetError({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(errMessage, style: Styles.textStyle18);
  }
}
