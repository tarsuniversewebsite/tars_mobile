import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class StartupWidget extends StatelessWidget {
  const StartupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Image.network(
            'https://images.pexels.com/photos/1181533/pexels-photo-1181533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later,
                          color: ColorConstants.grey,
                          size: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '2 days ago',
                            style: TextStyle(
                                color: ColorConstants.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '105 ranking',
                          style: TextStyle(
                              color: ColorConstants.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                          color: ColorConstants.grey,
                          size: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Text(
                            '37K views',
                            style: TextStyle(
                                color: ColorConstants.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kano',
                    style: TextStyle(
                      height: 0,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Biotech & Life sciences',
                    style: TextStyle(
                      height: 0,
                      color: ColorConstants.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2, bottom: 6),
                    child: Text(
                      'Harnessing single-stranded DNA for precision genome editing ...read more',
                      style: TextStyle(
                        height: 0,
                        color: ColorConstants.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '200 likes',
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                        Text(
                          '4 comments',
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                        Text(
                          '1 share',
                          style: TextStyle(color: ColorConstants.grey),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.grey.shade700,
                      ),
                      label: Text(
                        'Like',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chat_bubble,
                        color: Colors.grey.shade700,
                      ),
                      label: Text(
                        'Comment',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.arrowshape_turn_up_right_fill,
                        color: Colors.grey.shade700,
                      ),
                      label: Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.all(0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: ColorConstants.grey,
          thickness: 5,
          height: 5,
        ),
      ],
    );
  }
}
