import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/color_constants.dart';
import '../providers/theme_provider.dart';

class RoundedElevatedButton extends ConsumerWidget {
  final String text;
  final Function onTap;
  const RoundedElevatedButton(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeProvider);
    return ElevatedButton(
      onPressed: () => onTap(),
      style: ElevatedButton.styleFrom(
        backgroundColor: themeController == ThemeMode.light
            ? ColorConstants.black
            : ColorConstants.white,
        foregroundColor: themeController == ThemeMode.light
            ? ColorConstants.white
            : ColorConstants.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(text),
      ),
    );
  }
}
