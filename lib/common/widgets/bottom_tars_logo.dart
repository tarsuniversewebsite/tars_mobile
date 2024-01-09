import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/color_constants.dart';
import '../providers/theme_provider.dart';

class BottomTarsLogo extends ConsumerWidget {
  const BottomTarsLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeProvider);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SvgPicture.asset(
        'assets/svgs/tars_logo.svg',
        height: 55,
        colorFilter: ColorFilter.mode(
            themeController == ThemeMode.light
                ? ColorConstants.grey
                : ColorConstants.white,
            BlendMode.srcIn),
      ),
    );
  }
}
