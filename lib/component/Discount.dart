import 'package:buoi3/component/ListV.dart';

import 'package:flutter/material.dart';

const List<ItemH> ItemsH = [
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listh1.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 1299,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listh2.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listh3.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99988,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listh4.png'),
  ),
  ItemH(
    name: 'Lorem Chair',
    totalPriceCents: 99999,
    subTitle: 'Chill, Comfortable',
    imageProvider: AssetImage('images/listh5.png'),
  ),
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

class Discount extends StatefulWidget {
  const Discount({Key? key}) : super(key: key);

  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: -10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Discount",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Expanded(
            child: Container(
              child: ListV(
                items: ItemsH,
                click: () {
                  const snackBar = SnackBar(content: Text('Tap'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
