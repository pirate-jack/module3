import 'package:flutter/material.dart';

import 'Question_60_2.dart';



class Question60 extends StatefulWidget {
  const Question60({super.key});

  @override
  State<Question60> createState() => _Question60State();
}

class _Question60State extends State<Question60> {
  @override
  List<String> Productlist = [
    'Recommend',
    'Popular',
    'Pizza',
    'Burger',
    'Cold Drink',
    'Thik Sake'
        'Thik Sake'
        'Thik Sake'
  ];
  int select = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5 ,bottom: 15),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, icon: Icon(Icons.arrow_back)),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ListTile(
                      title: Text(
                        'Restaurant',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                width: 85,
                                height: 32,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  color: Colors.grey.shade400,
                                  child: Center(
                                    child: Text('20-30min',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ),
                                ),
                              ),
                              Text('2.4km',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16)),
                              Text('Restaurant',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16)),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Orange Sandwiches is delicious',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(width: 40),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Card(
                            child: Center(
                              child: Text(
                                'R',
                                style: TextStyle(
                                    fontSize: 45, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.star_border,
                                color: Colors.amber, size: 30),
                            Text('4.7',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Restaurant',
              //       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(
              //       height: 60,
              //       width: 60,
              //       child: Card(
              //         child: Center(
              //           child: Text(
              //             'R',
              //             style: TextStyle(
              //                 fontSize: 30, fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(
              //       height: 30,
              //       child: Card(
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5)),
              //         child: Text(
              //           '20-30min',
              //           style: TextStyle(color: Colors.white, fontSize: 15),
              //         ),
              //         color: Colors.grey.shade400,
              //       ),
              //     ),
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(
              //       '2.4km Restaurant',
              //       style: TextStyle(fontSize: 15, color: Colors.grey),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Orange Sandwiches is delicious',
              //       style: TextStyle(fontSize: 15),
              //     ),
              //     Container(
              //       child: Row(
              //         children: [
              //           Icon(
              //             Icons.star_border,
              //             size: 25,
              //             color: Colors.amber,
              //           ),
              //           Text(
              //             '4.7',
              //             style: TextStyle(
              //                 fontWeight: FontWeight.bold, fontSize: 15),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                child: ListView.builder(
                  itemCount: Productlist.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            select = index;
                          });
                        },
                        child: Card(
                          color: select==index?Colors.amber:Colors.white,
                          child: Center(
                            child: Text(' ${Productlist[index]}  '),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 400,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 135,
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage('assets/food.jpg'),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Product Name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'NO 1 in Select',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.amber),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '\$12',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {
                                    
                                  },
                                  icon: Icon(Icons.arrow_forward_ios_outlined))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2(),)),
                    child: Icon(Icons.shopping_bag_outlined),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(50)),
                    backgroundColor: Colors.amber,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
