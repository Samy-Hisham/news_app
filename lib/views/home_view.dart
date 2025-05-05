import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_tile_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            NewsTileList(),
          ],
        ));
  }
}
