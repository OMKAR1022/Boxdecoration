import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: decoration(),
    );
  }
}

class decoration extends StatefulWidget {
  const decoration({Key? key}) : super(key: key);

  @override
  State<decoration> createState() => _decorationState();
}

class _decorationState extends State<decoration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(child: Text('Decoration')),
      ),

      body: Column(
           mainAxisAlignment: MainAxisAlignment.center,

        children: [

        Container(

        padding: const EdgeInsets.all(100),
        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),

       decoration:  BoxDecoration(
        
        border: Border.all(
          color: Colors.white10,
        ),

        borderRadius: BorderRadius.circular(15),

        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 2,
            blurRadius: 12,
          )
        ],
        //shape: BoxShape.circle,


        gradient: const LinearGradient(
          colors :[
            Color(0xFF3366FF),
            Color(0xFF00CCFF),

          ],
          begin: Alignment.topRight,
          end: Alignment.topLeft,
        ),





         ),
        ),
          const SizedBox(
           height: 50,
         ),
         Container(
            padding: const EdgeInsets.fromLTRB(0, 150, 0, 50),
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),

          decoration: BoxDecoration(
           //  color: Colors.blue,
             border: Border.all(
             color: Colors.white,
             width: 2,
           ),
           boxShadow: const [
             BoxShadow(
               color: Colors.black,
               blurRadius: 10,
               spreadRadius: 2,
             )
           ],//shape: BoxShape.rectangle ,
           borderRadius: BorderRadius.circular(15),
           image: const DecorationImage(

             image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZzG_yHwcgrgJD67eyyVVYIB44SHeOBWkoxw&usqp=CAU'
             ),fit: BoxFit.cover,),

           ),

       ),
          const SizedBox(height: 50,),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 130, 30, 90),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://wallpaperaccess.com/full/154009.jpg'
                ),
                fit: BoxFit.cover,
              ),

              shape: BoxShape.circle//we can also use Rectangle
            ),
          )
        ],
      ),
    );
  }
}
