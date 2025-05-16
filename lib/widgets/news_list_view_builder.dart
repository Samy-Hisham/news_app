import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:news_app/service/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: 400,
                child: Center(
                  child: Text(
                    snapshot.error.toString(),
                    // style: const TextStyle(color: Colors.red),
                  ),
                ),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                height: 400,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                ),
              ),
            );
          }
        });
  }
}

// isLoading
// ? SliverToBoxAdapter(
// child: SizedBox(
// height: 400,
// child: Center(
// child: CircularProgressIndicator(
// color: Colors.orange,
// ))))
//     : NewsListView(articles: articles ,);
