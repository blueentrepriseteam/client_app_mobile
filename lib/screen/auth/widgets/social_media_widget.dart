import 'package:client_app_mobile/config/l10n/generated/app_localizations.dart';
import 'package:client_app_mobile/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:client_app_mobile/core/extension/build_context_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMediaWidget extends StatelessWidget {
  final SocialMedia socialMedia;
  final bool withName;
  final bool withSimpleLabel;
  const SocialMediaWidget({
    super.key,
    required this.socialMedia,
    this.withName = true,
    this.withSimpleLabel = false,
  });
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      height: context.sizeFromHeight(45),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: withName
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _iconWidget(),
                context.hSpace(10),
                Text(
                  withSimpleLabel
                      ? socialMedia.simplelabel(l10n)
                      : socialMedia.label(l10n),
                  style: GoogleFonts.inter(
                    textStyle: context.theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: context.sizeFromHeight(12),
                    ),
                  ),
                ),
              ],
            )
          : _iconWidget(),
    );
  }

  Widget _iconWidget() => Image.asset(socialMedia.getIcon());
}

enum SocialMedia {
  facebook,
  google,
  apple;

  String label(AppLocalizations l10n) {
    switch (this) {
      case SocialMedia.facebook:
        return l10n.socialContinueWithFacebook;
      case SocialMedia.google:
        return l10n.socialContinueWithGoogle;
      case SocialMedia.apple:
        return l10n.socialContinueWithApple;
    }
  }

  String simplelabel(AppLocalizations l10n) {
    switch (this) {
      case SocialMedia.facebook:
        return l10n.socialFacebook;
      case SocialMedia.google:
        return l10n.socialGoogle;
      case SocialMedia.apple:
        return l10n.socialApple;
    }
  }

  String getIcon() {
    switch (this) {
      case SocialMedia.facebook:
        return Assets.icons.facebook.path;
      case SocialMedia.google:
        return Assets.icons.google.path;
      case SocialMedia.apple:
        return Assets.icons.apple.path;
    }
  }
}
