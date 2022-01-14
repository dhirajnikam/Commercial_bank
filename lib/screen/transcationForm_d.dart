import 'package:commercial_bank/common/profile.dart';
import 'package:flutter/material.dart';

class TranscationDetail extends StatelessWidget {
  const TranscationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        elevation: 0,
        centerTitle: true,
        title: Text("Transaction Form Detail"),
      ),
      body: Column(
        children: [
          Container(
            child: Profile(),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/transaction_To');
            },
            child: Text(
              "Transact Money",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.greenAccent.shade400,
          )
        ],
      ),
    );
  }
}
