import 'package:flutter/material.dart';

class T_Takeplace extends StatelessWidget {
  const T_Takeplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        centerTitle: true,
        title: Text("Transcation Takeplace"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Container(
                child: Image.asset("assets/transaction.png"),
              ),
            ),
            Text("You want to transfer Form",style: TextStyle(fontSize: 25),),
             SizedBox(
                  height: 10,
                ),
            Text("Eyosiyas Tibebu",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(
                  height: 10,
                ),
            Text("To",style: TextStyle(fontSize: 20,),),
             SizedBox(
                  height: 10,
                ),
            Text("Tibebu Endalamaw",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(
                  height: 20,
                ),
            Container(
                height: 55,
                width: 350,
                child: TextField(
                    decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(40)),
                  hintText: '2000',
                ))),
                SizedBox(
                  height: 10,
                ),
            Text("ETB Birr",style: TextStyle(fontSize: 20),),
             SizedBox(
                  height: 10,
                ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: MaterialButton(
                color: Colors.greenAccent.shade400,
                minWidth: 400,
                height: 40,
                onPressed: () {},
                child: Text(
                  
                  "Agree",
                  style: TextStyle(color: Colors.white,fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
