import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class ContentText extends StatelessWidget {

  final String text;

  const ContentText({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(text, style: TextStyle(fontSize: 22, color: Colors.grey[700], height: 1.5),);
  }
}