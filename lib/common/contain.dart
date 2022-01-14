import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  const Mycontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 170,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white
            // boxShadow: BoxShadow[]

            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100)),
                  color: Colors.greenAccent),
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(100)),
                  //color: Colors.grey
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
