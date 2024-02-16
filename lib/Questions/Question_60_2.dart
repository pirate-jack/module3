import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int price = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => null, icon: Icon(Icons.favorite_border))
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.amber,
      bottomSheet: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -80,
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/food.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Sei Ua Samun Phrai',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer_outlined,
                                color: Colors.blueAccent,
                              ),
                              Text('50min'),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text('4.8')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.local_fire_department_outlined,
                                color: Colors.redAccent,
                              ),
                              Text('325 Kcal')
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            elevation: 0,
                            color: Colors.grey.shade300,
                            child: Row(
                              children: [
                                Text(
                                  ' \$$price ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  color: Colors.amber,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 40,
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              '-',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25),
                                            )),
                                      ),
                                      CircleAvatar(
                                        radius: 25,
                                        child: Text('1'),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Ingredient',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      Container(
                        height: 110,
                        width: double.infinity,
                        // color: Colors.blueAccent,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 80,
                              height: 80,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.only(
                                        bottomEnd: Radius.elliptical(80, 100),
                                        bottomStart: Radius.elliptical(80, 100),
                                        topEnd: Radius.elliptical(80, 100),
                                        topStart: Radius.elliptical(80, 100))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/food.jpg'),
                                    ),
                                    Text('Shrimp')
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                      Text(
                          "Fresh pasta is usually locally made with fresh ingredients unless it is destined to be shipped, in which case consideration is given to the spoilage rates of the desired ingredients such as eggs or herbs. Furthermore, fresh pasta is usually made with a mixture of eggs and all-purpose flour or 00 low-gluten flour. Since it contains eggs,"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.shopping_bag_outlined),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(50)),
                            backgroundColor: Colors.amber,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
