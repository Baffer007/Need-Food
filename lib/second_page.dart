import 'package:flutter/material.dart';

import 'card_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Card(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100),),
              ),
              child: IconButton(


                onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,),),
            ),
          ),


        ],
        backgroundColor: Colors.white,
        elevation: 8,
        automaticallyImplyLeading: false,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const[
        SizedBox(
        height: 40,
        child: Image(image: AssetImage('assets/images2/burger_next1.png',),fit: BoxFit.cover,)),
    Text("Need", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.bold),),
    Text("Food", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.w500),)
],
        ),

     ),
      body:Column(
        children: [
      Card(
      child: Image.asset("assets/images2/banner1.png"),
    ),

        ],
      ),



    );
  }
}
// Card(
// elevation: 20,
//
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// Image.asset("assets/images2/burger_next1.png"),
// SizedBox(width: 4),
// Text("Need",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
// Text("Food",style: TextStyle(fontSize: 24),),
// ],
// ),
// color: Colors.white,
// ),