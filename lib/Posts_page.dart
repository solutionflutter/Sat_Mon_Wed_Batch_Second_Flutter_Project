import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key key}) : super(key: key);

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(25, 25, 45, .6),
          ),
          iconSize: 25,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>ProfilePage(),
              ),
            );
          },
        ),
        title: Text(
            "Posts Page",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Color.fromRGBO(25, 25, 45, .6)
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(25, 25, 45, .6),
            ),
            iconSize: 25,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>PostsPage(),
                ),
              );
            },
          )
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
      ),
    );
  }
}
