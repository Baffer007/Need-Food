import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
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
                child: Image(image: AssetImage('assets/images/image_food/burger3.png',),fit: BoxFit.cover,)),
            Text("Need", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.bold),),
            Text("Food", style: TextStyle(color: Color(0xff343434), fontSize: 24, fontWeight: FontWeight.w500),)
          ],
        ),

      ),
      body:Column(
        children: [
          Card(
            child: Image.asset("assets/images/image_food/banner1.png"),
          ),

        ],
      ),
    );
  }
}
