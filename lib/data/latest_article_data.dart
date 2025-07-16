import 'package:get/get.dart';

List<ArticleModel> articles =
    List<ArticleModel>.from(blogs.map((blog) => ArticleModel.fromJson(blog)));

class ArticleModel {
  final String title;
  final String description;
  final RxInt maxLine = 3.obs;

  ArticleModel(this.title, this.description);

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      json['title'],
      json['description'],
    );
  }
}

final List<Map<String, String>> blogs = [
  {
    'title': 'Flutter and AI in 2025',
    'description':
    'Learn how to create next-generation Flutter apps using on-device machine learning, OpenAI integration, and Google ML Kit to deliver real-time, context-aware features that go beyond traditional UI.'
  },
  {
    'title': 'Spring Boot 3.5 & GraalVM',
    'description':
    'Explore how Spring Boot’s native image support with GraalVM can drastically reduce startup time and memory usage, making your Java backend services perfect for modern serverless and cloud deployments.'
  }
];

