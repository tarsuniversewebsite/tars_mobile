import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tars_mobile/constants/color_constants.dart';

import '../providers/theme_provider.dart';

// class BankGothicUniverseText extends ConsumerWidget {
//   const BankGothicUniverseText({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final themeController = ref.watch(themeProvider);
//     return Text(
//       'UNIVERSE',
//       style: TextStyle(
//         fontFamily: 'BankGothic',
//         color: themeController == ThemeMode.light ? Colors.black : Colors.white,
//         fontSize: 48,
//       ),
//     );
//   }
// }

class BankGothicUniverseText extends ConsumerWidget {
  final Color? color;
  const BankGothicUniverseText({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeProvider);
    final textColor = color ??
        (themeController == ThemeMode.light
            ? ColorConstants.black
            : ColorConstants.white);
    return Text(
      'UNIVERSE',
      style: TextStyle(
        fontFamily: 'BankGothic',
        color: textColor,
        fontSize: 44,
      ),
    );
  }
}
