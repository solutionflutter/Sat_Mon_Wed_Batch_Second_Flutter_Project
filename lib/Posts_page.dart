import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

List<PostModel> postmodels = [
  PostModel(username: "Mosharraf Karim",userImageUrl: "images/user_images/user_1.jpg",imageURl: "images/posts/post_1.jpg",caption: "The Sixty Dome Mosque, is a mosque in Bagerhat, Bangladesh.",address: "Bagerhat,khulna,khulna,Bangladesh",likes: 234,),
  PostModel(username: "Chanchal Chowdhury",userImageUrl: "images/user_images/user_2.jpg",imageURl: "images/posts/post_2.jpg",caption: "Hiran point is a tourist spot in Sunderban.",address: "Hiron Point,Shatkhira,Khulna,Bangladesh",likes: 214,),
  PostModel(username: "Abdur Rajjak",userImageUrl: "images/user_images/user_3.jpg",imageURl: "images/posts/post_3.jpg",caption: "Hardinge Bridge is a steel railway truss bridge over the Padma River.",address: "Pakshi,Kushtia,Khulna,Bangladesh",likes: 233,),
  PostModel(username: "Afran Nisho",userImageUrl: "images/user_images/user_4.jpg",imageURl: "images/posts/post_4.jpg",caption: "Rabindranath Tagore's Shilaidaha Kuthibari",address: "Kushtia,Khulan,Bangaldesh",likes: 5676,),
  PostModel(username: "Tawsif Mahbub",userImageUrl: "images/user_images/user_5.jpg",imageURl: "images/posts/post_5.jpg",caption: "Khulna Khan Jahan Ali Rupsha Bridge",address: "Khulna,khulna,Bangaldesh",likes: 345,),
  PostModel(username: "Shakib Al Hasan",userImageUrl: "images/user_images/user_6.jpg",imageURl: "images/posts/post_6.jpg",caption: "Khunal Museum whish is a beautiful spot",address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",likes: 3456,),
  PostModel(username: "Mehidy Hasan Miraz",userImageUrl: "images/user_images/user_7.jpg",imageURl: "images/posts/post_7.jpg",caption: "Important Information and Tourist place in khulna city (My Home Town)",address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",likes: 234,),
  PostModel(username: "Mashrafe Bin Mortaza",userImageUrl: "images/user_images/user_8.jpg",imageURl: "images/posts/post_8.jpg",caption: "Motorcycle showroom address dealers in Narail Bangladesh",address: "Narail,Khulna,Bangladesh",likes: 345,),
  PostModel(username: "Jaya Ahsan",userImageUrl: "images/user_images/user_9.jpg",imageURl: "images/posts/post_9.jpg",caption: "The Independent Mongla Port sees record of anchoring ships in Feb",address: "Mongla,Khulna,Bangladesh",likes: 3489),
  PostModel(username: "Mushfiqur Rahim",userImageUrl: "images/user_images/user_10.jpg",imageURl: "images/posts/post_10.jpg",caption: "Sundarban is a beautiful place at khulna ",address: "Sundarban,Khulna,Bangladesh",likes: 4347),
];




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
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 15),
          itemCount: postmodels.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              height: MediaQuery.of(context).size.height/1.28,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(21, 21, 21, .1),
                    Color.fromRGBO(21, 21, 21, .2),
                    Color.fromRGBO(21, 21, 21, .3),
                    Color.fromRGBO(21, 21, 21, .4),
                    Color.fromRGBO(21, 21, 21, .5),
                    Color.fromRGBO(21, 21, 21, .6),
                    Color.fromRGBO(21, 21, 21, .7),
                    Color.fromRGBO(21, 21, 21, .8),
                    Color.fromRGBO(21, 21, 21, .9),
                    Color.fromRGBO(21, 21, 21, 1),
                  ]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 3),
                child: Column(
                  children: [

                    //header of the post box

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("${postmodels[index].userImageUrl}"),
                            radius: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: "${postmodels[index].username}\n",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                children: [
                                  TextSpan(
                                    text: "${DateTime.now()}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color.fromRGBO(0, 0,0, .6),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Address Row

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color.fromRGBO(0, 0,0, .6),
                          ),

                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                "${postmodels[index].address}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, .6),
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //Caption Text

                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                          "${postmodels[index].caption}",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, .6),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height/3,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage("${postmodels[index].imageURl}"),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        children: [

                          // like flat button

                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3.8,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  width: 3,
                                  style: BorderStyle.solid,
                                )
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.heart,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "${postmodels[index].likes} likes",
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),

                          // commend flat button

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3.3,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(235, 235, 235, 1),
                                    width: 3,
                                    style: BorderStyle.solid,
                                  )
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.chat_bubble,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "Comments",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          ),

                          // share flat button

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 6),
                            child: Container(
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/3.8,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromRGBO(235, 235, 235, 1),
                                    width: 3,
                                    style: BorderStyle.solid,
                                  )
                              ),
                              child: FlatButton.icon(
                                icon: Icon(
                                  CupertinoIcons.share,
                                  size: 15,
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                label: Text(
                                  "Share",
                                  style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(35, 235, 235, 1)
                                  ),
                                ),
                                onPressed: (){},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        )
      )
    );
  }
}
