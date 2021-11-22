import 'package:buoi3/route/path.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  static String path = detailPath;
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                    iconSize: 10,
                  ),
                  Text(
                    "Detail",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Image.asset(
                "images/detail.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 57,
              ),
              Container(
                width: 106,
                height: 3,
                color: Color(0xFFC7C9D9),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Chair",
                          style: TextStyle(
                            color: Color(0xFF404040),
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Relax, Comfortable",
                          style: TextStyle(
                            color: Color(0xFF404040),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFCCDAFC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    width: 101,
                    height: 36,
                    padding: EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          width: 24,
                          height: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              if (count > 1) {
                                setState(() {
                                  count--;
                                });
                              }
                            },
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                size: 18,
                                color: Color(0xFF404040),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "${count}",
                          style: TextStyle(
                            color: Color(0xFF404040),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          width: 24,
                          height: double.infinity,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Color(0xFF404040),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: TextStyle(
                    color: Color(0xFF404040),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Blandit in nunc, et sit velit at aliquam tortor. Tristique ut ante nec nullam urna. Ultrices ac lorem rutrum purus. Nunc.",
                style: TextStyle(
                  color: Color(0xFF404040),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  Text(
                    "Color",
                    style: TextStyle(
                      color: Color(0xFF404040),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  ClipOval(
                    child: Container(
                      height: 21,
                      width: 21,
                      color: Color(0xFF121214),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  ClipOval(
                    child: Container(
                      height: 21,
                      width: 21,
                      color: Color(0xFF670B00),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  ClipOval(
                    child: Container(
                      height: 21,
                      width: 21,
                      color: Color(0xFFA8A6A7),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Total  Rp. ${count * 99.999}",
                        style: TextStyle(
                          color: Color(0xFF404040),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 38,
              ),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xffF2A213),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextButton(
                  onPressed: () {
                    const snackBar = SnackBar(content: Text('Tap'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text(
                    "Add to cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
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
