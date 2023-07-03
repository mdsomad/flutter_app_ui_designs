import 'package:flutter/material.dart';
import 'package:flutter_app_ui_designs/data.dart';
import 'package:flutter_app_ui_designs/widgets/custom_sliver_app_bar.dart';
import 'package:flutter_app_ui_designs/widgets/video_card.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 60.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
