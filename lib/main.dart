import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   if(kIsWeb){
     await Firebase.initializeApp(
      options:const FirebaseOptions(
        apiKey:"AIzaSyBjKIA41aULT9tKKV5l1Oxikzi2qD9LLQI", 
        appId: "1:17950484937:web:3d16c98c9b1486644d6018",
        messagingSenderId: "17950484937",
        projectId:"instagram-50a2a",
      ),
     );
   }else{
    await Firebase.initializeApp();
   }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme:ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Colors.black,
      ),
      home:const Scaffold(
        body:Center(child:Text('India ')),
      ),
    );
  }
}

