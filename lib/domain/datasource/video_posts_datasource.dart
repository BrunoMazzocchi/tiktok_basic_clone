import 'package:tiktok_basic_clone/domain/entities/video_post.dart';

abstract class VideoPostsDataSource {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);

  Future<List<VideoPost>> getFavoriteVideosByPage(int page);
}