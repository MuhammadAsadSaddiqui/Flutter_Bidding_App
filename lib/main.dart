import 'package:flutter/material.dart';

// void hello(){
//   print("Hello World Function");
// }

void main() {
  runApp(const MyApp());
  // String filter = 'company';    //public
  // String _name  = "Asad";       //private
  // String combinedName = 'Main ' + 'Function';
  // String multiLineAddress = '''123 any Street,
  // city, state, Zip
  // ''';
  // final comp = 'final';
  // print(comp);
  // print(combinedName);
  // print(multiLineAddress);
  //
  //
  // int counter = 0;
  // double price = 0.0;
  // price = 125.00;
  //
  //
  // // const String filters = 'company' + filterOption;
  // bool isDone = false;
  // isDone = true;
  // print(isDone);
  //
  // List fruits = ["Apple", "Peach"];
  // // List contact = List(25);
  // // print(fruits);
  //
  // fruits.forEach((e){
  //   print("Fruits: $e");
  // });
  //
  // Map students = {
  //   'name': "Asad",
  //   'SapID': 41469,
  // };
  //
  // print(students);
  //
  // Runes myEmoji = Runes('\u{1f607}');
  // print(myEmoji);
  // print(String.fromCharCodes(myEmoji));
  //
  // var num = 21;
  // num++;
  // print(num);
  // if(num == 22 ) {
  //   print("Num is equal to 21");
  // }else{
  //   print("Not equal");
  // }
  //
  // num==22? print("n : 21") : null;     //ternary operator
  // List even = [0,2,4,6,8];

  // for(int i=0;i < even.length; i++){
  //     print(even[i]);
  // }

  // for( int i in even){
  //   print(i);
  // }
  // hello();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidding App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MaximumBid(title: 'Bidding Application'),
    );
  }
}
class MaximumBid extends StatefulWidget {
    const MaximumBid({super.key, required this.title});

    final String title;

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}


class _MaximumBidState extends State<MaximumBid> {
  double _currentBid = 0.0;

  void _increaseBid() {
    setState(() {
      _currentBid += 50.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Product Name : Toyota Supra',
              style: TextStyle(
                fontSize: 24.0, // Adjust the font size here
              ),
            ),

            const Text(
              'Your Current Maximum Bid:',
            ),
            Text(
              '$_currentBid',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            OutlinedButton(
                onPressed: _increaseBid,
                child:  const Text('Increase Bid by \$50'))
          ],
        ),

      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _increaseBid,
      //   tooltip: '_increaseBid',
      //   child: Text('Increase Bid by \$50'),
      // ), // .
    );
  }
}
