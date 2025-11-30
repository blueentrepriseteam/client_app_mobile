import 'package:client_app_mobile/core/widgets/button_widget.dart';
import 'package:client_app_mobile/screen/auth/widgets/export_auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kToolbarHeight + 20),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.all(context.sizeFromHeight(20)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () => context.pop(),
                          icon: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                      context.vSpace(20),
                      TitleWidget(text: l10n.signupTitle),
                      context.vSpace(10),
                      const SigninWidget(),
                      context.vSpace(30),
                      InputWidget(
                        label: l10n.signupEmailLabel,
                        hintText: l10n.signupEmailHint,
                      ),
                      context.vSpace(20),
                      InputWidget(
                        label: l10n.signupPasswordLabel,
                        isPassword: true,
                        hintText: l10n.signupPasswordHint,
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      context.vSpace(20),
                      InputWidget(
                        label: l10n.signupConfirmPasswordLabel,
                        isPassword: true,
                        hintText: l10n.signupConfirmPasswordHint,
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      context.vSpace(20),
                      ButtonWidget(
                        height: context.sizeFromHeight(45),
                        background: Colors.blue.shade800,
                        child: Center(
                          child: Text(
                            l10n.signupButton,
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
                      const SocialMediaWidget(socialMedia: SocialMedia.google),
                      context.vSpace(20),
                      const SocialMediaWidget(
                        socialMedia: SocialMedia.facebook,
                      ),
                    ],
                  ),
                ),
              ),
              context.vSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
