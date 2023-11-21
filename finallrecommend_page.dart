import 'package:flutter/material.dart';
import 'package:menurecapp/rerecommend_page.dart';
import 'package:menurecapp/thrid_page.dart';
import 'package:menurecapp/widgets/extrabox.dart';
import 'package:menurecapp/widgets/name.dart';

class FinallRecommend_Page extends StatefulWidget {

  @override
  State<FinallRecommend_Page> createState() => _Recommend ();

}

class _Recommend extends State<FinallRecommend_Page>{

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
                ExtraBox(name: 'assets/images/egg.jpg',),
                ExtraBox(name: 'assets/images/juk.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "계란찜"),
                Name(text: "단호박죽"),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60),),
                ExtraBox(name: 'assets/images/noodle.jpg',),
                ExtraBox(name: 'assets/images/chicken.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "쌀국수"),
                Name(text: "양념치킨"),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60),),
                ExtraBox(name: 'assets/images/wapper.jpg',),
                ExtraBox(name: 'assets/images/gim.jpg',),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 60)),
                Name(text: "와퍼"),
                Name(text: "참지김밥"),
              ],
            ),
            const SizedBox(height: 100,),
            Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 150,bottom: 50,),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ReRecommend_Page()));
                    },
                    style: ElevatedButton.styleFrom(// 버튼 스타일
                      backgroundColor: const Color(0xffFFE7D8), // 배경 색상
                      minimumSize: const Size(130, 60), // 버튼 크기
                      foregroundColor: Colors.black, // 글자 색상
                      textStyle: const TextStyle(
                        fontFamily: 'NanumGothicExtraBold',
                        fontWeight: FontWeight.bold, // 폰트 굻기
                        fontSize: 20, // 폰트 크기
                      ),
                    ),
                    child: const Text("재추천 받기"),
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