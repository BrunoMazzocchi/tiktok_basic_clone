import 'package:tiktok_basic_clone/domain/datasource/video_posts_datasource.dart';
import 'package:tiktok_basic_clone/domain/entities/video_post.dart';
import 'package:tiktok_basic_clone/infraestructure/models/video_post_model.dart';
import 'package:tiktok_basic_clone/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostsDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByPage(int page) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    Future.delayed(const Duration(seconds: 2));

    final List<VideoPostModel> newModels = videoPosts
        .map((videoPostToModel) => VideoPostModel.fromJson(videoPostToModel))
        .toList();
    final List<VideoPost> newVideos =
        newModels.map((model) => model.toEntity()).toList();

    return newVideos;
  }
}
