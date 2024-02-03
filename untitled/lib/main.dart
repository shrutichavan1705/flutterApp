
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Application",
      theme: ThemeData(
        primaryColorDark: Colors.black,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: const Text("Login Screen"),
        backgroundColor: Colors.amberAccent,
        actions: [
          IconButton( icon: const Icon(Icons.search),onPressed: (){
            print("Opened");
          })
        ],
      ),

      body: Center(
        child: Container(
          width: 400,
          height: 450,

          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black45),
            borderRadius: BorderRadius.circular(10),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            
            children: [

              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 20),
                child:const Text("Login Here!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),

              ),

              SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  padding: const EdgeInsets.all( 10),
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amberAccent,width: 2)
                  ),

                  child: EditableText(controller: TextEditingController(), focusNode: FocusNode(), style: const TextStyle(fontSize: 14.0,color: Colors.black87), cursorColor: Colors.amberAccent, backgroundCursorColor: Colors.black),
                )
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left:90),

                child:Text("Username",style: TextStyle(color: Colors.black,fontWeight: FontWeight.lerp(FontWeight.bold, FontWeight.w300, 1)),),

              ),


              SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amberAccent,width: 2)
                  ),

                  child: EditableText(controller: TextEditingController(), focusNode: FocusNode(), style: const TextStyle(fontSize: 14,color: Colors.black87), cursorColor: Colors.amberAccent, backgroundCursorColor: Colors.transparent),
                )
                ,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left:90),
                child: Text("Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.lerp(FontWeight.bold, FontWeight.w300, 1))),

              ),

              Container(
                padding: const EdgeInsets.all(0),
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: (){
                        print("done");
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
                      foregroundColor: MaterialStateProperty.all(Colors.white)
                      ),
                      child: const Text("Login"),
                  )
              )
            ]
          )
        )
      )
    );
  }

}