import 'package:flutter/material.dart';
import '../widgets/terms_header.dart';
import '../widgets/terms_text_helpers.dart';

class TermsConditionsView extends StatelessWidget {
  const TermsConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TermsHeader(headerText: 'Terms & Conditions'),
          // -------------------------------------------------------------------
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Last Updated: 11/30/2023',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'By accessing or using TARS UNIVERSE, you agree to abide by these Terms & Conditions. If you do not agree with any part of these terms, please do not use our website.',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                    headerAndBodyText(
                      headedText: '1. Acceptance of Terms',
                      bodyText:
                          'By accessing or using TARS UNIVERSE, you agree to be bound by these Terms & Conditions and all applicable laws and regulations.',
                    ),
                    // headerAndBodyBulletText(
                    //   headedText: '2. User Conduct',
                    //   bodyBullet: [
                    //     'We use your information for various purposes, including but not limited to:',
                    //     'Providing and improving our services',
                    //     'Personalizing your experience',
                    //     'Communicating with you',
                    //     'Analyzing usage data to enhance our website',
                    //   ],
                    // ),
                    headerAndBodyText(
                      headedText: '2. User Conduct',
                      bodyText:
                          'You agree to use TARS UNIVERSE for lawful purposes and in a way that does not infringe on the rights of others or interfere with the use of the website by others. Prohibited activities include but are not limited to:',
                    ),
                    headerAndBodyText(
                      headedText:
                          '2.1. Violating any applicable laws or regulations',
                      bodyText:
                          'Users of TARS UNIVERSE must adhere to all applicable laws and regulations while using the platform. Prohibited activities include, but are not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.1. Intellectual Property Violations',
                      bodyText:
                          'Users must not engage in any activities that infringe upon or violate the intellectual property rights of others. This includes but is not limited to unauthorized copying, distribution, or use of copyrighted materials, trademarks, or other proprietary information.',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.2. Unlawful Use',
                      bodyText:
                          'Users must not use TARS UNIVERSE for any unlawful or fraudulent purpose, including but not limited to engaging in illegal activities, violating export control laws, or participating in any form of online harassment.',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.3. Data Protection',
                      bodyText:
                          'Users are responsible for ensuring compliance with data protection laws applicable to their use of TARS UNIVERSE. This includes obtaining any necessary consents for the collection, processing, and storage of personal information.',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.4. Cybersecurity',
                      bodyText:
                          'Users must not attempt to compromise the security or integrity of TARS UNIVERSE. This includes but is not limited to hacking, distributing malware, or engaging in any activities that may disrupt the proper functioning of the platform.',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.5. False Information',
                      bodyText:
                          'Users must not provide false or misleading information when using TARS UNIVERSE. This includes but is not limited to creating fake accounts, impersonating others, or providing inaccurate details in any user profile.',
                    ),
                    headerAndBodyText(
                      headedText: '2.1.6.Unethical Conduct',
                      bodyText:
                          'Users must not engage in any behavior that is unethical or violates commonly accepted standards of conduct. This includes, but is not limited to, engaging in discriminatory practices, spreading hate speech, or participating in any form of online bullying. Violation of any applicable laws or regulations may result in the termination of your account and legal action as deemed necessary.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2 Harassing or harming others',
                      bodyText:
                          'Users of TARS UNIVERSE are expected to engage in respectful and responsible behavior. Prohibited activities include, but are not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.1. Harassment',
                      bodyText:
                          'Users must not engage in any form of harassment, including but not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.1.1',
                      bodyText:
                          'Sending unsolicited messages with the intent to annoy, threaten, or intimidate others.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.1.2',
                      bodyText:
                          'Creating or distributing content that is offensive, discriminatory, or harmful to others.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.2. Bullying',
                      bodyText:
                          'Users must not engage in bullying behavior, which includes, but is not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.2.1',
                      bodyText:
                          'Intimidating, threatening, or humiliating others.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.2.2',
                      bodyText:
                          'Posting or sharing content with the intent to harm someone\'s reputation.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.3. Harmful Content',
                      bodyText:
                          'Users must not create, upload, or distribute content that is harmful, abusive, or poses a threat to the safety and well-being of others. This includes but is not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.3.1',
                      bodyText:
                          'Content that promotes violence, self-harm, or harm to others.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.3.2',
                      bodyText:
                          'Maliciously spreading false information about individuals or entities.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.4. Unauthorized Disclosure',
                      bodyText:
                          'Users must not disclose personal or sensitive information about others without their explicit consent.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.4.1',
                      bodyText:
                          'TARS UNIVERSE has a zero-tolerance policy for harassment and harmful behavior. Violation of this     policy may result in the suspension or termination of your account. In severe cases, legal action may be taken.',
                    ),
                    headerAndBodyText(
                      headedText: '2.2.4.2',
                      bodyText:
                          'Users who experience harassment or observe harmful behavior on the platform are encouraged to report such incidents to help@tarsuniverse.com or info@tarsuniverse.com or contact@tarsuniverse.com.',
                    ),
                    headerAndBodyText(
                      headedText: '2.3. Unauthorized access to our systems',
                      bodyText:
                          'Users of TARS UNIVERSE must refrain from attempting to gain unauthorized access to our systems or any restricted areas of the platform. Prohibited activities include, but are not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.3.1. Unauthorized Login Attempts',
                      bodyText:
                          'Users must not attempt to access accounts, systems, or information belonging to others without proper authorization. This includes but is not limited to:',
                    ),
                    headerAndBodyText(
                      headedText: '2.3.1.2',
                      bodyText:
                          'Exploiting software vulnerabilities to gain unauthorized access.',
                    ),
                    headerAndBodyText(
                      headedText: '2.3.2. Reverse Engineering',
                      bodyText:
                          'Users must not engage in reverse engineering, decompiling, or disassembling any part of TARS UNIVERSE\'s software or systems.',
                    ),
                    headerAndBodyText(
                      headedText: '2.3.3',
                      bodyText:
                          'Security Testing without Authorization: Users must not conduct security testing, vulnerability scans, or any form of testing on TARS UNIVERSE\'s systems without explicit authorization from the platform administrators.',
                    ),
                    headerAndBodyText(
                      headedText: '2.3.5. Tampering with Security Measures',
                      bodyText:
                          'Users must not attempt to disable or interfere with security features or measures implemented on TARS UNIVERSE. Unauthorized access to our systems is strictly prohibited and may result in severe consequences, including but not limited to the suspension or termination of your account and legal action. If you believe you have discovered a security vulnerability or have concerns about the security of our systems, please report it promptly to help@tarsuniverse.com or info@tarsuniverse.com or contact@tarsuniverse.com.',
                    ),
                    headerAndBodyText(
                      headedText: '3. Intellectual Property',
                      bodyText:
                          'All content on TARS UNIVERSE, including text, graphics, logos, images, and software, is the property of TARS UNIVERSE and is protected by intellectual property laws. You may not reproduce, distribute, or use any content without our express written permission.',
                    ),
                    headerAndBodyText(
                      headedText: '4. Termination',
                      bodyText:
                          'We reserve the right to terminate or suspend your account and access to TARS UNIVERSE for any reason, including a breach of these Terms & Conditions.',
                    ),

                    headerAndBodyText(
                      headedText: '5. Limitation of Liability',
                      bodyText:
                          'TARS UNIVERSE and its affiliates are not liable for any indirect, incidental, special, or consequential damages arising out of or in any way connected with the use of our website.',
                    ),
                    headerAndBodyText(
                      headedText: '6. Governing Law',
                      bodyText:
                          'These Terms & Conditions are governed by the laws of [Your Jurisdiction].',
                    ),
                    headerAndBodyText(
                      headedText: '7. Changes to Terms & Conditions',
                      bodyText:
                          'We reserve the right to update or change these Terms & Conditions at any time. Your continued use of TARS UNIVERSE after changes are made constitutes your acceptance of the new terms.',
                    ),
                    headerAndBodyText(
                      headedText: '8. Contact Us',
                      bodyText:
                          'If you have any questions or concerns about this Terms & Condition, please contact us at help@tarsuniverse.com or info@tarsuniverse.com contact@tarsuniverse.com.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
