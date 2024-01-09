import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class AuthField extends StatelessWidget {
  final String text;
  final TextEditingController _controller;
  final String? Function(String?) validationLoigic;
  const AuthField({
    super.key,
    required TextEditingController controller,
    required this.text,
    required this.validationLoigic,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        validator: (value) => validationLoigic(value),
        controller: _controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 0, left: 10),
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          hintText: text,
        ),
      ),
    );
  }
}
