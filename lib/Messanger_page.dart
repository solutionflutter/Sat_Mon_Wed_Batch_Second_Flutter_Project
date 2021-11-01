import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

List<MessangerModel> messenageModels = [
  MessangerModel(
    username: "Afran Nisho",
    profileImage: "images/user_images/user_1.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mashrafe Mortaza",
    profileImage: "images/user_images/user_2.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Shakib Al Hasan",
    profileImage: "images/user_images/user_3.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Tamim Iqbal",
    profileImage: "images/user_images/user_4.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Abdurrahman Wahid",
    profileImage: "images/user_images/user_5.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Abdul Qadeer Khan",
    profileImage: "images/user_images/user_6.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mushfiqur Rahim",
    profileImage: "images/user_images/user_7.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mustafizur Rahman",
    profileImage: "images/user_images/user_8.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Soumya Sarkar",
    profileImage: "images/user_images/user_9.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Liton Dus",
    profileImage: "images/user_images/user_10.jpg",
    lastMessage: "How Are you",
  ),
];

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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessangerPage()),
              );
            },
          ),
        ],
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //Circle Avater listview builder container
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: messenageModels.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 7,
                          width: MediaQuery.of(context).size.width / 7,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                                  "${messenageModels[index].profileImage}",
                                ),
                                fit: BoxFit.fill),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
