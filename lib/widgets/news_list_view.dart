import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/views/detail_news.dart';

import 'news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: NewsTile(
          articleModel: articles[index],
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailNews(
                articleModel: articles[index],
              );
            }));
          },
        ),
      );
    }));
  }
}

// onTap: () {
//   Navigator.push(context, MaterialPageRoute(builder: (context) {
//     return DetailNews(
//       articleModel: articles[index],
//     );
//   })
//   );
// },
