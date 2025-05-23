import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(
            category: categoryModel.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 8),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(
                  image: AssetImage(categoryModel.image), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            categoryModel.categoryName,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
