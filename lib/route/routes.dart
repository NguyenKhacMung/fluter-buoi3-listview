import 'package:buoi3/screen/BottomNavigationBar.dart';

import 'package:buoi3/screen/detail.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const BottomTab(),
  '/register': (context) => const Detail(),
};
