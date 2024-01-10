import 'package:flutter/material.dart';
import 'package:tars_mobile/models/post_model.dart';

import '../widgets/post_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = [
      PostModel(
        uId: '1',
        headerText: 'Header text',
        titleText: 'Title Text',
        subtitleText: 'Subtitle Text',
        mediaUrls: [''],
        likeIds: [],
        commentIds: [],
        shareIds: [],
        ranking: 20,
        views: 20,
        isStartup: true,
        isProject: false,
        isToolsAndResources: false,
        price: 0,
        rating: 0,
      ),
      PostModel(
        uId: '1',
        headerText: 'Header text',
        titleText: 'Title Text',
        subtitleText: 'Subtitle Text',
        mediaUrls: [''],
        likeIds: [],
        commentIds: [],
        shareIds: [],
        ranking: 20,
        views: 20,
        isStartup: false,
        isProject: true,
        isToolsAndResources: false,
        price: 0,
        rating: 0,
      ),
      PostModel(
        uId: '1',
        headerText: 'Header text',
        titleText: 'Title Text',
        subtitleText: 'Subtitle Text',
        mediaUrls: [''],
        likeIds: [],
        commentIds: [],
        shareIds: [],
        ranking: 20,
        views: 20,
        isStartup: false,
        isProject: false,
        isToolsAndResources: true,
        price: 0,
        rating: 0,
      ),
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => PostWidget(
          postModel: posts[index],
        ),
      ),
    );
  }
}
