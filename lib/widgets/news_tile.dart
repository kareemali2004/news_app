
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsTile({super.key, required this.articleModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/science.avif', fit: BoxFit.cover),
                ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title ?? "",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.black, fontSize: 20),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subtitle ?? "",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
