import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninWidget extends StatelessWidget {
  const SigninWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l10n.signupHaveAccount,
          style: GoogleFonts.inter(
            textStyle: context.theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.normal,
              fontSize: context.sizeFromHeight(12),
            ),
          ),
        ),
        context.hSpace(5),
        Text(
          l10n.signupLogin,
          style: GoogleFonts.inter(
            textStyle: context.theme.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.normal,
              color: Colors.blue.shade800,
              fontSize: context.sizeFromHeight(12),
            ),
          ),
        ),
      ],
    );
  }
}
