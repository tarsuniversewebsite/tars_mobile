import 'package:flutter/material.dart';
import 'package:phone_input/phone_input_package.dart';

import '../constants/color_constants.dart';

void showSnackbar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

Container showPhoneInput(PhoneController controller) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        style: BorderStyle.solid,
        color: ColorConstants.grey,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: PhoneInput(
      key: const Key('phone-field'),
      controller: controller,
      shouldFormat: true,
      defaultCountry: IsoCode.BD,
      countrySelectorNavigator: const CountrySelectorNavigator.bottomSheet(),
      validator: PhoneValidator.validMobile(),
      isCountrySelectionEnabled: true,
      showFlagInInput: true,
      flagShape: BoxShape.circle,
      showArrow: true,
      flagSize: 16,
      autofillHints: const [AutofillHints.telephoneNumber],
      decoration: const InputDecoration(
        border: InputBorder.none,
        enabled: true,
      ),

      // onSaved: (PhoneNumber p) => print('saved $p'),
      // onChanged: (PhoneNumber p) => print('changed $p'),
    ),
  );
}
