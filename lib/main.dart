import 'package:flutter/material.dart';
import 'package:flutter_hero/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hero Animation'),
        ),
        body: HeroItem(),
      ),
    );
  }
}

class HeroItem extends StatefulWidget {
  const HeroItem({Key key}) : super(key: key);

  @override
  _HeroItemState createState() => _HeroItemState();
}

class SuperHero{
  String image;
  String name;
  String description;

  SuperHero(this.image, this.name, this.description);

}

class _HeroItemState extends State<HeroItem> {

  List<SuperHero> hero = new List<SuperHero>();

  _HeroItemState(){
    hero.add(new SuperHero("assets/iron_man.png", "Iron Man",
        "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man."));
    hero.add(new SuperHero("assets/captain_america.png", "Captain America",
        "Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers."));
    hero.add(new SuperHero("assets/thor.png", "Thor",
        "The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike."));
    hero.add(new SuperHero("assets/hulk.png", "Hulk",
        "Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage."));
    hero.add(new SuperHero("assets/black_widow.png", "Black Widow",
        "Despite super spy Natasha Romanoff’s checkered past, she’s become one of S.H.I.E.L.D.’s most deadly assassins and a frequent member of the Avengers."));
  }

  Widget MyHero(BuildContext context,int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyDetailPage(hero[index])));
      },
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Hero(tag: hero[index],
              child: Image.asset(hero[index].image.toString()),
              ),
              //Image.asset(hero[index].image.toString()),
              SizedBox(width: 16,),
              Text(hero[index].name)
            ],

          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
          itemCount: hero.length,
          itemBuilder: (context,index)=>MyHero(context,index),

      ),
    );
  }
}


