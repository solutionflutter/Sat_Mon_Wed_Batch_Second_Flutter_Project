import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

List<Followingmodel> followingmodels = [
  Followingmodel(
      profileImageURL: "images/user_images/user_1.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Mosharraf Karim"),
  Followingmodel(
      profileImageURL: "images/user_images/user_2.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Chanchal Chowdhury"),
  Followingmodel(
      profileImageURL: "images/user_images/user_3.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Abdur Rajjak"),
  Followingmodel(
      profileImageURL: "images/user_images/user_4.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Afran Nisho"),
  Followingmodel(
      profileImageURL: "images/user_images/user_5.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Tawsif Mahbub"),
  Followingmodel(
      profileImageURL: "images/user_images/user_6.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Shakib Al Hasan"),
  Followingmodel(
      profileImageURL: "images/user_images/user_7.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Mehidy Hasan Miraz"),
  Followingmodel(
      profileImageURL: "images/user_images/user_8.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Mashrafe Bin Mortaza"),
  Followingmodel(
      profileImageURL: "images/user_images/user_9.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Jaya Ahsan"),
  Followingmodel(
      profileImageURL: "images/user_images/user_10.jpg",
      date: DateTime.now().toUtc().toString(),
      username: "Mushfiqur Rahim"),
];

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FollowingPage(),
                ),
              );
            },
          )
        ],
        backgroundColor: Color.fromRGBO(240, 240, 240, .6),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          itemCount: followingmodels.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [

                  //profile image circle avatar
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("${followingmodels[index].profileImageURL}"),
                  ),

                  //Container name and date

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          text: "${followingmodels[index].username}\n",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0,0,0,0.6),
                            fontSize: 16,
                            height: 1.2,
                          ),
                          children: [
                            TextSpan(
                              text: "${followingmodels[index].date}",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, .4),
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
