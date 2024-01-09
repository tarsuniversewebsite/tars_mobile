import 'package:flutter/material.dart';
import '../widgets/terms_header.dart';
import '../widgets/terms_text_helpers.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TermsHeader(headerText: 'Privacy Policy'),
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
                        'Thank you for using TARS UNIVERSE! This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website.',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                    headerAndBodyText(
                      headedText: 'Information We Collect',
                      bodyText:
                          'We may collect personal information, such as name, email address, etc and non-personal information, such as IP address, browser type, pages visited.',
                    ),
                    headerAndBodyBulletText(
                      headedText: 'How We Use Your Information',
                      bodyBullet: [
                        'We use your information for various purposes, including but not limited to:',
                        'Providing and improving our services',
                        'Personalizing your experience',
                        'Communicating with you',
                        'Analyzing usage data to enhance our website',
                      ],
                    ),
                    headerAndBodyText(
                      headedText: 'Cookies',
                      bodyText:
                          'We use cookies and similar tracking technologies to analyze website usage and improve our services. You can control cookies through your browser settings.',
                    ),
                    headerAndBodyText(
                      headedText: 'Third Party Disclosure',
                      bodyText:
                          'We do not sell, trade, or otherwise transfer your information to third parties without your consent. However, we may share information with trusted partners for specific purposes.',
                    ),
                    headerAndBodyText(
                      headedText: 'Security',
                      bodyText:
                          'We prioritize the security of your information and employ reasonable measures to protect it. However, no method of transmission over the internet is completely secure, and we cannot guarantee absolute security.',
                    ),
                    headerAndBodyText(
                      headedText: 'Your Choices',
                      bodyText:
                          'You can choose not to provide certain information, but this may limit your access to certain features. You can also opt out of receiving communications from us.',
                    ),
                    headerAndBodyText(
                      headedText: 'Children\'s Privacy',
                      bodyText:
                          'Our website is not directed at children under the age of 13. We do not knowingly collect personal information from children. If you are a parent or guardian and believe that your child has provided us with personal information, please contact us.',
                    ),
                    headerAndBodyText(
                      headedText: 'Changes to this Privacy Policy',
                      bodyText:
                          'We may update this Privacy Policy to reflect changes to our practices. We will notify you of any material changes by posting the new policy on this page.',
                    ),
                    headerAndBodyText(
                      headedText: 'Contact Us',
                      bodyText:
                          'If you have any questions or concerns about this Privacy Policy, please contact us at help@tarsuniverse.com or info@tarsuniverse.com contact@tarsuniverse.com.',
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
