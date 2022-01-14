import 'package:commercial_bank/common/form_t.dart';
import 'package:commercial_bank/screen/transcation_form.dart';
import 'package:flutter/material.dart';

class Transaction_To extends StatelessWidget {
  const Transaction_To({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        centerTitle: true,
        title: Text("Transaction To"),
        elevation: 0,
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/t_Takeplace');
              },
              child: Form_t()),
           GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/t_Takeplace');
              },
              child: Form_t()),
               GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/t_Takeplace');
              },
              child: Form_t()),
               GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/t_Takeplace');
              },
              child: Form_t()),
        ],
      ),
    );
  }
}
