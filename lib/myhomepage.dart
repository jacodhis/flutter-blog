import 'package:flutter/material.dart';
import 'package:newproject/posts/addpost.dart';
import 'package:newproject/posts/posts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Blog App'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Posts",
                icon: Icon(Icons.post_add),
              ),
              Tab(
                text: "AddPost",
                icon: Icon(
                  Icons.add,
                ),
              ),
              // Tab(text: "",icon: Icon(Icons.post_add),),
              // Tab(text: "Posts",icon: Icon(Icons.post_add),),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Posts(),
          AddPost(),
        ]),
      ),
    );
  }
}
