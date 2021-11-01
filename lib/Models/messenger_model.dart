import 'package:flutter/material.dart';

class MessangerModel {
  MessangerModel({
    @required this.username,
    @required this.lastMessage,
    @required this.profileImage,
  });

  String username;
  String lastMessage;
  String profileImage;
}
