import 'package:flutter/material.dart';

Padding headerAndBodyText(
    {required String headedText, required String bodyText}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$headedText:',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        Text(
          bodyText,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

Padding headerAndBodyBulletText(
    {required String headedText, required List<String> bodyBullet}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$headedText:',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        UnorderedList([...bodyBullet]),
      ],
    ),
  );
}

class UnorderedList extends StatelessWidget {
  const UnorderedList(this.texts, {super.key});
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }

    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "•  ",
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
        ),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
