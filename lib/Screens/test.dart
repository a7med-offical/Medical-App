
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(";;;;;;;;;;}"),
            ElevatedButton(
                onPressed: () {
                  // context.read<Model>().change();
                },
                child: const Text('press'))
          ],
        ),
      ),
    );
  }
}

