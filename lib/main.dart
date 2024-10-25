
// ignore_for_file: prefer_const_constructors

import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/features/auth/screens/auth_screens.dart';
import 'package:amazon_clone/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
      
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255) ,
        colorScheme: ColorScheme.light(),
        primaryColor: Colors.red,
        appBarTheme: const AppBarTheme(
          color: Colors.amber,
          elevation: 300,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        ),
        useMaterial3: true,),
        onGenerateRoute: (settings)=> generateRoute(settings) ,
        home: Scaffold( 
        appBar: AppBar(title: const Text("Home"),
        
        ),
        body: Column(
          children: [
            const Center(child: Text("Flutter Demo"),),
            Builder(
              builder: (context) {
                return ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, AuthScreen.routeName);
                }, child: Text("Click me"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                );
              }
            ),
            
          ],
        ),
      ),
      
      
    );
  }
}
