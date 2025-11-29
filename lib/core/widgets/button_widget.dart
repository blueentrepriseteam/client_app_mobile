import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final double? elevation;
  final Color? background;
  final double? radius;
  final Widget? icon;
  final BorderSide? side;
  final double? height;
  final double? width;

  const ButtonWidget({
    required this.child,
    this.onPressed,
    this.elevation,
    this.background,
    this.radius,
    this.icon,
    this.side,
    this.height,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            background ?? Theme.of(context).primaryColor,
          ),
          overlayColor: WidgetStateProperty.all<Color>(
            background ?? Theme.of(context).primaryColor,
          ),
          surfaceTintColor: WidgetStateProperty.all<Color>(
            background ?? Theme.of(context).primaryColor,
          ),
          elevation: WidgetStateProperty.all<double>(elevation ?? 5.0),
          shape: WidgetStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              side:
                  side ??
                  BorderSide(
                    color: background ?? Theme.of(context).primaryColor,
                    width: 1,
                  ),
              borderRadius: BorderRadius.circular(radius ?? 8),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: icon != null
                  ? const EdgeInsets.symmetric(horizontal: 5)
                  : null,
              child: icon,
            ),
            icon == null ? child : Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
