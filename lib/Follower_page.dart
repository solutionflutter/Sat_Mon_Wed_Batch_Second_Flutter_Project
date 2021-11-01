import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';


List<FollowerModel> followermodel = [
  FollowerModel(username: "Afran Nisho", profilePicture: "https://cdn.risingbd.com/media/imgAll/2020August/en/nisho-big-2010010820.jpg", friends: 12345,),
  FollowerModel(username: "Mashrafe Mortaza", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Mashrafe_Bin_Mortaza_%28cropped%29.jpg/260px-Mashrafe_Bin_Mortaza_%28cropped%29.jpg", friends: 12234343,),
  FollowerModel(username: "Shakib Al Hasan", profilePicture: "https://images.indianexpress.com/2020/05/shakib-al-hasan-fb.jpg", friends: 533663222),
  FollowerModel(username: "Tamim Iqbal", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Tamim_Iqbal_Khan.jpg/260px-Tamim_Iqbal_Khan.jpg", friends: 23323232),
  FollowerModel(username: "Abdurrahman Wahid", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Abdurrahman_Wahid_-_World_Economic_Forum_Annual_Meeting_Davos_2000.jpg/220px-Abdurrahman_Wahid_-_World_Economic_Forum_Annual_Meeting_Davos_2000.jpg", friends: 1213233435),
  FollowerModel(username: "Abdul Qadeer Khan", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Abdul_Qadeer_Khan.jpg/220px-Abdul_Qadeer_Khan.jpg", friends: 3623627362763),
  FollowerModel(username: "Mushfiqur Rahim", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/2/2d/Mushfiqur_Rahim_2009_%28cropped%29.jpg", friends: 28738273827),
  FollowerModel(username: "Mustafizur Rahman", profilePicture: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Mustafizur_Rahman_on_practice_field_in_Dhaka_on_2018_%281%29_%28cropped%29.jpg/260px-Mustafizur_Rahman_on_practice_field_in_Dhaka_on_2018_%281%29_%28cropped%29.jpg", friends: 78787766565),
  FollowerModel(username: "Soumya Sarkar", profilePicture: "https://www.cricket.com.au/-/media/Players/Men/International/Bangladesh/2021%20T20WC/Soumya-Sarkar-2122.ashx", friends: 7878676675),
  FollowerModel(username: "Liton Dus", profilePicture: "https://www.cricbuzz.com/a/img/v1/152x152/i1/c170914/liton-das.jpg", friends: 71872837),
];


class FollowerPage extends StatefulWidget {
  const FollowerPage({Key key}) : super(key: key);

  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, 0.6),
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
          "Follower",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
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
                        builder: (context)=>FollowerPage(),
                    ),
                );
              },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: followermodel.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    // profile image circle avatar
                    CircleAvatar(
                      radius: 36,
                      backgroundImage: NetworkImage("${followermodel[index].profilePicture}"),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "${followermodel[index].username}\n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(24, 24, 24, 1)
                            ),
                            children: [
                              TextSpan(
                                text: "Friends : ${followermodel[index].friends}",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(24, 24, 24, 1)
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
