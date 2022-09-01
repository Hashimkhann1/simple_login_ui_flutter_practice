import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/login.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0 , top: 110.0),
              child: Text('Welcome\nBack' , style: TextStyle(
                fontSize: 33.0,
                color: Colors.white
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5 , left: 30.0 , right: 30.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        // fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white38),
                        ),
                      ),
                      style: TextStyle(
                          fontSize: 20.0,
                          height: 1.2
                      ),
                    ),
                    SizedBox(height: 12.0,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        filled: true,
                        // fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.white38),
                        )
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign In' , style: TextStyle(
                              fontSize: 26.0,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff4c505b)
                          ),
                          ),
                        CircleAvatar(
                         radius: 30.0,
                         backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: (){},
                            color: Colors.white,
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('Sign Up' , style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff4c505b),
                          decoration: TextDecoration.underline,
                        ),),),
                        TextButton(onPressed: (){}, child: Text('Forgot Password' , style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff4c505b),
                          decoration: TextDecoration.underline,
                        ),),),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
