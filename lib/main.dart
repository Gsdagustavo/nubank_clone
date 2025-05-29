import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Clone',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        brightness: Brightness.dark,
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [const TopAppBar()]));
  }
}

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),

      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.person,
                        color: Theme.of(context).primaryColorLight,
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.help_outline),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.email)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
