import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/new_tile_view.dart';

class NewListViewBuilder extends StatefulWidget {
  final String category;

  const NewListViewBuilder({super.key, required this.category});

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsTileView(
              articels: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: Text("opps there was an eror try again later"),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
