import 'package:flutter/material.dart';

class Form_t extends StatelessWidget {
  const Form_t({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade100,
                //offset: Offset(0.0,)
                offset: const Offset(
                  0.1,
                  1.0,
                ),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                // radius: 50,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person,
                  color: Colors.green.shade50,
                ),
              ),
            ),
            Container(
              width: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Eyosiyas Tibeebu"),
                  Text("Balance 10004565")
                ],
              ),
            ),
            Container(
              child: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}