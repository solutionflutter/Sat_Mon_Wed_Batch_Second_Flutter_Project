import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/messages_screen.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

List<MessangerModel> messenageModels = [
  MessangerModel(
    username: "Mosharraf Karim",
    profileImage: "images/user_images/user_1.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Chanchal Chowdhury",
    profileImage: "images/user_images/user_2.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Abdur Rajjak",
    profileImage: "images/user_images/user_3.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Tawsif Mahbub",
    profileImage: "images/user_images/user_4.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Shakib Al Hasan",
    profileImage: "images/user_images/user_5.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Shakib Al Hasan",
    profileImage: "images/user_images/user_6.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mehidy Hasan Miraz",
    profileImage: "images/user_images/user_7.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mashrafe Bin Mortaza",
    profileImage: "images/user_images/user_8.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Jaya Ahsan",
    profileImage: "images/user_images/user_9.jpg",
    lastMessage: "How Are you",
  ),
  MessangerModel(
    username: "Mushfiqur Rahim",
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
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              //Header text conatiner
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                child: Container(
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Friends",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(0, 0, 0, .6)),
                  ),
                ),
              ),

              //Circle Avater listview builder container
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: messenageModels.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                "${messenageModels[index].profileImage}",
                              ),
                              fit: BoxFit.fill),
                        ),
                      );
                    },
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      height: MediaQuery.of(context).size.height / 23,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Messages",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, .6),
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 1.78,
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                      child: ListView.builder(
                        itemCount: messenageModels.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => Messages_Screen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              height: MediaQuery.of(context).size.height / 10,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  // profile image stack

                                  Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                      CircleAvatar(
                                        radius: 35,
                                        backgroundImage: AssetImage(
                                          "${messenageModels[index].profileImage}",
                                        ),
                                      ),
                                      Positioned(
                                        left:
                                            MediaQuery.of(context).size.height /
                                                11,
                                        top:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        child: CircleAvatar(
                                          radius: 5,
                                          backgroundColor:
                                              Color.fromRGBO(0, 255, 0, 1),
                                        ),
                                      )
                                    ],
                                  ),

                                  //text span container

                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 13),
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    height:
                                        MediaQuery.of(context).size.height / 10,
                                    child: RichText(
                                      textAlign: TextAlign.justify,
                                      text: TextSpan(
                                        text:
                                            "${messenageModels[index].username}\n",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: Color.fromRGBO(0, 0, 0, .7)),
                                        children: [
                                          TextSpan(
                                            text:
                                                "${messenageModels[index].lastMessage}",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, .7)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
