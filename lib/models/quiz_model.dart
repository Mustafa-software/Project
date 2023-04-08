// ignore_for_file: non_constant_identifier_names

import 'package:flutter/gestures.dart';

class Quiz {
  final String id;

  final String title;

  // ignore: prefer_typing_uninitialized_variables
  final Map<String, bool> options;
  Quiz({
    required this.id,
    required this.title,
    required this.options,
  });

  @override
  String toString() {
    return 'Quiz(id: $id,title: $title, options: $options)';
  }
}
