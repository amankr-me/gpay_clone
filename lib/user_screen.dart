import 'dart:ui';

import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const routeName = '/user';
  final String id2 = 'key2';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Dismissible(
          direction: DismissDirection.up,
          onDismissed: (direction) {
            Navigator.of(context).pop();
          },
          key: ValueKey(id2),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(Icons.arrow_back), onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.more_horiz), onPressed: () {}),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment
                                .bottomCenter, // 10% of the width, so there are ten blinds.
                            colors: <Color>[
                              Color(0xffffffff),
                              Color(0xff85C1E9)
                            ], // red to yellow
                            tileMode: TileMode
                                .repeated, // repeats the gradient over the canvas
                          ),
                          color: Colors.blue[50],
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //       'assets/images/—Pngtree—people make puzzles concept team_5356575edited.png'),
                          //   fit: BoxFit.contain,
                          //   alignment: Alignment.bottomLeft,
                          // ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Aman Kumar',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('+917014836734'),
                                        Text('kumaramanvicky@okicici'),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Hero(
                                          tag: 'logo',
                                          child: CircleAvatar(
                                            radius: 50,
                                            backgroundColor: Colors.brown[400],
                                            child: Text(
                                              'A',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.emoji_events,
                                    color: Colors.yellow[400],
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('₹200'),
                                  Text('Rewards earned'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Hero(
                        tag: 'remove',
                        child: Container(
                          width: screenSize.width,
                          height: 60,
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 62,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 225,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    margin: EdgeInsets.all(12),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Set up payment methods 1/2',
                                style: TextStyle(fontSize: 18),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue[700],
                                  ),
                                  onPressed: () {})
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.house_siding,
                                    size: 46,
                                    color: Colors.blue[700],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Bank account',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('1 account'),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.playlist_add_rounded,
                                    size: 46,
                                    color: Colors.blue[700],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Pay Business',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text('Debit/credit card'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 430,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.redeem,
                                  color: Colors.blue[700],
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Invite friends, get ...',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text('Share your code'),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          'n937b',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.copy,
                                          size: 18,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            TextButton(
                              child: Text(
                                'share',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.blue[700],
                                ),
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.blue[700],
                              size: 28,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.help_outline,
                              color: Colors.blue[700],
                              size: 28,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Help & feedback',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
