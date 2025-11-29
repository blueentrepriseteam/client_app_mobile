import 'package:client_app_mobile/core/widgets/copyright_widget.dart';
import 'package:client_app_mobile/gen/assets.gen.dart';
import 'package:client_app_mobile/screen/auth/widgets/export_auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:client_app_mobile/core/widgets/button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: context.sizeFromHeight(20)),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.blue.shade300, Colors.tealAccent],
            ),
          ),
          width: context.width,
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kToolbarHeight + 20),
              Image.asset(
                Assets.logo.logoApp.path,
                width: context.sizeFromHeight(101),
              ),
              context.vSpace(20),
              Container(
                width: context.width,
                padding: EdgeInsets.all(context.sizeFromHeight(20)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    TitleWidget(text: l10n.signinTitle),
                    context.vSpace(10),
                    SignupWidget(),
                    context.vSpace(30),
                    InputWidget(
                      label: l10n.signinEmailLabel,
                      hintText: l10n.signinEmailHint,
                    ),
                    context.vSpace(20),
                    InputWidget(
                      label: l10n.signinPasswordLabel,
                      isPassword: true,
                      hintText: l10n.signinPasswordHint,
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    context.vSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            Text(
                              l10n.signinRememberMe,
                              style: GoogleFonts.inter(
                                textStyle: context.theme.textTheme.bodyLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.normal,
                                      fontSize: context.sizeFromHeight(12),
                                    ),
                              ),
                            ),
                          ],
                        ),
                        context.hSpace(10),
                        Text(
                          l10n.signinForgotPassword,
                          style: GoogleFonts.inter(
                            textStyle: context.theme.textTheme.bodyLarge!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.blue.shade800,
                                  fontSize: context.sizeFromHeight(12),
                                ),
                          ),
                        ),
                      ],
                    ),
                    context.vSpace(20),
                    ButtonWidget(
                      height: context.sizeFromHeight(45),
                      background: Colors.blue.shade800,
                      child: Center(
                        child: Text(
                          l10n.signinButton,
                          style: GoogleFonts.inter(
                            textStyle: context.theme.textTheme.bodyLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: context.sizeFromHeight(14),
                                ),
                          ),
                        ),
                      ),
                    ),
                    context.vSpace(20),
                    DividerWithTextWidget(textSeparator: l10n.signinOrLabel),
                    context.vSpace(20),
                    SocialMediaWidget(socialMedia: SocialMedia.google),
                    context.vSpace(20),
                    SocialMediaWidget(socialMedia: SocialMedia.facebook),
                  ],
                ),
              ),
              Spacer(),
              CopyrightWidget(),
              context.vSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
