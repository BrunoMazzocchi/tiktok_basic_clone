
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_basic_clone/config/theme/app_theme.dart';
import 'package:tiktok_basic_clone/infraestructure/datasource/local_video_datasource_impl.dart';
import 'package:tiktok_basic_clone/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:tiktok_basic_clone/presentation/providers/discover_provider.dart';
import 'package:tiktok_basic_clone/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(
            videoPostsRepository: VideoPostRepositoryImpl(
              videoPostsDataSource: LocalVideoDatasourceImpl(),
            ),
          )..loadNextPage(),
          ),
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}