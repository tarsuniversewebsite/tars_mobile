import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constants.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/15486902/pexels-photo-15486902/free-photo-of-close-up-of-a-statue.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'John Doe',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(Icons.more_vert),
              // ),
              Icon(Icons.more_vert),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                        style:
                            TextStyle(color: ColorConstants.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '105 ranking',
                      style:
                          TextStyle(color: ColorConstants.grey, fontSize: 12),
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
                        style:
                            TextStyle(color: ColorConstants.grey, fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'It’s a Jet Engine',
                style: TextStyle(
                  height: 0,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'John Doe, a distinguished electrical and electronics engineer, has left an indelible mark on the field of robotics. Renowned for his technical prowess, he achieved a milestone with his...read more',
                  style: TextStyle(
                    height: 0,
                    fontSize: 14,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Image.network(
            'https://images.pexels.com/photos/1181533/pexels-photo-1181533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6, right: 8, left: 8),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
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
                  padding: const EdgeInsets.all(0),
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
                  padding: const EdgeInsets.all(0),
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
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        shadowColor: Colors.grey.shade300,
                        color: Colors.grey.shade300,
                        shape: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4),
                          child: Text('Love the project, how much?'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: const Size(0, 0)),
                              child: const Text('Like'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  minimumSize: const Size(0, 0)),
                              child: const Text('Reply'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {}, child: const Text('See more comments')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 14,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.all(4),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
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
        ),
      ],
    );
  }
}
