import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Follower_page.dart';
import 'package:satmonwedsecondbatch/Following_page.dart';
import 'package:satmonwedsecondbatch/Messanger_page.dart';
import 'package:satmonwedsecondbatch/Posts_page.dart';
import 'package:satmonwedsecondbatch/Splash_screen.dart';
import 'package:satmonwedsecondbatch/edit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(159, 237, 180, 1),
        title: Text(
          "Profile Page",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(19, 211, 36, 1),
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplashScreen(),
              ),
            );
          },
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(7, 125, 70, 0.7),
          ),
          iconSize: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 2,
            ),
            child: Container(
              height: 25,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(235, 153, 14, 1),
                border: Border.all(
                  color: Color.fromRGBO(188, 85, 149, 1),
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              child: FlatButton(
                onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context)=>EditPage(),
                     ),
                   );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.create_rounded,
                      size: 15,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Profile image ,Address and Name container

                Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // Profile image container

                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Sheikh Hasina.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(0, 0, 0,.5),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),

                      // Profile Name And Address

                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "Sheikh Hasina\n\n",
                            style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(86, 86,86, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "National Parliament House ,Sher-e-Bangla Nagar, Dhaka",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  color: Color.fromRGBO(91, 79, 79, 1),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Bio Container

                Container(
                  height: MediaQuery.of(context).size.height/3.7,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    //Bio text and create icon container
                    children: [

                      //Text and Icon Container
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/3.7,
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  "Bio",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(34, 38, 42, 1),
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                CupertinoIcons.info_circle,
                                size: 15,
                                color: Color.fromRGBO(35, 38, 45, 1),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //Bio Container

                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Sheikh Hasina, also "
                              "known by her married name Sheikh Hasina Wazed, "
                              "is a Bangladeshi politician who has been serving "
                              "as the Prime Minister of Bangladesh since "
                              "January 2009. She previously served as prime m"
                              "inister from June 1996 to July 2001.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(65, 55, 45, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),

                //Information container
                Container(
                  height: MediaQuery.of(context).size.height/3.2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      //Dob

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_today_sharp,
                            size: 12,
                            color: Color.fromRGBO(65, 63, 21, 1),
                          ),
                          SizedBox(width: 10,),
                          Text(
                              "Born : ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(65, 63, 21, 1),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "September 28, 1947 (age 75 years)",
                             style: TextStyle(
                               fontSize: 12,
                               fontWeight: FontWeight.w500,
                               color: Color.fromRGBO(65, 63, 21, 1),
                               fontStyle: FontStyle.normal,
                             ),
                          ),
                        ],
                      ),

                      //Spouse Row

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person_outline,
                            size: 12,
                            color: Color.fromRGBO(102, 62, 32, 1),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Spouse: ",
                            style: TextStyle(
                              color: Color.fromRGBO(102, 62, 32, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "M. A. Wazed Miah (m. 1967–2009)",
                            style: TextStyle(
                              color: Color.fromRGBO(102, 62, 32, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),

                      //Book Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.library_books_outlined,
                            size: 12,
                            color: Color.fromRGBO(122, 72, 12, 1),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Books: ",
                            style: TextStyle(
                              color: Color.fromRGBO(122, 72, 12, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "People and Democracy",
                            style: TextStyle(
                              color: Color.fromRGBO(122, 72, 12, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),

                      //Children

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person_add_alt,
                            size: 12,
                            color: Color.fromRGBO(142, 92, 74, 1),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Children: ",
                            style: TextStyle(
                              color: Color.fromRGBO(142, 92, 74, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Sajeeb Wazed, Saima Wazed",
                            style: TextStyle(
                              color: Color.fromRGBO(142, 92, 74, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),

                      //Education Wrap
                      Container(
                        margin: EdgeInsets.only(right: 68),
                        child: Wrap(
                          runSpacing: 5,
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.bookmark_border,
                              size: 12,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Education: ",
                              style: TextStyle(
                                color: Color.fromRGBO(142, 92, 74, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              " University of Dhaka (1973), Eden Mohila College",
                              style: TextStyle(
                                color: Color.fromRGBO(142, 92, 74, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Awards Wrap

                      Container(
                        margin: EdgeInsets.only(right: 36),
                        child: Wrap(
                          runSpacing: 5,
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          children: [
                            Icon(
                              Icons.bookmarks,
                              size: 12,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "Awards: ",
                              style: TextStyle(
                                color: Color.fromRGBO(142, 92, 74, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              " Indira Gandhi Prize, Glamour Award The Chosen Ones",
                              style: TextStyle(
                                color: Color.fromRGBO(142, 92, 74, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),

                //Button Container

                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30,),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    spacing: 10,
                    runSpacing: 5,
                    children:[
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=> MessangerPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.message_outlined,
                              size: 10,
                              color: Color.fromRGBO(22, 22, 22, 1),
                            ),
                            label: Text(
                                "Messenger",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(22, 22, 22, 1),
                                fontSize: 10
                              ),
                            ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.8,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=>FollowerPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.follow_the_signs_rounded,
                            size: 10,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text(
                            "Follower",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/3.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context)=> FollowingPage(),
                                ),
                            );
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 10,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text(
                            "Following",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/15,
                        width: MediaQuery.of(context).size.width/4.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(245, 245, 245, .5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=>PostsPage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.post_add_outlined,
                            size: 10,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text(
                            "Posts",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
