import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/post_list_model.dart';
// import 'package:image_whisperer/image_whisperer.dart';
// import 'package:flutter/painting.dart'; 
class PostListPage extends StatefulWidget {
  @override
  State<PostListPage> createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  //Enter Your API key
  final String apiKey = 'AIzaSyCRPASFE9uxloU_VOOoYtKSTRaElsEodS4';

  //Enter your Blog Id here
  final String blogId = '7826611722270527969';

  //Function for Fetching Posts
  Future<PostList> fetchPosts() async {
    var postListUrl = Uri.https(
        "blogger.googleapis.com", "/v3/blogs/$blogId/posts/", {"key": apiKey});
    final response = await http.get(postListUrl);
    if (response.statusCode == 200) {
      return PostList.fromJson(jsonDecode(response.body));
    } else {
      throw Exception();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alnahda app"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: FutureBuilder(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.posts.length ?? 1,
                itemBuilder: (context, index) {
                  return Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ListTile(
                      title: Text(
                        snapshot.data.posts[index].title ?? "no items",
                      ),
                      subtitle: Text(
                          snapshot.data.posts[index].author.displayName ??
                              "No Auther"),
                    ),
                 
                  );
                },
              );
          }),
    );
  }
}
