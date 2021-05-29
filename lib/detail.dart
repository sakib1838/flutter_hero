import 'package:flutter/material.dart';
import 'main.dart';

class MyDetailPage extends StatefulWidget {

  SuperHero _superHero;
  MyDetailPage(SuperHero superHero){
    _superHero=superHero;
  }
  //const MyDetailPage({Key key}) : super(key: key);

  @override
  _MyDetailPageState createState() => _MyDetailPageState(_superHero);
}

class _MyDetailPageState extends State<MyDetailPage> {
  SuperHero superHero;
  _MyDetailPageState(SuperHero superHero){
    this.superHero=superHero;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(superHero.name),
          leading: GestureDetector(
              child: Icon(Icons.arrow_back,),
                onTap: (){
                Navigator.pop(context);
        },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Hero(
                tag: superHero,
                child: Image.asset(superHero.image),
              ),
               Card(
                elevation: 6,
                margin: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    superHero.description,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
