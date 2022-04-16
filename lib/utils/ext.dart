import 'package:flutter/material.dart';

class Ext {
  static void showSnackBar(String text, BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(text),
      ));

  static matchParentHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static matchParentWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static showLoading(BuildContext context, {String? message}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(
                  width: 24.0,
                ),
                Text(message ?? 'Loading...'),
              ],
            ),
          ),
        );
      },
    );
  }

  static dismissLoading(BuildContext context) => Navigator.pop(context);
}
