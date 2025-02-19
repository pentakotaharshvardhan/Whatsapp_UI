import 'package:flutter/material.dart';
import 'home_page.dart';
import 'module/chat_model.dart';

class chatPage extends StatefulWidget {
  chatModel dummyinfo;
  chatPage(this.dummyinfo);

  @override
  State<chatPage> createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          radius: 2.0,
          backgroundImage: AssetImage(widget.dummyinfo.avatarurl),
        ),
        title: Text(widget.dummyinfo.name,style: TextStyle(fontSize: 19),),
        actions: [
          Icon(Icons.video_camera_back_outlined,size: 24,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7.0)),
          Icon(Icons.phone,size: 24,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 3.0)),
          Icon(Icons.more_vert,size: 24,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assests/Screenshot 2025-01-06 205550.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(width: 0.0)// Set radius here
              ),
              prefixIcon: Icon(Icons.face_2_outlined,color: Colors.blueAccent,),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.attach_file,),
                  SizedBox(width: 10),
                  Icon(Icons.currency_rupee_outlined,),
                  SizedBox(width: 10),
                  Icon(Icons.camera_alt_outlined,),
                  SizedBox(width: 5),
                ],
              ),
              hintText: "Message",
              filled: true,
              fillColor: Colors.white38,
              contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            ),
          )
        ],
      ),
    );
  }
}
