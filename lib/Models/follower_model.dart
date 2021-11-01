
import 'package:flutter/cupertino.dart';

class FollowerModel{

  FollowerModel({
    @required this.username,
    @required this.profilePicture,
    @required this.friends,
  });
  String username;
  String profilePicture;
  int friends;
}