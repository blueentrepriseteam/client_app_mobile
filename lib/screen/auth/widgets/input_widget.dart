import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:client_app_mobile/core/utils/input_decoration.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatelessWidget {
  final String? hintText;
  final String? label;
  final Widget? suffixIcon;
  final bool isPassword;
  const InputWidget({
    super.key,
    this.hintText,
    this.label,
    this.suffixIcon,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return label == null
        ? _fieldWidet(context)
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label!,
                style: GoogleFonts.plusJakartaSans(
                  textStyle: context.theme.textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.normal,
                    fontSize: context.sizeFromHeight(12),
                  ),
                ),
              ),
              context.vSpace(10),
              _fieldWidet(context),
            ],
          );
  }

  TextField _fieldWidet(BuildContext context) {
    return TextField(
      onTapOutside: (e) => FocusScope.of(context).unfocus(),
      obscureText: isPassword,
      cursorColor: Colors.grey,
      decoration: InputDecorationUtils.getInputDecoration(
        suffixIcon: suffixIcon,
        context,
        hintText: hintText,
      ),
    );
  }
}
