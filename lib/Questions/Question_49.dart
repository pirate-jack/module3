import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Question49 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question49'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen1(),
                  ));
            },  child: Text('Screen 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen0(),
                      ));
                },
                child: Text('Screen 2')),
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          primary: false,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 1,
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.red,
            ),
            Container(
              child: GridView.count(
                // primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Container(
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.yellow,
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

class Screen0 extends StatefulWidget {
  @override
  _Screen0State createState() => _Screen0State();
}

class _Screen0State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    String data =
        'Perhaps the defining characteristic of modern interior design is the open concept floor plan. Removing the walls that once separated the common rooms of the home further emphasizes the trends of simplicity, natural light, and openness. While bedrooms are still a private retreat, the modern home is built for families to be together while those large windows shroud the entire home in sunlight. In these open concepts the family can feel together even while the kids are playing by the television, dinner is being prepared over the stove, and emails are being sent from the dining table. These bright open interiors are incorporated into myriad Schumacher Homes floor plans and are discussed in far more';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  // width: 500,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                          image: AssetImage('assets/house1.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            ListTile(
              title: Text(
                'Vacation Home',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              subtitle: Text('Vesu,Surat'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    '41',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Call')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.route,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Route')
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Share')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 10),
              child: Text(
                data,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}