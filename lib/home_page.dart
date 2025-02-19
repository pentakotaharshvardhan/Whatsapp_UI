import 'package:flutter/material.dart';
import 'package:whatsapp/chat_page.dart';
import 'package:whatsapp/module/chat_model.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 26),),
        elevation: 0.5,
        backgroundColor: Colors.white,
        actions: <Widget> [
          Icon(Icons.qr_code_scanner_sharp),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7.0)),
          Icon(Icons.camera_alt_outlined),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(5),
              child:TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(width: 0.0)// Set radius here
                  ),
                  prefixIcon: Icon(Icons.circle_outlined,color: Colors.blueAccent,),
                  hintText: "Ask Meta AI or Search",
                  filled: true,
                  fillColor: Colors.black12,
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent,),
                    onPressed: ()=>{},
                    child: Text("All",style: TextStyle(color: Colors.green,fontSize: 12),)
                ),
                Padding(padding: EdgeInsets.only(left: 5.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
                    onPressed: ()=>{},
                    child: Text("Unread",style: TextStyle(color: Colors.black,fontSize: 12),)
                ),
                Padding(padding: EdgeInsets.only(left: 5.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black12,),
                    onPressed: ()=>{},
                    child: Text("Favourites",style: TextStyle(color: Colors.black,fontSize: 12),)
                ),
                Padding(padding: EdgeInsets.only(left: 5.0)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black12),
                    onPressed: ()=>{},
                    child: Text("Groups",style: TextStyle(color: Colors.black,fontSize: 12),)
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5.0)),
            Container(
              child: Expanded(
                child: ListView.builder(
                  itemCount: dummydata.length,
                  itemBuilder:(context,i)=>Column(
                    children: [
                      //Divider(height: 10.0,),
                      ListTile(
                        onTap:()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>chatPage(dummydata[i]))),
                        leading: CircleAvatar(

                          radius: 25.0,
                          backgroundImage: AssetImage(dummydata[i].avatarurl),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(dummydata[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(dummydata[i].time,style: TextStyle(fontSize: 15,color: Colors.grey),)
                          ],
                        ),
                        subtitle: Container(
                          padding: EdgeInsets.only(top: 5.0),
                            child: Text(dummydata[i].message,style: TextStyle(fontWeight: FontWeight.bold),)
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            child: Icon(Icons.messenger,color: Colors.white,),
            onPressed: ()=>{})
    );
  }
}
