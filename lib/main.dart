import 'package:flutter/material.dart';
import 'package:medical_app/Screens/setting.dart';
import 'package:medical_app/Screens/welcome.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(Medical_app());
}

class Medical_app extends StatefulWidget {
  Medical_app({super.key});

  @override
  State<Medical_app> createState() => _Medical_appState();
}

class _Medical_appState extends State<Medical_app> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      builder: (context, child) {
        final provider = Provider.of<Model>(context);
        return MaterialApp(
          theme: provider.them,
          debugShowCheckedModeBanner: false,
          home: welcome(),
        );
      },
    );
  }
}
