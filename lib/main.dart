import 'package:flutter/material.dart';

/// Placeholder for the user's name
const String username = 'Gustavo';

/// Placeholder for the user's account balance
const double balance = 350.12;

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopAppBar(),
            const BalanceWidget(),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Pix button
                    ActionButton(iconData: Icons.pix, label: 'Pix'),

                    /// Pay button
                    ActionButton(iconData: Icons.payment, label: 'Pagar'),

                    /// Loan button
                    ActionButton(
                      iconData: Icons.payment,
                      label: 'Pegar empréstimo',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.iconData, required this.label});

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: SizedBox(
        width: 90,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: InkWell(
                onTap: () {},
                customBorder: CircleBorder(),

                child: Ink(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),

                  padding: const EdgeInsets.all(20),

                  child: Icon(iconData, size: 30),
                ),
              ),
            ),

            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        child: Ink(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Conta',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),

                      textAlign: TextAlign.start,
                    ),
                  ),

                  Text(
                    'R\$ ${balance.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
      ),
    );
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
                  FloatingActionButton(
                    onPressed: () {},
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColorLight,
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

            /// Shows the user's name
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: const Text(
                    'Olá, $username',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
