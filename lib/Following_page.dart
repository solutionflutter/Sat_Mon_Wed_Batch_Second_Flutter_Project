import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 35, .6),
          ),
          iconSize: 20,
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
            "Following",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(24, 24, 35, .6),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(24, 24, 35, .6),
            ),
            iconSize: 20,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>FollowingPage(),
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
