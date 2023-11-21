import 'package:flutter/material.dart';
import 'package:menurecapp/thrid_page.dart';
import 'package:menurecapp/widgets/extrabox.dart';
import 'package:menurecapp/widgets/name.dart';

class ReRecommend_Page extends StatefulWidget {

  @override
  State<ReRecommend_Page> createState() => _Recommend ();

}

class _Recommend extends State<ReRecommend_Page>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("메뉴 추천",
          style: TextStyle(
            fontFamily: 'NanumGothicExtraBold',
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
          },
        ),
      ),

      body: Container(
        margin: const EdgeInsets.only(top: 50, right: 25),

        child: ListView(
          children: <Widget>[
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60),),
                ExtraBox(name: 'assets/images/tang.jpg',),
                ExtraBox(name: 'assets/images/pizza.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "탕수육"),
                Name(text: "피자"),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60),),
                ExtraBox(name: 'assets/images/jaeyook.jpg',),
                ExtraBox(name: 'assets/images/ham.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "제육볶음"),
                Name(text: "햄버거"),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60),),
                ExtraBox(name: 'assets/images/bibim.jpg',),
                ExtraBox(name: 'assets/images/bbang.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "비빔밥"),
                Name(text: "빵"),
              ],
            ),
          ],
        ),
      ),
    );
  }

}