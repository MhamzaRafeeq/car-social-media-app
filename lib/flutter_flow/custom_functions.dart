import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<int>? getRank(List<int> listOfvotes) {
  // get list of votes and generate rank respectively
  if (listOfvotes.isEmpty) {
    return null;
  }

  final sortedList = List<int>.from(listOfvotes)
    ..sort((a, b) => b.compareTo(a));
  final rankList = List<int>.filled(listOfvotes.length, 0);

  for (var i = 0; i < listOfvotes.length; i++) {
    final rank = sortedList.indexOf(listOfvotes[i]) + 1;
    rankList[i] = rank;
  }

  return rankList;
}

List<PostsRecord>? getRandomPosts(List<PostsRecord>? postsDocuments) {
  // take list of documents and shuffle them
  if (postsDocuments == null || postsDocuments.isEmpty) {
    return null;
  }
  final random = math.Random();
  for (var i = postsDocuments.length - 1; i > 0; i--) {
    final j = random.nextInt(i + 1);
    final temp = postsDocuments[i];
    postsDocuments[i] = postsDocuments[j];
    postsDocuments[j] = temp;
  }
  return postsDocuments;
}
