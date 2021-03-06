import 'package:buoi3/component/ListH.dart';
import 'package:buoi3/component/ListV.dart';
import 'package:buoi3/route/path.dart';
import 'package:flutter/material.dart';

const List<Item> _items = [
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/list1.png'),
  ),
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/list2.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list3.png'),
  ),
  Item(
    name: 'Spinach Pizza',
    totalPriceCents: 1299,
    star: '4.9',
    imageProvider: AssetImage('images/list4.png'),
  ),
  Item(
    name: 'Veggie Delight',
    totalPriceCents: 99999,
    star: '4',
    imageProvider: AssetImage('images/list5.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list6.png'),
  ),
];

const List<Item> _itemsTable = [
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/listt1.png'),
  ),
  Item(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    star: '4.9',
    imageProvider: AssetImage('images/listt2.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/list3.png'),
  ),
  Item(
    name: 'Spinach Pizza',
    totalPriceCents: 1299,
    star: '4.9',
    imageProvider: AssetImage('images/listt4.png'),
  ),
  Item(
    name: 'Veggie Delight',
    totalPriceCents: 99999,
    star: '4',
    imageProvider: AssetImage('images/listt5.png'),
  ),
  Item(
    name: 'Chicken Parmesan',
    totalPriceCents: 99988,
    star: '5',
    imageProvider: AssetImage('images/listt6.png'),
  ),
];

const List<ItemH> ItemsH = [
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list3.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 1299,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list4.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list5.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list6.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list1.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list2.png'),
  ),
];

const List<ItemH> ItemsHTable = [
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt3.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 1299,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt4.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/list5.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt6.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt1.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listt2.png'),
  ),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  int Active = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<String> group = <String>[
      'Chair',
      'Table',
      'Bed',
      'Sofa',
      'Chair',
      'Table',
      'Bed',
      'Sofa',
      'Chair',
      'Table',
      'Bed',
      'Sofa'
    ];

    // final List<int> colorCodes = <int>[600, 500, 100];
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Furniture",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Your partner interior design",
                      style: TextStyle(
                        color: Color(0xFF404040),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "images/Chat.png",
                  width: 20,
                  height: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xff404040).withOpacity(0.4),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          // filled: true,
                          // fillColor: Colors.white,
                          enabledBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color(0xFFe3eaef),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.all(24),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 22, right: 8),
                            child: Icon(Icons.search_outlined),
                          ),
                          hintText: "Try search ???Computer Table???",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    IconButton(
                      icon: Image.asset("images/search.png"),
                      iconSize: 54,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              width: size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: group.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: double.infinity,
                      width: 87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == Active
                            ? Colors.amber[600]
                            : Color(0xffffff),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            Active = index;
                          });
                        },
                        child: Text(
                          group[index],
                          style: TextStyle(
                              color: index == Active
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFF404040),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Best for you",
                style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 209,
              width: size.width,
              child: ListH(
                items: Active == 1 ? _itemsTable : _items,
                click: () {
                  Navigator.pushNamed(context, detailPath);
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Best for you",
                style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 300,
              child: ListV(
                items: Active == 1 ? ItemsHTable : ItemsH,
                click: () {
                  Navigator.pushNamed(context, detailPath);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
