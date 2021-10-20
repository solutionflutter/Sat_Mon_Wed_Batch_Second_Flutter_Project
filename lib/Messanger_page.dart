import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

class MessangerPage extends StatefulWidget {
  const MessangerPage({Key key}) : super(key: key);

  @override
  _MessangerPageState createState() => _MessangerPageState();
}

class _MessangerPageState extends State<MessangerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 35, 1),
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>ProfilePage(),
                ),
            );
          },
        ),
        title: Text(
            "Messenger",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(24, 24, 35, 1),
            ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh_outlined,
              color: Color.fromRGBO(24, 24, 35, 1),
            ),
            iconSize: 20,
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>MessangerPage()
                  ),
              );
            },
          ),
        ],
      ),
    );
  }
}
