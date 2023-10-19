import 'package:flutter/material.dart';
import 'dart:math';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // String numOfper="";
  // String numOfAmout="";
  TextEditingController numOfper= TextEditingController();
  TextEditingController numOfAmout= TextEditingController();
  double result=0.0;
void calculatedMoney(){
  if(numOfper.text.isNotEmpty && numOfAmout.text.isNotEmpty){
    int personNum=int.parse(numOfper.text);
    double totalAmout=double.parse(numOfAmout.text);
    setState(() {
      result= totalAmout / personNum;
    });
  }
  // var num=int.parse(numOfper);
  // var myInt2=int.parse(numOfAmout);
  
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Color.fromARGB(255, 244, 242, 247),
      appBar: AppBar(
        title: const Center(
          child: Text("Cash payment"),
        )
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                cursorColor: const Color.fromARGB(255, 65, 179, 228),
                controller: numOfper,
                keyboardType: TextInputType.number,
                decoration:const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 204, 217, 220),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(232, 222, 235, 40))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 7), width: 2.5)
                  ),
                  prefixIconColor: Color.fromARGB(255, 19, 76, 100),
                  prefixIcon: Icon(Icons.people_alt_sharp),
                  labelText: 'Number of people',
                  // hintText: 'Enter number of people',
                ),
                // onChanged:(value) {
                //   setState(() {
                //     numOfper=value;
                //     debugPrint(numOfper);
                //   });
                // },
                // onSubmitted:(value) {
                //   setState(() {
                //     numOfper=value; 
                //     debugPrint(numOfper);
                //   });
                // },
              ),
              const SizedBox(height: 30,),
                TextField(
                controller: numOfAmout,
                cursorColor: const Color.fromARGB(255, 65, 179, 228),
                keyboardType: TextInputType.number,
                decoration:const InputDecoration(
                   filled: true,
                  fillColor: Color.fromARGB(255, 204, 217, 220),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(232, 222, 235, 40))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 8, 8, 7), width: 2.5)
                  ),
                  prefixIconColor: Color.fromARGB(255, 19, 76, 100),
                  prefixIcon: Icon(Icons.monetization_on_rounded),
                  labelText: "Total Amount",
                ),
                // onChanged:(value) {
                //   setState(() {
                //     username=value;
                //   });
                // },
                // onSubmitted:(value) {
                //   setState(() {
                //     numOfAmout=value;
                //     debugPrint(numOfAmout);
                //   });
                // },
              ),

              const SizedBox(height: 20),

              Text("$result MMK per person"),

              const SizedBox(height: 20),

              SizedBox(
                width: 400,
                child: ElevatedButton(onPressed: (){
                  // debugPrint(userCtrl.text);
                  // debugPrint(passctrl.text);
                  calculatedMoney();
                  numOfper.clear();
                  numOfAmout.clear();
                }, child:const Text("Calculate")),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
