import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Container();
        }
        return Column(
          children: [
            Text(
              "Version ${snapshot.data?.version}",
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "© ${DateTime.now().year} ${snapshot.data?.appName}",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        );
      },
    );
  }
}
