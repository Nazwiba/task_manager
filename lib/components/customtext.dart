import 'package:flutter/material.dart';
import 'package:task_manager/widgets/constants.dart';

Widget customText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      color: kdark,
      fontWeight: FontWeight.bold,
    ),
  );
}
