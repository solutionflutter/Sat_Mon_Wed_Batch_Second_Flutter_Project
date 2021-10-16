import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:satmonwedsecondbatch/profile_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              // image container

              Container(
                margin: EdgeInsets.only(top: 100),
                height: MediaQuery.of(context).size.height/4.5,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("images/Splash_Screen_Image.png"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 255, 1),
                  ),
                ),
              ),



              // Text Container

              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/1.2,
                padding: EdgeInsets.only(
                  left: 40,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  "Sat Mon Wed Batch Second, Welcome To "
                      "flutter Advance design",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.green,
                    decorationStyle: TextDecorationStyle.dashed,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),


              //Button container
              Container(
                height: MediaQuery.of(context).size.height/12,
                width: MediaQuery.of(context).size.width/3.5,
                margin: EdgeInsets.only(
                    left: 25,
                    bottom: 120,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(129, 123, 122, .5),
                  border: Border.all(
                    color: Color.fromRGBO(199, 69, 47, 0.7),
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> ProfilePage(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          "Enter",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(174, 123, 212, 1)
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: Color.fromRGBO(174, 123, 212, 1),
                      ),
                    ]
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
