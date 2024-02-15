import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.brown[900],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "HESAPMATİK",
            style: TextStyle(
                color: Colors.grey[400],
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: const Calculator());
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var number1, number2, result;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  raddTheNumbers() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 + number2;
    });
  }

  substrackTheNumbers() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 - number2;
    });
  }

  multiplyingNumbers() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 * number2;
    });
  }

  divideNumbers() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      result = number1 / number2;
    });
  }

  void _clearValues() {
    setState(() {
      t1.text = "";
      t2.text = "";
      result = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "$result",
                    style:const  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const  SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextField(
                style: TextStyle(color: Colors.grey[400]),
                decoration: InputDecoration(
                  label: Text(
                    "SAYI GİRİN!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[400]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:const  BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide:const  BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(30)),
                ),
                controller: t1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: TextField(
                style: TextStyle(color: Colors.grey[400]),
                decoration: InputDecoration(
                  label: Text(
                    "SAYI GİRİN!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[400]),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  const BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const  BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                controller: t2,
              ),
            ),
            const  SizedBox(height: 20),
            ElevatedButton(
              style:  const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.brown)),
              onPressed: _clearValues,
              child: Text(
                "C",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: raddTheNumbers,
                child: Text(
                  "TOPLA",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
              ),
            ),
            const  SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: substrackTheNumbers,
                  child: Text("ÇIKAR",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]))),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: multiplyingNumbers,
                  child: Text("ÇARP",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]))),
            ),
            const  SizedBox(
              height: 4,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.brown, borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                  onPressed: divideNumbers,
                  child: Text("BÖL",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400]))),
            ),
          ],
        ),
      ),
    );
  }
}
