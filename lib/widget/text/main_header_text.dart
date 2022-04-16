import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class MainHeaderText extends StatelessWidget {

  final String text;

  const MainHeaderText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(text, style: TextStyle(fontSize: 32, color: AppColor.primary, fontWeight: FontWeight.bold),);
  }
}