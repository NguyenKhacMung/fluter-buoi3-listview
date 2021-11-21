import 'package:flutter/material.dart';

class ListH extends StatefulWidget {
  const ListH({Key? key, required this.items, required this.click})
      : super(key: key);
  final List<Item> items;
  final Function click;
  @override
  _ListHState createState() => _ListHState();
}

class _ListHState extends State<ListH> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = widget.items[index];
        return Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              widget.click();
            },
            child: Container(
              height: double.infinity,
              width: 156,
              padding: EdgeInsets.fromLTRB(10, 10, 15, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Color(0xFFDDE5E9),
                  width: 1,
                ),
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
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
                    height: 13,
                  ),
                  Text(
                    item.name,
                    style: TextStyle(
                        color: Color(0xFF081D43),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFF0A113),
                        size: 14,
                      ),
                      Text(
                        item.star,
                        style: TextStyle(
                            color: Color(0xFF081D43),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            item.formattedTotalItemPrice,
                            style: TextStyle(
                                color: Color(0xFF081D43),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
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
class Item {
  const Item({
    required this.totalPriceCents,
    required this.name,
    required this.star,
    required this.imageProvider,
  });
  final int totalPriceCents;
  final String name;
  final String star;
  final ImageProvider imageProvider;
  String get formattedTotalItemPrice =>
      '\Rp.${(totalPriceCents / 1000.0).toStringAsFixed(3)}';
}
