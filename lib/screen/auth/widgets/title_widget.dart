import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        textStyle: context.theme.textTheme.headlineLarge!.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: context.sizeFromHeight(34),
        ),
      ),
    );
  }
}
