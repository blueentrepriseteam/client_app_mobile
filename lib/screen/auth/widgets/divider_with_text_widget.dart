import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerWithTextWidget extends StatelessWidget {
  final String textSeparator;
  final bool withDivider;
  const DividerWithTextWidget({
    super.key,
    required this.textSeparator,
    this.withDivider = true,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: withDivider
          ? Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade200, thickness: 1),
                ),
                context.hSpace(10),
                _textWidget(context),
                context.hSpace(10),
                Expanded(
                  child: Divider(color: Colors.grey.shade200, thickness: 1),
                ),
              ],
            )
          : _textWidget(context),
    );
  }

  Text _textWidget(BuildContext context) {
    return Text(
      textSeparator,
      style: GoogleFonts.inter(
        textStyle: context.theme.textTheme.bodyLarge!.copyWith(
          color: Colors.grey.shade600,
          fontWeight: FontWeight.normal,
          fontSize: context.sizeFromHeight(12),
        ),
      ),
    );
  }
}
