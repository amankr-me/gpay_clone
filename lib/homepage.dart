import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gpay_clone/user_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String id = 'dismisskey';
  List<int> items = List<int>.generate(100, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        clipBehavior: Clip.antiAlias,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            // snap: true,
            automaticallyImplyLeading: false,

            stretch: true,
            stretchTriggerOffset: 80,
            onStretchTrigger: () {
              print('called');
              Future.delayed(Duration.zero, () {
                Navigator.of(context).pushNamed(UserScreen.routeName);
              });
              return;
            },
            flexibleSpace: Stack(
              children: [
                FlexibleSpaceBar(
                  stretchModes: [
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle,
                  ],
                  background: Image.asset(
                    'assets/images/sleepiest_4_11.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: Icon(
                    Icons.center_focus_strong,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 10,
                  child: GestureDetector(
                    child: Hero(
                      tag: 'logo',
                      child: CircleAvatar(
                        backgroundColor: Colors.brown[400],
                        child: Text('A'),
                      ),
                    ),
                    onTap: () =>
                        Navigator.of(context).pushNamed(UserScreen.routeName),
                  ),
                ),
                Center(
                  child: Text(
                    'GPay',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),

            // floating: true,
            // snap: true,
            // flexibleSpace: Image(
            //   image: AssetImage(
            //     'assets/images/sleepiest_4_11.png',
            //   ),
            //   fit: BoxFit.cover,
            // ),
            expandedHeight: 200,
            // leading: Icon(
            //   Icons.center_focus_strong,
            //   size: 32,
            // ),
            // actions: [],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Hero(
                tag: 'remove',
                child: Container(
                  child: Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.grey,
                  ),
                ),
              ),
              childCount: 1,
            ),
          ),
          GridHeader('People'),
          GridItems(
            name: 'Jio Prepaid',
            itemCount: 7,
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Business & bills',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 6.0, right: 6.0),
                            child: Row(
                              children: [
                                Icon(Icons.shopping_bag_outlined,
                                    color: Colors.blue[700]),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Explore',
                                  style: TextStyle(color: Colors.blue[700]),
                                ),
                              ],
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.blue[50],
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                childCount: 1,
              ),
            ),
          ),
          GridItems(
            name: 'Jio Prepaid',
            itemCount: 12,
          ),
          GridHeader('Promotions'),
          GridItems(
            name: 'Jio Prepaid',
            itemCount: 3,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Icon(
                  Icons.history,
                  color: Colors.blue[700],
                ),
                title: Text(
                  'Show transaction history',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: Icon(
                  Icons.house_siding,
                  color: Colors.blue[700],
                ),
                title: Text(
                  'View account balance',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              childCount: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/—Pngtree—people make puzzles concept team_5356575edited.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomLeft,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invite your friends to Google Pay',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'You\'ll earn ₹125 cashback when they make their first payment. T&Cs apply.'),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text('Copy your code '),
                        Text(
                          'n937b',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.copy,
                          size: 16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                        child: Text(
                          'Invite',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.2),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey[300]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GridItems extends StatelessWidget {
  final String name;
  final String url;
  final int itemCount;
  GridItems({@required this.name, this.url, @required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(16),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.7,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.brown[400],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(' $index'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                        child: Text(
                      'Data Mining',
                      textAlign: TextAlign.center,
                    ))
                  ],
                ));
          },
          childCount: itemCount,
        ),
      ),
    );
  }
}

class GridHeader extends StatelessWidget {
  final String titleText;
  GridHeader(this.titleText);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(left: 8),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(
              title: Text(
            titleText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )),
          childCount: 1,
        ),
      ),
    );
  }
}
