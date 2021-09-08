import 'package:colorpicker/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var title;
    return ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
          builder: (context, themeProvider, child) => 
          MaterialApp(
            title: 'Flutter Provider Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                appBarTheme: AppBarTheme(brightness: Brightness.dark)),
            home: MainPage(title: title,),
          ),
        ));
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  int _counter = 0;



  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: MyApp()
      );
  }
}
