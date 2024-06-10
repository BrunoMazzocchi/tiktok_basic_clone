import 'package:tiktok_basic_clone/domain/entities/video_post.dart';

class VideoPostModel {
   final String name; 
   final String videoUrl; 
   final int likes; 
   final int views; 

  VideoPostModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory VideoPostModel.fromJson(Map<String, dynamic> json) {
    return VideoPostModel(
      name: json['name'],
      videoUrl: json['videoUrl'],
      likes: json['likes'],
      views: json['views'],
    );
  }

  VideoPost toEntity() {
    return VideoPost(
      id: '0',
      caption: name,
      videoUrl: videoUrl,
      likes: likes,
      views: views,
      title: name, 
      thumbnailUrl: videoUrl,
    );
  }
}