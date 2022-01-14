import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:commercial_bank/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: ,
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: CircleAvatar(
            radius: 130,
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              color: Colors.red,
              size: 180,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Name : ${loggedInUser.fullName}",
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Mobile : ${loggedInUser.mobileNum}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade700)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Email : ${loggedInUser.email}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade700)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Account Number : ${loggedInUser.accNum}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade700)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("IFSC code : ${loggedInUser.ifscNum}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade700)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("Current Balance : ${loggedInUser.currentBal}",
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade700)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

