import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final isToggleButtonSelectedFirst = <bool>[false, false, false];
  final isToggleButtonSelectedSecond = <bool>[false, false, false];
  final isToggleButtonSelectedThird = <bool>[true, false, false];
  final isToggleButtonSelectedFourth = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: null,
                child: const Text("Disabled Text Button"),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  if (kDebugMode) {
                    print("Text Button Clicked");
                  }
                },
                child: const Text("Text Button"),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("Icon Text Button Clicked");
                    }
                  },
                  icon: const Icon(
                    Icons.access_alarm,
                    size: 24,
                  ),
                  label: const Text("Icon Text Button")),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        if (kDebugMode) {
                          print("Gradient Text Button Clicked");
                        }
                      },
                      child: const Text("Gradient Text Button"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    if (kDebugMode) {
                      print("Outlined button clicked.");
                    }
                  },
                  child: const Text("Outlined button")),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  debugPrint("Icon Outline Button clicked");
                },
                icon: const Icon(Icons.account_circle),
                label: const Text("Icon Outline Button"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: null,
                child: const Text("Disabled Elevated Button"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  debugPrint("Elevated Button Clicked");
                },
                child: const Text("Elevated Button"),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  debugPrint("Icon Elevated Button Clicked");
                },
                icon: const Icon(Icons.add_a_photo),
                label: const Text("Icon Elevated Button"),
              ),
              const SizedBox(height: 20),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: const BoxConstraints(minHeight: 36.0),
                isSelected: isToggleButtonSelectedFirst,
                onPressed: (int index) {
                  //Select any and/or all buttons
                  setState(() {
                    isToggleButtonSelectedFirst[index] =
                        !isToggleButtonSelectedFirst[index];
                  });
                },
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 1'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 2'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 3'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: const BoxConstraints(minHeight: 36.0),
                isSelected: isToggleButtonSelectedSecond,
                onPressed: (int index) {
                  //Select only one button, at least one should be selected
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isToggleButtonSelectedSecond.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isToggleButtonSelectedSecond[buttonIndex] = true;
                      } else {
                        isToggleButtonSelectedSecond[buttonIndex] = false;
                      }
                    }
                  });
                },
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 4'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 5'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 6'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: const BoxConstraints(minHeight: 36.0),
                isSelected: isToggleButtonSelectedThird,
                onPressed: (int index) {
                  //Select only one button, zero selection is allowed
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isToggleButtonSelectedThird.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isToggleButtonSelectedThird[buttonIndex] =
                            !isToggleButtonSelectedThird[buttonIndex];
                      } else {
                        isToggleButtonSelectedThird[buttonIndex] = false;
                      }
                    }
                  });
                },
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 7'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 8'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('BUTTON 9'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ToggleButtons(
                color: Colors.black.withOpacity(0.60),
                selectedColor: const Color(0xFF6200EE),
                selectedBorderColor: const Color(0xFF6200EE),
                fillColor: const Color(0xFF6200EE).withOpacity(0.08),
                splashColor: const Color(0xFF6200EE).withOpacity(0.12),
                hoverColor: const Color(0xFF6200EE).withOpacity(0.04),
                borderRadius: BorderRadius.circular(4.0),
                constraints: const BoxConstraints(minHeight: 36.0),
                isSelected: isToggleButtonSelectedFourth,
                onPressed: (int index) {
                  //Select any and/or all buttons
                  setState(() {
                    isToggleButtonSelectedFourth[index] =
                        !isToggleButtonSelectedFourth[index];
                  });
                },
                children: const <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.visibility),
                  Icon(Icons.notifications),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
