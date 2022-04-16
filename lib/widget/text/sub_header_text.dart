import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class SubHeaderText extends StatelessWidget {

  final String text;

  const SubHeaderText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(text, style: TextStyle(fontSize: 24, color: AppColor.textBlack, fontWeight: FontWeight.bold),);
  }
}