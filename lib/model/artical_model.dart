class ArticleModel {
  final String title;
  final String? description;
  final String? urlToImage;
  final String url;

  ArticleModel(this.title, this.description, this.urlToImage, this.url);

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      json['title'] as String,
      json['description'] as String?,
      json['urlToImage'] as String?,
      json['url'] as String,
    );
  }
}
