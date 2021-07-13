// ignore: file_names
import 'package:flutter/material.dart';
import 'package:todoapplication/model/article_model.dart';
import 'package:todoapplication/others/customListTile.dart';
import 'package:todoapplication/services/api_service.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "News App",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: FutureBuilder(
              future: client.getArticle(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Article>> snapshot) {
                if (snapshot.hasData) {
                  List<Article>? articles = snapshot.data;
                  return ListView.builder(
                      itemCount: articles!.length,
                      itemBuilder: (context, index) =>
                          customListTile(articles[index]));
                }
                return Center(
                  child: const CircularProgressIndicator(),
                );
              })),
    );
  }
}
