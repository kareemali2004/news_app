// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';

// import 'news_tile.dart';

// class newsTileView extends StatefulWidget {
//   const newsTileView({super.key});

//   @override
//   State<newsTileView> createState() => _newsTileViewState();
// }

// class _newsTileViewState extends State<newsTileView> {
//   List<ArticleModel> articels = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getgeneralnews();
//   }

//   Future<void> getgeneralnews() async {
//     articels = await NewsServices(Dio()).getNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))  : SliverList(
//         delegate: SliverChildBuilderDelegate(childCount: articels.length,
//             (context, index) {
//       return Padding(
//         padding: const EdgeInsets.only(bottom: 22),
//         child: NewsTile(
//           articleModel: articels[index],
//         ),
//       );
//     }));
//   }
// }
