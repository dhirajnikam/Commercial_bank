import 'package:commercial_bank/common/contain.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        centerTitle: true,
        title: Text("Commercial Bank"),
        elevation: 0,
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/homepage.png'),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "Welcome to our online banking \n System",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "This app is used only transfer of money between multiple \n customers and check balance.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/addnewUser');
              },
              child: Stack(
                children: [
                  Mycontainer(),
                  Center(
                    child: Container(
                      height: 60,
                      width: 170,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              "Add \nCostumer",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Icon(
                              Icons.add_box,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/balance');
              },
              child: Stack(
                children: [
                  Mycontainer(),
                  Center(
                    child: Container(
                      height: 60,
                      width: 170,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              "Balance \nCheck",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Icon(
                              Icons.account_balance,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/transcation_form');
              },
              child: Stack(
                children: [
                  Mycontainer(),
                  Center(
                    child: Container(
                      height: 60,
                      width: 170,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Text(
                              "Transfer \nBalance",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Icon(
                              Icons.double_arrow,
                              size: 30,
                            ),
                          ),
                        ],
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
  }
}
