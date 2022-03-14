import 'package:flutter/material.dart';
import 'package:need_food/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size =mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        elevation: 4,
        child: Icon(Icons.keyboard_arrow_right),

        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context) => SecondPage(),) );
        },),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/image_start/burger_1.png',height: 40,width: 40,),
            const Text('Need',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
            const Text('Food',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,



          children: [
            Center(child: Image.asset('assets/images/image_start/fast_food1.png',height: size.height * 0.44,width: size.width * 0.9)),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Pilih menu\n"
                      "favoritemu",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                  SizedBox(height: 16,),
                  Text("Ada banyak jenis makanan\n"
                      "yang tersidea disini"),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size =mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        elevation: 4,
        child: Icon(Icons.keyboard_arrow_right),

        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context) => ThirdPage(),) );
        },),
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/image_start/burger_1.png',height: 40,width: 40,),
            const Text('Need',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
            const Text('Food',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,



          children: [
            Center(child: Image.asset('assets/images/image_start/fast_food2.png',height: size.height * 0.44,width: size.width * 0.9)),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Temukan\n"
                      "harga terbaik",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                  SizedBox(height: 16,),
                  Text("Ada banyak pilihan menu\n"
                      "makanan disini"),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size =mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        elevation: 4,
        child: Icon(Icons.keyboard_arrow_right),

        onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context) => LoginPage(),) );
        },),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/image_start/burger_1.png',height: 40,width: 40,),
            const Text('Need',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
            const Text('Food',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: size.height * 1,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,



          children: [
            Center(child: Image.asset('assets/images/image_start/fast_food3.png',height: size.height * 0.44,width: size.width * 0.9)),
            Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Makananmu\n"
                      "siap diantarkan",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                  SizedBox(height: 16,),
                  Text("Kami akan segera mengirim\n"
                      "makanan anda hangat - hangat"),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}







