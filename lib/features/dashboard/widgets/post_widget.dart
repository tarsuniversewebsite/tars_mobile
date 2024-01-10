import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tars_mobile/features/dashboard/widgets/project_widget.dart';
import 'package:tars_mobile/features/dashboard/widgets/startup_widget.dart';
import 'package:tars_mobile/models/post_model.dart';

import 'tools_and_resources_widget.dart';

class PostWidget extends StatelessWidget {
  final PostModel postModel;
  const PostWidget({super.key, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return postModel.isStartup
        ? StartupWidget()
        : postModel.isProject
            ? ProjectWidget()
            : ToolAndResourcesWidget();
  }
}
