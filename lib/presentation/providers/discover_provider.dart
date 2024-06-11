import 'package:flutter/material.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';
import 'package:tiktok_basic_clone/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {

  final VideoPostsRepository videoPostsRepository;

  DiscoverProvider({required this.videoPostsRepository});

  bool initialLoading = true; 
  List<VideoPost> videos = [];



  Future<void> loadNextPage() async {

    final newVideos = await videoPostsRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false; 
    notifyListeners(); 
  }
}