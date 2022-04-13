import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() => runApp(MyApp());


void authorizedLogin(context){
  // Navigator.pop(context);
  // Navigator.push(
  //     context, MaterialPageRoute(builder: (_) => const HomePage())
  // );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const appName = 'Pronto app';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffffffff),
        backgroundColor: const Color(0x26ffffff),
        hoverColor: Colors.white,
        primaryColor: const Color(0xffFFD110),

        textTheme: const TextTheme(

          subtitle1: TextStyle(
              color: Color(0x80FFFFFF),
              fontSize: 12.0),

          headline3: TextStyle(
              fontSize: 72.0,
              fontWeight: FontWeight.bold),

          bodyText1: TextStyle(

          )

        ),
      ),
      home: MainPage(
        title: appName,
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final String title;

  const MainPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'here would be something'
        ),
      ),
    );
  }
}
