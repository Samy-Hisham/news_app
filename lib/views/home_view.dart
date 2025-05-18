import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

//web view
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Cloud',
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ));
  }
}
