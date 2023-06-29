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
                Container(
                  width: double.infinity,
                  child: Image.network(
                    "https://scontent.fsgn2-7.fna.fbcdn.net/v/t39.30808-6/356206214_973274580684109_8362486192810212608_n.jpg?_nc_cat=100&cb=99be929b-59f725be&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=i0WfKNKsnwwAX9DgWbh&_nc_ht=scontent.fsgn2-7.fna&oh=00_AfDJMhNXcIXQam210KVLy5o8iJIwpRQZzcff3Vbum_x-Uw&oe=64A22D97",
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                //NEW CODE: Adding Display Name
                Container(
                  height: 60,
                  child: Row(
                    //Aligning text to the start of the widget
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "convitnhodev - Thai Nguyen Viet Hung",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
                //NEW CODE: Adding Divider below the display name
                Divider(
                  color: Colors.green,
                ),

                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoCallButton(),
                      buildEmailBotton(),
                      buildDirectionsButton(),
                      buildPayButton(),
                    ],
                  ),
                ),

                Divider(
                  color: Colors.green,
                ),

                mobilePhoneListTile(),
                otherPhoneListTile(),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Call"),
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      Text("Text"),
    ],
  );
}

Widget buildVideoCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          )),
      Text("Video call")
    ],
  );
}

Widget buildEmailBotton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          )),
      Text("Email")
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.directions, color: Colors.indigo.shade800)),
      Text("Directions")
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: [
      IconButton(
          onPressed: () {},
          icon: Icon(Icons.attach_money, color: Colors.indigo.shade400)),
      Text("Pay")
    ],
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: Icon(Icons.call),
    title: Text("+84.363963953"),
    subtitle: Text("mobile"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: Text(""),
    title: Text("440-440-3390"),
    subtitle: Text("other"),
    trailing: IconButton(
      icon: Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}
