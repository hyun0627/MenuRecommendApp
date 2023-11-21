import 'package:flutter/material.dart';
import 'package:menurecapp/enterinformation.dart';

void main() => runApp(MenuRecommendApp());


class MenuRecommendApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration( // 배경 이미지
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            opacity: 1.0,
            fit: BoxFit.fill
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 350), // 위치 조절
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(// 버튼 스타일
                    backgroundColor: const Color(0xffFFE7D8), // 배경 색상
                    shadowColor: const Color.fromRGBO(255, 255, 255, 1.0),
                    minimumSize: const Size(200, 100), // 버튼 크기
                    side: const BorderSide( // 테두리
                      color: Colors.white,
                    ),
                    shape: RoundedRectangleBorder( // 버튼 모양
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EnterInformation()));
                    },
                  child: const Text("시작하기",
                    style: TextStyle(
                      fontFamily: 'NanumGothicExtraBold',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }


}
