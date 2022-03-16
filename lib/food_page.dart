
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
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


                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black,),),
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
                child: Image(
                  image: AssetImage('assets/images/image_food/burger3.png',),
                  fit: BoxFit.cover,)),
            Text("Need", style: TextStyle(color: Color(0xff343434),
                fontSize: 24,
                fontWeight: FontWeight.bold),),
            Text("Food", style: TextStyle(color: Color(0xff343434),
                fontSize: 24,
                fontWeight: FontWeight.w500),)
          ],
        ),

      ),
      body: Container(
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                height: size.height * 0.2,
                width: size.width * 0.95,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text('Paket cheese\n'
                          'Burger komplit', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),),
                      SizedBox(height: 8,),
                      Container(
                        height: 30,
                        width: 100,

                        child: Center(child: Text("Order Now", style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),)),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),

                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_food/banner1.png'),

                  ),

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Categories",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 20,
                  child: Container(
                    child: Column(

                      children: [
                        Image.asset('assets/images/image_food/menu1.png'),
                        Text("Burger",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight
                              .w700),),
                      ],
                    ),
                    height: size.height * 0.125,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(


                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 20,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/image_food/cat1.png'),
                          Text("Drink", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                    height: size.height * 0.125,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 20,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/image_food/food1.png'),
                          Text("Pizza", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      ),
                    ),
                    height: size.height * 0.125,
                    width: size.width * 0.25,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(height: size.height * 0.02,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Popular Now",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            Container(
              height: size.height * 0.24,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Material(

                    borderRadius: BorderRadius.circular(12),
                    elevation: 20,
                    child: Container(
                      child: Column(


                        children: [
                          Image.asset('assets/images/image_food/food_2.png'),
                          Text("Burger", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      height: size.height * 0.22,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 20,
                    child: Container(
                      child: Column(

                        children: [
                          Image.asset('assets/images/image_food/cat_2.png'),
                          Text("Burger", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      height: size.height * 0.22,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(12),
                    elevation: 20,
                    child: Container(
                      child: Column(

                        children: [
                          Image.asset('assets/images/image_food/food_2.png'),
                          Text("Burger", style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),),
                        ],
                      ),
                      height: size.height * 0.22,
                      width: size.width * 0.35,
                      decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }




}
