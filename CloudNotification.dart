import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class CloudNotification extends StatefulWidget {

  @override
  State<CloudNotification> createState() => _CloudNotificationState();
}

class _CloudNotificationState extends State<CloudNotification> {



  var token="";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseMessaging.instance.getToken().then((value) {

      setState(() {
        token = value;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Cloud Notification"),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(token)
            ],
          ),
        ),
      ),
    );
  }
}
