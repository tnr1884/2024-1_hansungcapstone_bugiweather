import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Inter',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Inter',
  fontWeight: FontWeight.w700
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_pin,
    color: Colors.white,
  ),
  hintText: '도시 검색...',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(35),
    ),
    borderSide: BorderSide.none,
  ),
);