import 'package:flutter/material.dart';
import 'package:news_app/models/model_catrgory.dart';
import 'package:news_app/screens/category_view.dart';


class categoryWidget extends StatelessWidget {
  final CategoryModel category;
  const categoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return categoryView(
            category: category.categoryName,
          );
        }));
      },
      child: Container(
        width: 160,
        height: 85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill)),
        child: Center(
            child: Text(
          category.categoryName,
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
