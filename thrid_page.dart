import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:menurecapp/enterinformation.dart';
import 'package:menurecapp/finallrecommend_page.dart';

class ThirdPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        color: const Color(0xffFFE7D8),
        child: ListView(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 150,left: 33, right: 33),
              child: Container(
                padding: const EdgeInsets.only(top: 20,left: 5, right: 5),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.indigoAccent,
                    width: 5,
                  ),
                ),

                child: RichText(
                  text: const TextSpan(text: "현이 님의 한 끼 적정 칼로리는 800 kcal 입니다.",
                    style: TextStyle(
                      fontFamily: 'NanumGothicExtraBold',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 180),
            Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 110,),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FinallRecommend_Page()));
                    },
                    style: ElevatedButton.styleFrom(// 버튼 스타일
                      backgroundColor: Colors.white, // 배경 색상
                      minimumSize: const Size(200, 80), // 버튼 크기
                      foregroundColor: Colors.black, // 글자 색상
                      shadowColor: const Color.fromRGBO(255, 255, 255, 1.0),
                      shape: RoundedRectangleBorder( // 버튼 모양
                        borderRadius: BorderRadius.circular(12.5),
                      ),
                      textStyle: const TextStyle(
                        fontFamily: 'NanumGothicExtraBold',
                        fontWeight: FontWeight.w300, // 폰트 굻기
                        fontSize: 22, // 폰트 크기
                      ),
                    ),
                    child: const Text("추천받기"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 120,),
                  child: RichText(
                    text: TextSpan(
                      text: '나의 정보 수정하기',
                      style: const TextStyle(
                        fontFamily: 'NanumGothicExtraBold',
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EnterInformation()));
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}