import 'package:flutter/material.dart';
import 'package:news_app/model/artical_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  State<DetailNews> createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(onPageStarted: (url) {
        setState(() {
          loadingPercentage = 0;
        });
      }, onPageFinished: (url) {
        setState(() {
          loadingPercentage = 100;
        });
      }, onProgress: (progress) {
        setState(() {
          loadingPercentage = progress;
        });
      }))
      ..loadRequest(Uri.parse(widget.articleModel.url));
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Details',
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        body: Stack(children: [
          WebViewWidget(
            controller: controller,
          ),
          loadingPercentage < 100
              ? LinearProgressIndicator(
                  value: loadingPercentage / 100,
                  color: Colors.orange,
                )
              : Container()
        ]));
  }
}
