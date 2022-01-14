import 'package:commercial_bank/screen/Login/login.dart';
import 'package:commercial_bank/screen/addNewUser.dart';
import 'package:commercial_bank/screen/balance.dart';
import 'package:commercial_bank/screen/t_Takeplace.dart';
import 'package:commercial_bank/screen/transaction_To.dart';
import 'package:commercial_bank/screen/transcationForm_d.dart';
import 'package:commercial_bank/screen/transcation_form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screen/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      
  routes: {
    
    '/homePage': (context) => const HomePage(),
    '/addnewUser': (context) => const AddnewUser(),
    '/balance': (context) => const Balance(),
    '/transcation_form': (context) => const Transcation_form(),
    '/transcation_Detail':(context) => const TranscationDetail(),
    '/transaction_To':(context) => const Transaction_To(),
    '/t_Takeplace':(context) => const T_Takeplace(),

  },
      home: LoginScreen(),
    );
  }
}

