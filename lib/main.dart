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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 235, 137, 170)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Teste Andressa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 241, 79, 193),
      appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: sizeWidth * 0.0115, 
              vertical: sizeHeight * 0.0115,
            ),
            children:  [
              DrawerHeader(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  gradient:LinearGradient(colors:
                  <Color>[
                    Color.fromARGB(255, 199, 19, 19), 
                    Color.fromARGB(255, 206, 56, 11),
                  ], ),
                ), child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // UserAccountsDrawerHeader(
                        //             accountEmail: Text("user@mail.com"),
                        //             accountName: Text("Seu zé"),
                        //             currentAccountPicture: CircleAvatar(
                        //               child: Text("SZ"),
                        //             ),
                        //           ),
                        Text("Andressa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 32, 
                          color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: sizeHeight * 0.025,
                    ),
                    const Text("Aluna de ADS Unifanap", 
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: sizeHeight * 0.0725,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  backgroundColor: const Color.fromARGB(1, 112, 114, 219),
                  child: const Icon(Icons.add),
                ),
                SizedBox(
                  width: sizeWidth * 0.025,
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  backgroundColor: const Color.fromARGB(1, 199, 105, 228),
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
