import 'package:flutter/foundation.dart';

class Followingmodel {
  Followingmodel({
    @required this.profileImageURL,
    @required this.date,
    @required this.username,
  });

  String username;
  String date;
  String profileImageURL;
}
