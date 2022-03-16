import 'package:flutter/material.dart';

import 'food_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isPassHidden = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    var size = mediaQueryData.size;
    var orientation = mediaQueryData.orientation;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/burger_2.png",
                  width: 50,
                  height: 50,
                ),
                const Text(
                  "Need",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Food",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            height: size.height * 0.206,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Rectangle1.png"),
              ),
            ),
          ),//Container1
          Container(
            height: size.height *0.794,
            width: 400,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/pizza1.png"),
                    Image.asset("assets/images/fast_food4.png"),
                    Image.asset("assets/images/salad1.png"),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign In",
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 36),
                    ),
                    Image.asset("assets/images/platter1.png"),
                  ],
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 2, 32, 2),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) return "Bu maydon to'ldiring!";

                          },
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.login),
                            hintText: 'Enter your login',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) return "Bu maydon to'ldiring!";
                            if (value!.length < 8)
                              return "Parol 8 ta belgidan kam ";
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
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
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                  });
                                },
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
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
                          if(isValid)
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xff35B6FF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 360,
                          height: 60,
                          child: const Center(
                              child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/images/fast_food5.png",height:60,width: 60,),
                      Image.asset("assets/images/pizza1.png",height: 60,width: 60,),

                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,

                      children: [
                        Image.asset("assets/images/salad2.png",height: 40,width: 40,),
                        Image.asset("assets/images/platter2.png",height: 40,width: 40,),

                      ],

                    ),
                  ),
                ],

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



              ], //Column1
            ),
          ),//Container2
        ],
      ),
    );
  }
}
