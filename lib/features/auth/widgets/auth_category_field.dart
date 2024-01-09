import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class AuthCategoryField extends StatefulWidget {
  const AuthCategoryField({super.key});

  @override
  AuthCategoryFieldState createState() => AuthCategoryFieldState();
}

class AuthCategoryFieldState extends State<AuthCategoryField> {
  String selectedOption = 'a';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            style: BorderStyle.solid,
            color: ColorConstants.grey,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          dense: true,
          title: const Text('Category'),
          trailing: IconButton(
            padding: const EdgeInsets.only(top: 0),
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: ColorConstants.grey,
            ),
            onPressed: () {
              showOptions();
            },
          ),
        ),
      ),
    );
  }

  void showOptions() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Select an option'),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  selectedOption = 'a';
                });
                Navigator.pop(context);
              },
              child: const Text('Option A'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  selectedOption = 'b';
                });
                Navigator.pop(context);
              },
              child: const Text('Option B'),
            ),
            CupertinoActionSheetAction(
              onPressed: () {
                setState(() {
                  selectedOption = 'c';
                });
                Navigator.pop(context);
              },
              child: const Text('Option C'),
            ),
          ],
        );
      },
    );
  }
}
