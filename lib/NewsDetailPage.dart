import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final Map<String, dynamic> article;

  NewsDetailPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'News Detail',
            style: TextStyle(
              color: Colors.white, // Set text color to white
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey,
                  Colors.black,
                ], // Define your gradient colors
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (article['urlToImage'] != null)
                Image.network(
                  article['urlToImage'],
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              Container(
                color: Colors.black, // Background color of the container
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article['title'] ?? '',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      article['description'] ?? '',
                      style: TextStyle(
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Published At: ${article['publishedAt'] ?? ''}',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white, // Set text color to white
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
