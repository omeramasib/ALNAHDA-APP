import 'dart:convert';

import 'package:blogger_json_example/utils/widgets/body.dart';
import 'package:blogger_json_example/utils/widgets/menue.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../models/post_list_model.dart';
// import 'package:image_whisperer/image_whisperer.dart';
// import 'package:flutter/painting.dart'; 
class PostListPage extends StatefulWidget {
  @override
  State<PostListPage> createState() => _PostListPageState();
}
class _PostListPageState extends State<PostListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("شركة النهضة الإسكانية العقارية",
        style: GoogleFonts.cairo(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontWeight: FontWeight.bold
            ),
        ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Menue(),
      body: Body(),
    );
  }
}
