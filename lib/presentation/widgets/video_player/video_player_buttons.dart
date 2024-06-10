import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_basic_clone/config/helpers/human_formats.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';

class VideoPlayerButtons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoPlayerButtons({
    super.key,
    required this.videoPost,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      right: 20,
      child: Column(
        children: [
          // Like button
          _CustomIconButton(
            value: videoPost.likes,
            icon: Icons.favorite,
            color: Colors.red,
            size: 20,
          ),
          // Views indicator
          _CustomIconButton(
            value: videoPost.views,
            icon: Icons.remove_red_eye,
            color: Colors.white,
            size: 20,
          ),
          // Circule outline white
          SpinPerfect(
            duration: const Duration(milliseconds: 5000),
            infinite: true,
            child: const _CustomIconButton(
              icon: Icons.play_circle_outline,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int? value;
  final IconData icon;
  final Color color;
  final double size;

  const _CustomIconButton({
    this.value,
    required this.icon,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: size,
          ),
          const SizedBox(
            width: 5,
          ),
          value != null ?Text(
            humanReadableNumber(value!.toDouble()),
            style: const TextStyle(color: Colors.white),
          ) : const SizedBox(),
        ],
      ),
    );
  }
}
