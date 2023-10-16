import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 58, 183, 75)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Learning English numbers", style: TextStyle(color: Colors.yellow),),
        ),
        backgroundColor:const Color.fromARGB(255, 12, 83, 6),
      ),
      body:  Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Column(
              children: [
                SizedBox(height: 40),
                Text("Select the correct numbers:"),
                SizedBox(height: 40),
                Text("Score:"),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    highlightColor: const Color.fromARGB(255, 248, 54, 77).withOpacity(0.5),
                    splashColor: const Color.fromARGB(255, 179, 235, 37).withOpacity(0.8),
                    focusColor: Colors.red.withOpacity(0.4),
                    hoverColor: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                    // customBorder: CircleBorder(),
                  onTap: () {
                    setState(() {
                      
                    });
                    print("I got a click");
                  },
                  child: Image.asset("images/1.png", width: 65,),
                ),
                InkWell(
                    highlightColor:const Color.fromARGB(255, 248, 54, 77).withOpacity(0.5),
                    splashColor:const Color.fromARGB(255, 179, 235, 37).withOpacity(0.8),
                    focusColor: Colors.red.withOpacity(0.4),
                    hoverColor: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      
                    });
                    print("I got a click");
                  },
                  child:  Image.asset("images/2.png", width: 65, color:const Color.fromARGB(255, 24, 47, 61),),
                ),
              ],
            ),
            const SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    highlightColor:const Color.fromARGB(255, 248, 54, 77).withOpacity(0.5),
                    splashColor:const Color.fromARGB(255, 179, 235, 37).withOpacity(0.8),
                    focusColor: Colors.red.withOpacity(0.4),
                    hoverColor: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      
                    });
                    print("I got a click");
                  },
                  child:  Image.asset("images/3.png", width: 65,),
                ),
                InkWell(
                    highlightColor:const Color.fromARGB(255, 248, 54, 77).withOpacity(0.5),
                    splashColor:const Color.fromARGB(255, 179, 235, 37).withOpacity(0.8),
                    focusColor: Colors.red.withOpacity(0.4),
                    hoverColor: Colors.blue.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    setState(() {
                      
                    });
                    print("I got a click");
                  },
                  child:  Image.asset("images/4.png", width: 65,),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Column(
              children: [
                OutlinedButton(onPressed: (){
                  print("outlin buttonn is working");
                }, child: const Text("Refresh"))
              ],
            ),
            ],
        ),
        
      ),
      backgroundColor:Color.fromARGB(255, 217, 218, 224),
    );
  }
}
