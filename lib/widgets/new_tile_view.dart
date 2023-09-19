
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import 'news_tile.dart';

class newsTileView extends StatelessWidget {
  final List<ArticleModel> articels;

  const newsTileView({super.key, required this.articels});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articels.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 22),
        child: NewsTile(
          articleModel: articels[index],
        ),
      );
    }));
  }
}
