import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CEOList.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Ceo(),
      },
    ),
  );
}
