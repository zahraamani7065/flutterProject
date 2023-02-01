import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black38),
        textTheme:
        TextTheme(bodyText1: TextStyle(fontSize: 20,color: Colors.white, )),


        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('flutter'),),
      body:
         Column(
          crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.start,
        children: [
            Padding(
              padding: const EdgeInsets.only(top: 25,right: 10),
              child: Text('تنظیمات',style: Theme.of(context).textTheme.bodyText1,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text('سعید کاشانی',style: Theme.of(context).textTheme.bodyText1,),
                    SizedBox(width: 8,),

                    ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/download.png',width: 40,height: 40,)),

              ],),

            ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: SizedBox(
              width: 360,
              height: 60,
              child:  ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton (onPressed:(){print('clicked');}, child: Text('خرید اشتراک',style: Theme.of(context).textTheme.bodyText1,),
                    style: OutlinedButton.styleFrom(backgroundColor: Colors.red,

                    ),



                ),
              )
              ,
            ),
          ),

        ],

        ),


    );

  }
}
