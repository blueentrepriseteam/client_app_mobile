import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';

class InputDecorationUtils {
  static InputDecoration getInputDecoration(
    BuildContext context, {
    Color colorBorder = Colors.grey,
    String? label,
    String? hintText,
    Widget? icon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      prefix: icon,
      suffixIcon: suffixIcon,
      label: label != null ? Text(label) : null,
      hintText: hintText,
      hintStyle: TextStyle(
        color: const Color.fromRGBO(109, 106, 106, 1),
        fontSize: context.sizeFromHeight(12),
      ),
      labelStyle: TextStyle(
        color: const Color.fromRGBO(109, 106, 106, 1),
        fontSize: context.sizeFromHeight(14),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.red, width: 0.5),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: colorBorder),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: colorBorder),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: colorBorder),
      ),
    );
  }
}
