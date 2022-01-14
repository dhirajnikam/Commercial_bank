import 'package:commercial_bank/common/profile.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        centerTitle: true,
        title: Text("Balance Detail"),
        elevation: 0,
      ),
      body: Container(
        child: Profile(),
      )
    );
  }
}
