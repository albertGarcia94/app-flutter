import 'package:flutter/material.dart';

class HomeScreean extends StatefulWidget {
  const HomeScreean({Key? key}) : super(key: key);

  @override
  State<HomeScreean> createState() => _HomeScreeanState();
}

class _HomeScreeanState extends State<HomeScreean> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('cabezera'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Primer texto', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Button(),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: null,
        ),
        FloatingActionButton(
          child: Icon(Icons.replay_outlined),
          onPressed: null,
        ),
        FloatingActionButton(
          child: Icon(Icons.minimize),
          onPressed: null,
        ),
      ],
    );
  }
}
