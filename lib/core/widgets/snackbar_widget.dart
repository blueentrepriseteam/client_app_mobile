import 'package:flutter/material.dart';

class SnackBarWidget {
  late final BuildContext context;

  SnackBarWidget(this.context);

  SnackBar _snackBar(
    String text, {
    Color bgColor = Colors.green,
    Color textColor = Colors.white,
    Widget? icon,
  }) {
    return SnackBar(
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      content: Row(
        children: [
          if (icon != null) icon,
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  void snackBarMessage({
    required String message,
    Color? bgColor,
    Color? textColor,
  }) {
    var snackbar = _snackBar(
      message,
      bgColor: bgColor ?? Theme.of(context).primaryColor,
      textColor: textColor ?? Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void error({required String message}) {
    var snackbar = _snackBar(
      message,
      icon: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.error, color: Colors.white),
      ),
      bgColor: Colors.red,
      textColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void warning({required String message}) {
    var snackbar = _snackBar(
      message,
      icon: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.error, color: Colors.white),
      ),
      bgColor: Colors.orange,
      textColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void success({required String message}) {
    var snackbar = _snackBar(
      message,
      icon: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Icon(Icons.check_circle, color: Colors.white),
      ),
      bgColor: Colors.green,
      textColor: Colors.white,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
