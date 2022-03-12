import 'package:flutter/material.dart';
import 'package:need_food/second_page.dart';


class Body_Page1 extends StatefulWidget {
  const Body_Page1({Key? key}) : super(key: key);

  @override
  State<Body_Page1> createState() => _Body_Page1State();
}

class _Body_Page1State extends State<Body_Page1> {
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isPassHidden = true;
  @override
  Widget build(BuildContext context) {


    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      body: ListView(

        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.206,
                width: double.infinity,
                child: Image.asset('assets/images/image1.png',
                    color: const Color(0xff35B6FF)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/images/burger1.png'),
                  const Text(
                    'NeedFood',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 36),
                  ),
                ],
              ),


            ],
          ),
          Container(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/pizza.png',
                  width: 74,
                  height: 74,
                ),
                Image.asset(
                  'assets/images/fast_food.png',
                  height: 60,
                  width: 60,
                ),
                SizedBox(
                  width: 48,
                  child: Image.asset('assets/images/salad.png',
                      width: 74, height: 74),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 140,
              ),
              Text(
                "Sign In",
                style: TextStyle(fontSize: 36),
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset('assets/images/platter1.png'),
            ],
          ),
          Form(
            key: formKey,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 20, 32, 20),
                  child: TextFormField(
                    validator: (value){
                      if (value!.isEmpty) return "Bu maydon to'ldiring!";
                    },
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.login),
                      hintText: 'Enter your login',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: TextFormField(
                    validator: (value){
                      if (value!.isEmpty) return "Bu maydon to'ldiring!";
                      if(value!.length < 8) return "Parol 8 ta belgidan kam ";
                    },
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: _isPassHidden
                            ? const Icon(Icons.visibility_outlined)
                            : const Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isPassHidden = !_isPassHidden;
                          });
                        },
                      ),
                      hintText: 'Enter your password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                    ),
                    obscureText: _isPassHidden,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      final snackBar = SnackBar(
                        content: const Text(
                          "Yana bir urinib ko'ring!",
                          style: TextStyle(color: Colors.white),
                        ),
                        action: SnackBarAction(
                          label: "OK",
                          onPressed: () {
                            setState(() {
                              ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            });
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  },
                  child: const Text(
                    "Forgot password ?",
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
                InkWell(
                  onTap: () {
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      formKey.currentState!.save();
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff35B6FF),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    width: 360,
                    height: 60,
                    child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )),
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  margin: EdgeInsets.zero,
                  padding:EdgeInsets.zero ,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 32),
                          Image.asset('assets/images/fast_food2.png'),
                          SizedBox(width: 100),

                          Image.asset('assets/images/pizza.png'),

                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 140,
                          ),
                          Image.asset('assets/images/salad2.png'),
                          SizedBox(
                            width: 100,
                          ),
                          Image.asset('assets/images/platter2.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(onPressed: (){
                  final snackBar = SnackBar(content: const Text("Boshqa account oching!",style: TextStyle(color: Colors.white),),action: SnackBarAction(
                    label: "Ok",
                    onPressed: (){
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    },
                  ) ,);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                }, child: const Text("No account yet ?",style: TextStyle(color: Colors.black45),),),
                TextButton(
                  onPressed: (){}, child: const Text('Sign up now !'),),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
