import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         leading: Icon(
           Icons.arrow_back,
           color: Colors.black,
         ),
         actions: <Widget>[
           IconButton(
             icon: Icon(Icons.star_border),
             color: Colors.black,
             onPressed: () {
               print("Contact is starred");
             },
           ),
         ],
       ),
       body: ListView(
         children: <Widget>[
           Column(
             children: <Widget>[
               //Container for adding Profile picture
               Container(
                 //Container is stretched horizontaly
                 width: double.infinity,
                 //Image is fetched from url
                 child: Image.network(
"https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/356206214_973274580684109_8362486192810212608_n.jpg?_nc_cat=100&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=i0WfKNKsnwwAX9DgWbh&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfDJMhNXcIXQam210KVLy5o8iJIwpRQZzcff3Vbum_x-Uw&oe=64A22D97",
   			height: 250,
   			fit: BoxFit.cover,
 			),
               ),
             ],
           ),
         ],
       ),
     ),
   );
 }
}
