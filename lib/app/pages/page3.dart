import 'package:flutter/material.dart';
import 'package:navegacao_douglas/app/pages/page1.dart';
import 'package:navegacao_douglas/app/pages/page1.dart';
//import 'package:navigator2/app/pages/page1.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 3'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
              child: Text('Vai para página 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text('Vai para página 1 e fecha todas anteriores'),
            )
          ],
        ),
      ),
    );
  }
}