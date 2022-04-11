import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../../models/post_list_model.dart';
import 'dart:convert';
class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
   final String apiKey = 'AIzaSyCRPASFE9uxloU_VOOoYtKSTRaElsEodS4';

  //Enter your Blog Id here
  final String blogId = '7826611722270527969';

  //Function for Fetching Posts
  Future<PostList> fetchPosts() async {
    var postListUrl = Uri.https(
        "blogger.googleapis.com", "/v3/blogs/$blogId/posts/", {"key": apiKey});
    final response = await http.get(postListUrl);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return PostList.fromJson(data);
    } else {
      throw Exception();
    }
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PostList>(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.items!.length,
                itemBuilder: (context, index) {
                  return Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: ListTile(
                      title: Text(
                        snapshot.data!.items![index].title ?? "لاتوجد عناوين",
                        style: GoogleFonts.cairo(
                        ),
                      ),
                      subtitle: Text(
                          snapshot.data!.items![index].author!.displayName ??
                              "لاتوجد بينات",
                              style: GoogleFonts.cairo(
                        ),
                              ),
                    ),
                 
                  );
                },
              );
          }
          );
  }
}