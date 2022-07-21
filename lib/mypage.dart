import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
          size: 35,
        ),
        actions: [
          Row(
            children: [
              // This is the add icon
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.add,
                  color: Colors.red,
                  size: 35,
                ),
              ),

              // This is the more icom
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.red,
                  size: 35,
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: photoPart()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: text(),
          ),
          Center(child: buttonPart()),
        ],
      ),
    );
  }

  //Photo part
  Widget photoPart() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/images/slimposeb.jpg',
        height: 400,
        width: 450,
      ),
    );
  }

  // this text widget part
  Widget text() {
    return Column(
      children: [
        Text(
          '365 Days - Single',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Deemanmusic',
          style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              decoration: TextDecoration.underline),
        ),
        Text(
          'Afro-Beat-2022',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  // this is the button part
  Widget buttonPart(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15)
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.play_arrow,color: Colors.red,),
              Text('play',style: TextStyle(color: Colors.red,fontSize: 18),),
            ],
          )),
        ),
        SizedBox(width: 20,),
        Container(
          height: 60,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15)
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shuffle_outlined,color: Colors.red,),
              Text('Shuffle',style: TextStyle(color: Colors.red,fontSize: 18),),
            ],
          )),
        ),
      ],
    );
  }
}
