import 'package:buoi3/screen/BottomNavigationBar.dart';

import 'package:buoi3/screen/detail.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  BottomTab.path: (context) => const BottomTab(),
  Detail.path: (context) => const Detail(),
};
