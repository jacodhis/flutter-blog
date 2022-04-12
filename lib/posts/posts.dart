import 'package:flutter/material.dart';
import 'package:newproject/posts/models/post.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            // ignore: unnecessary_null_comparison, prefer_is_empty
            itemCount: posts.length == 0 ? 0 : posts.length,
            itemBuilder: (BuildContext context, int index) {
              var ps = posts[index].name;
              return Text(ps);
            }),
      ),
    );
  }
}
