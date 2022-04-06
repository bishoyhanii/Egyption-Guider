import 'package:flutter/material.dart';
import 'package:tourguide/splash.dart';

class loginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Smart Guide',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black),),
        elevation: 0,
      ),
      body: Container(
        height:double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://ichef.bbci.co.uk/news/976/cpsprodpb/14BBB/production/_97832948_gettyimages-623522238.jpg"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6,),
                        Text(
                          '  '
                              'Login',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(width: 6,),
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(width: 50,),
                        TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children:[
                            SizedBox(width: 50,),
                            SizedBox(
                              width: 12.0,
                            ),
                            IconButton(
                              onPressed: (){
                              },
                              icon: Icon(Icons.facebook,
                                color: Colors.blue,
                                size: 35,),
                            ),
                            SizedBox(
                              width: 150,
                              child: IconButton(
                                onPressed: (){},
                                icon: Image.network(
                                  'https://icon-library.com/images/sign-in-with-google-icon/sign-in-with-google-icon-3.jpg',),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children:[
                            SizedBox(width: 100,),
                            MaterialButton(
                              color: Colors.teal,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash()));
                              },
                              child:  Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],

                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Register Now',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}