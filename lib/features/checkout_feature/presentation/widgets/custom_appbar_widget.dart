// ignore_for_file: file_names

import 'package:flutter/material.dart';

AppBar customAppBar({
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title ?? "",
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
