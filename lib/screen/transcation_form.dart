import 'package:commercial_bank/common/form_t.dart';
import 'package:flutter/material.dart';

class Transcation_form extends StatelessWidget {
  const Transcation_form({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Transcation Form"),
        backgroundColor: Colors.greenAccent.shade400,
        elevation: 0,
      ),
      body: Column(
        children: [
         GestureDetector(
           onTap: () {
        Navigator.pushNamed(context, '/transcation_Detail');
      },
           child: Form_t()),
    GestureDetector(
           onTap: () {
        Navigator.pushNamed(context, '/transcation_Detail');
      },
           child: Form_t()),
            GestureDetector(
           onTap: () {
        Navigator.pushNamed(context, '/transcation_Detail');
      },
           child: Form_t()),
            GestureDetector(
           onTap: () {
        Navigator.pushNamed(context, '/transcation_Detail');
      },
           child: Form_t()),
                 
         
        ],
      ),
    );
  }
}


