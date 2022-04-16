import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/dimen.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback? callback;
  final String text;

  const DefaultButton({Key? key, this.callback, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: AppColor.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimen.margin),
            )),
        onPressed: callback,
        child: Padding(
          padding: const EdgeInsets.all(Dimen.margin),
          child: Text(text),
        ));
  }
}
