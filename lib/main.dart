import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int targetNumber = Random().nextInt(9) + 1;
  int score = 0;
  SnackBar? snackBar;
  Color snackBarcolor=Colors.red;
  String myAns="";

  void shuffleNumbers() {
    numbers.shuffle();
    setState(() {
      targetNumber = numbers[Random().nextInt(numbers.length)];
    });
  }


//   void shuffleNumbers() {
//   numbers.shuffle();
//   int randomIndex = Random().nextInt(numbers.length);
//   int newTargetNumber = numbers[randomIndex];
//   setState(() {
//     targetNumber = newTargetNumber;
//   });
// }

  // void shuffleNumbers() {
  //   numbers.shuffle();
  //   targetNumber = numbers[0]; // Set the first number in the shuffled list as the targetNumber
  //   setState(() {});
  // }



  void checkAnswer(int selectedNumber) {
    if (selectedNumber == targetNumber) {
      setState(() {
        score += 10;
        if (score == 110) {
          score = 10;
        }
      });
      snackBarcolor= Colors.green;
       myAns= "Correct the answer!";
    }else if(score==100){
      snackBarcolor=Colors.deepPurple;
      myAns="You win! Let's go to the next step";
    }else if(selectedNumber != targetNumber){
      snackBarcolor= Colors.red;
       myAns= "Try again!";
    }
     snackBar= SnackBar(content: Text(myAns),
     duration:const Duration(seconds: 1),
     backgroundColor: snackBarcolor,
     );
    ScaffoldMessenger.of(context).showSnackBar(snackBar!);
  }
// if(score==110){
//       snackBarcolor=Colors.deepPurple;
//       myAns="You win! Let's go to the next step";
//     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Learning English numbers",
            style: TextStyle(color: Colors.yellow,
            fontFamily: 'RussoOne',
            fontSize: 18,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 83, 6),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Text("Select the correct number: $targetNumber",
            style:const TextStyle(fontFamily: 'Righteous', fontSize: 15, color: Color.fromARGB(255, 145, 103, 207)),),
            const SizedBox(height: 40),
            Text("Score: $score", style: 
            const TextStyle(backgroundColor: Color.fromARGB(255, 18, 34, 35),
            fontFamily: 'Righteous', 
            fontSize: 12,
            color: Color.fromARGB(255, 147, 255, 7),
            )
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  highlightColor:
                      Color.fromARGB(255, 248, 242, 54).withOpacity(0.5),
                  splashColor:
                      Color.fromARGB(255, 37, 225, 235).withOpacity(0.8),
                  onTap: () {
                    checkAnswer(numbers[0]);
                    shuffleNumbers();
                    // if(numbers[0]==targetNumber){
                    //   snackBarcolor= Colors.green;
                    // }else{
                    //   snackBarcolor= Colors.red;
                    // }
                    // snackBar= SnackBar(content: Text("correct the ans"),
                    // duration: Duration(seconds: 1),
                    // backgroundColor: snackBarcolor,
                    // );
                    // ScaffoldMessenger.of(context).showSnackBar(snackBar!);
                  },
                  child: Image.asset(
                    "images/${numbers[0]}.png",
                    // "images/$targetNumber.png",
                    width: 65,
                  ),
                ),
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  highlightColor:
                      Color.fromARGB(255, 248, 242, 54).withOpacity(0.5),
                  splashColor:
                      Color.fromARGB(255, 37, 225, 235).withOpacity(0.8),
                  onTap: () {
                    checkAnswer(numbers[1]);
                    shuffleNumbers();
                  },
                  child: Image.asset(
                    "images/${numbers[1]}.png",
                    // "images/$targetNumber.png",
                    width: 65,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  highlightColor:
                      Color.fromARGB(255, 248, 242, 54).withOpacity(0.5),
                  splashColor:
                      Color.fromARGB(255, 37, 225, 235).withOpacity(0.8),
                  onTap: () {
                    checkAnswer(numbers[2]);
                    shuffleNumbers();
                  },
                  child: Image.asset(
                    "images/${numbers[2]}.png",
                    // "images/$targetNumber.png",
                    width: 65,
                  ),
                ),
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                  highlightColor:
                      Color.fromARGB(255, 248, 242, 54).withOpacity(0.5),
                  splashColor:
                      Color.fromARGB(255, 37, 225, 235).withOpacity(0.8),
                  onTap: () {
                    checkAnswer(numbers[3]);
                    shuffleNumbers();
                  },
                  child: Image.asset(
                    "images/${numbers[3]}.png",
                    // "images/$targetNumber.png",
                    width: 65,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: () {
                shuffleNumbers();
                setState(() {
                  score = 0;
                });
              },
              child: const Text("Refresh"),
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 217, 218, 224),
    );
  }
}
