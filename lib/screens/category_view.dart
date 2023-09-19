import 'package:flutter/material.dart';

import 'package:news_app/widgets/Newlistviewbuilder.dart';

class categoryView extends StatelessWidget {
  final String category;
  const categoryView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewListViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
