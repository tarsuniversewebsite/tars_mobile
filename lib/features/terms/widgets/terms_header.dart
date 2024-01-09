import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/providers/theme_provider.dart';
import '../../../constants/color_constants.dart';

class TermsHeader extends ConsumerWidget {
  final String headerText;
  const TermsHeader({
    super.key,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeController = ref.watch(themeProvider);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 10),
            child: SvgPicture.asset(
              'assets/svgs/tars_logo.svg',
              height: 45,
              colorFilter: ColorFilter.mode(
                  themeController == ThemeMode.light
                      ? ColorConstants.grey
                      : ColorConstants.white,
                  BlendMode.srcIn),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Text(
                headerText,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Opacity(
                opacity: 0.0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
