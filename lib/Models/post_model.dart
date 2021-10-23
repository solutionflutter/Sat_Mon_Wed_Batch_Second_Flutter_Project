 import 'package:flutter/material.dart';

class PostModel{

  PostModel({
    @required this.username,
    @required this.caption,
    @required this.address,
    @required this.imageURl,
    @required this.userImageUrl,
  });

  String imageURl = "";
  String address = "";
  String caption = "";
  String username = "";
  String userImageUrl = "";
 }