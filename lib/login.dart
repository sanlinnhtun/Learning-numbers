import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  TextEditingController userCtrl= TextEditingController();
  TextEditingController passctrl= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Login page"),
        )
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: userCtrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon: Icon(Icons.person)
                ),
                // onChanged:(value) {
                //   setState(() {
                //     username=value;
                //   });
                // },
                onSubmitted:(value) {
                  setState(() {
                    debugPrint(username);
                    username=value;
                  });
                },
              ),

                TextField(
                controller: userCtrl,
                keyboardType: TextInputType.number,
                
                // onChanged:(value) {
                //   setState(() {
                //     username=value;
                //   });
                // },
                onSubmitted:(value) {
                  setState(() {
                    debugPrint(username);
                    username=value;
                  });
                },
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(onPressed: (){
                  debugPrint(userCtrl.text);
                  userCtrl.clear();
                }, child:const Text("Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
