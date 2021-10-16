import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(159, 237, 180, 1),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>ProfilePage(),
              ),
            );
          },
          icon: Icon(
            Icons.person_outline,
            color: Color.fromRGBO(127, 133, 129,1),
          ),
          iconSize: 25,
        ),
        title: Text(
            "Edit Page",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            color: Color.fromRGBO(19, 211, 36, 1),
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 7.5
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(42, 128, 71,1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(42, 128, 71,.3),
              ),
              child: FlatButton.icon(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>ProfilePage(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.save_outlined,
                    color: Color.fromRGBO(0, 0, 0, .5),
                    size: 15,
                  ),
                  label: Text(
                    "Save",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, .5),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
