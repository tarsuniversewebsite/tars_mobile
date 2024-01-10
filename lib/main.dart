import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tars_mobile/constants/color_constants.dart';

import 'common/providers/theme_provider.dart';
import 'features/onboarding/views/onboarding_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: ColorConstants.white,
          foregroundColor: ColorConstants.white,
          surfaceTintColor: ColorConstants.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: ColorConstants.white,
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'SfProDisplay',
            ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'SfProDisplay',
            ),
      ),
      themeMode: themeMode,
      // theme: ThemeData(
      //   fontFamily: 'SfProDisplay',
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () => ref.read(themeProvider.notifier).toggleTheme(),
      //     child: const Text('Toggle Theme'),
      //   ),
      // ),
      home: const OnboardingView(),
    );
  }
}



// Container(
//           decoration: BoxDecoration(
//             border: Border.all(width: 1, style: BorderStyle.solid),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: PhoneInput(
//             key: const Key('phone-field'),
//             controller: null,
//             initialValue: null,
//             shouldFormat: true,
//             defaultCountry: IsoCode.BD,
//             countrySelectorNavigator:
//                 const CountrySelectorNavigator.bottomSheet(),
//             validator: PhoneValidator.validMobile(),
//             isCountrySelectionEnabled: true,
//             showFlagInInput: true,
//             flagShape: BoxShape.circle,
//             showArrow: true,
//             flagSize: 16,
//             autofillHints: const [AutofillHints.telephoneNumber],
//             decoration: const InputDecoration(
//               border: InputBorder.none,
//               enabled: true,
//             ),

//             // onSaved: (PhoneNumber p) => print('saved $p'),
//             // onChanged: (PhoneNumber p) => print('changed $p'),
//           ),
//         ),