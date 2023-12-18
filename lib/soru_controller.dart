// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Soru {
  late String soruMetni;
  late bool soruCevaplari;
  Soru({required this.soruMetni, required this.soruCevaplari});
}

const Icon kYanlisIkonu = Icon(
  Icons.mood_bad,
  color: Colors.red,
);
const Icon kDogruIkonu = Icon(
  Icons.mood,
  color: Colors.green,
);
const Icon olumsuz = Icon(
  Icons.thumb_down,
  size: 30.0,
  color: Colors.red,
);

const Icon olumlu = Icon(
  Icons.thumb_up,
  size: 30.0,
  color: Colors.green,
);
