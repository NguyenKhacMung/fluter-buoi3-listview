import 'package:flutter/material.dart';

class ListV extends StatefulWidget {
  const ListV({Key? key, required this.items, required this.click})
      : super(key: key);
  final List<ItemH> items;
  final Function click;

  @override
  _ListVState createState() => _ListVState();
}

class _ListVState extends State<ListV> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = widget.items[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: GestureDetector(
            onTap: () {
              widget.click();
            },
            child: Container(
              height: 147,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFFDDE5E9),
                  width: 1,
                ),
                color: Color(0xFFFFFFFF),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: item.imageProvider,
                      width: 129,
                      height: 129,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        item.name,
                        style: TextStyle(
                            color: Color(0xFF081D43),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        item.subTitle,
                        style: TextStyle(
                            color: Color(0xFF081D43).withOpacity(0.7),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xFFF0A113),
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFF0A113),
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFF0A113),
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFF0A113),
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xFFF0A113),
                            size: 14,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        item.formattedTotalItemPrice,
                        style: TextStyle(
                            color: Color(0xFF081D43),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

@immutable
class ItemH {
  const ItemH({
    required this.totalPriceCents,
    required this.name,
    required this.subTitle,
    required this.imageProvider,
  });
  final int totalPriceCents;
  final String name;
  final String subTitle;
  final ImageProvider imageProvider;
  String get formattedTotalItemPrice =>
      '\Rp.${(totalPriceCents / 1000.0).toStringAsFixed(3)}';
}
