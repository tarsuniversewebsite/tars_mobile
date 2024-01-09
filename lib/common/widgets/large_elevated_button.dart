import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LargeElevatedButton extends ConsumerWidget {
  final String title;
  final VoidCallback function;
  final Color bgColor;
  final Color textColor;
  const LargeElevatedButton({
    super.key,
    required this.title,
    required this.function,
    this.bgColor = Colors.black,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: const Size.fromHeight(45),
      ),
      onPressed: function,
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: textColor),
      ),
    );
  }
}
