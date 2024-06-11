import 'package:tiktok_basic_clone/domain/datasource/video_posts_datasource.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';
import 'package:tiktok_basic_clone/domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {

  final VideoPostsDataSource videoPostsDataSource;

  VideoPostRepositoryImpl({required this.videoPostsDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(int page) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostsDataSource.getTrendingVideosByPage(page);
  }
  
}