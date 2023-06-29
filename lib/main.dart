import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(

         //Adding background color to AppBar
         backgroundColor: Colors.purple,
         
         //Adding back arrow for leading property.
         //Back arrow appears at the top-left of AppBar
         leading: Icon(
           Icons.arrow_back,
           color: Colors.black,
         ),
         actions: <Widget>[
         
           //Adding Star icon for favorting the contact.
           //This IconButton responds to user's tap,
           //and prints the message.
           IconButton(
             icon: Icon(Icons.star_border),
             color: Colors.black,
             onPressed: () {
               print("Contact is starred");
             },
           ),
         ],
       ),
     ),
   );
 }
}