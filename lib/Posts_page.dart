import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/Models/models.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

List<PostModel> postmodels = [
  PostModel(username: "Mosharraf Karim",userImageUrl: "images/user_images/user_1.jpg",imageURl: "images/posts/post_1.jpg",caption: "The Sixty Dome Mosque, is a mosque in Bagerhat, Bangladesh.",address: "Bagerhat,khulna,khulna,Bangladesh",),
  PostModel(username: "Chanchal Chowdhury",userImageUrl: "images/user_images/user_2.jpg",imageURl: "images/posts/post_2.jpg",caption: "Hiran point is a tourist spot in Sunderban.",address: "Hiron Point,Shatkhira,Khulna,Bangladesh",),
  PostModel(username: "Abdur Rajjak",userImageUrl: "images/user_images/user_3.jpg",imageURl: "images/posts/post_3.jpg",caption: "Hardinge Bridge is a steel railway truss bridge over the Padma River.",address: "Pakshi,Kushtia,Khulna,Bangladesh",),
  PostModel(username: "Afran Nisho",userImageUrl: "images/user_images/user_4.jpg",imageURl: "images/posts/post_4.jpg",caption: "Rabindranath Tagore's Shilaidaha Kuthibari",address: "Kushtia,Khulan,Bangaldesh",),
  PostModel(username: "Tawsif Mahbub",userImageUrl: "images/user_images/user_5.jpg",imageURl: "images/posts/post_5.jpg",caption: "Khulna Khan Jahan Ali Rupsha Bridge",address: "Khulna,khulna,Bangaldesh",),
  PostModel(username: "Shakib Al Hasan",userImageUrl: "images/user_images/user_6.jpg",imageURl: "images/posts/post_6.jpg",caption: "Khunal Museum whish is a beautiful spot",address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",),
  PostModel(username: "Mehidy Hasan Miraz",userImageUrl: "images/user_images/user_7.jpg",imageURl: "images/posts/post_7.jpg",caption: "Important Information and Tourist place in khulna city (My Home Town)",address: "Shib_bari mor,Khulna,Khulna,Bangaldesh",),
  PostModel(username: "Mashrafe Bin Mortaza",userImageUrl: "images/user_images/user_8.jpg",imageURl: "images/posts/post_8.jpg",caption: "Motorcycle showroom address dealers in Narail Bangladesh",address: "Narail,Khulna,Bangladesh",),
  PostModel(username: "Jaya Ahsan",userImageUrl: "images/user_images/user_9.jpg",imageURl: "images/posts/post_9.jpg",caption: "The Independent Mongla Port sees record of anchoring ships in Feb",address: "Mongla,Khulna,Bangladesh",),
  PostModel(username: "Mushfiqur Rahim",userImageUrl: "images/user_images/user_10.jpg",imageURl: "images/posts/post_10.jpg",caption: "Sundarban is a beautiful place at khulna ",address: "Sundarban,Khulna,Bangladesh",),
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
    );
  }
}
