import 'package:flutter/material.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';
import 'package:tiktok_basic_clone/infraestructure/models/video_post_model.dart';
import 'package:tiktok_basic_clone/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true; 
  List<VideoPost> videos = [];



  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPostModel> newModels = videoPosts.map((videoPostToModel) => VideoPostModel.fromJson(
      videoPostToModel)).toList();

    final List<VideoPost> newVideos = newModels.map((model) => model.toEntity()).toList();

    videos.addAll(newVideos);
    initialLoading = false; 
    notifyListeners(); 
  }
}