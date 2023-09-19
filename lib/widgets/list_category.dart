import 'package:flutter/cupertino.dart';
import 'package:news_app/widgets/category_widget.dart';
import '../models/model_catrgory.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business1.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'science'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'general'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: categoryWidget(category: categories[index]),
          );
        },
      ),
    );
  }
}
