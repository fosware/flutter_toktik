import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideSrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideSrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];
        return Stack(
          children: [
            Positioned(
              bottom: 20,
              right: 20,
              child: VideoButtons(video: videoPost)),
          ],
        );


      }
    );
  }
}

