import 'package:flutter/material.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';
import 'package:tiktok_basic_clone/presentation/widgets/shared/fullscreen_player.dart';
import 'package:tiktok_basic_clone/presentation/widgets/video_player/video_player_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key,
    required this.videos,
  });


  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return Stack(
          children: [
            // Video 
            SizedBox.expand(
              child: FullscreenPlayer(
                videoCaption: video.caption,
                videoUrl: video.videoUrl,
              )
            ),
            // Buttons
            VideoPlayerButtons(videoPost: video,), 
          ],
        );
      },
    );
  }
}