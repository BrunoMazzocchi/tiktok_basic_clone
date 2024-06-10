class VideoPost { 
  final String id;
  final String title;
  final String thumbnailUrl;
  final String videoUrl;
  final int likes; 
  final int views; 
  final String caption; 

  VideoPost({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
    required this.caption,
  });
}