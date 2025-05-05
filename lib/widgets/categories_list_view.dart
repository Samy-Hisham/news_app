import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel('assets/business.jpg', 'Business'),
    CategoryModel('assets/entertaiment.jpg', 'Entertaiment'),
    CategoryModel('assets/health.jpg', 'Health'),
    CategoryModel('assets/science.jpg', 'Science'),
    CategoryModel('assets/sports.jpg', 'Sports'),
    CategoryModel('assets/technology.jpeg', 'Technology'),
    CategoryModel('assets/general.jpg', 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal
          ,itemCount: categories.length,
          itemBuilder: (context, index){
            return CategoryCard(categoryModel: categories[index]);
          }),
    );
  }
}
