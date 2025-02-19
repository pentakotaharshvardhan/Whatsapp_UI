import 'package:flutter/material.dart';

class chatModel {
  late final String name;
  late final String message;
  late final String time;
  late final String avatarurl;

  chatModel(this.name, this.message, this.time, this.avatarurl);
}
  List<chatModel> dummydata=[
    chatModel(
        "Krishna Vijaywargi",
        "ohkk",
        "7.32 pm",
        "assests/Screenshot 2025-01-06 194548.png"),
    chatModel(
        "DATA SCIENCE SEC-B",
        "Pushkar: Mera hai voo",
        "5.55 pm",
        "assests/Screenshot 2025-01-06 194617.png"),
    chatModel(
        "Jay Gupta Cr",
        "ha",
        "5.42 pm",
        "assests/Screenshot 2025-01-06 194659.png"),
    chatModel(
        "Kanchan Thakur",
        "Hope So",
        "4.32 pm",
        "assests/Screenshot 2025-01-06 194523.png"),
    chatModel(
        "Mayur Rcoem",
        "Thanks Sir",
        "4.05 pm",
        "assests/Screenshot 2025-01-06 194637.png"),
    chatModel(
        "Harsh Rcoem Tt H Section",
        "Maths ka unit 2 bhej",
        "3.17 pm",
        "assests/Screenshot 2025-01-06 194659.png"),
    chatModel(
        "Stack Overflow",
        "Krishna Vijaywargi :you are toppr",
        "27/12/24",
        "assests/Screenshot 2025-01-06 194723.png"),
    chatModel(
        "+91 914632754",
        "Photo",
        "20/12/24",
        "assests/Screenshot 2025-01-06 194659.png"),
    chatModel(
        "Shruthi Nair Mam",
        "Thank you mam",
        "12/12/24",
        "assests/Screenshot 2025-01-06 195319.png"),
  ];
