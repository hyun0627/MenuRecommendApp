import 'package:flutter/material.dart';
import 'package:menurecapp/thrid_page.dart';
import 'package:menurecapp/widgets/activitycheck.dart';
import 'package:menurecapp/widgets/box.dart';
import 'package:menurecapp/widgets/checkbox.dart';
import 'package:menurecapp/widgets/secondactivity.dart';

class EnterInformation extends StatefulWidget {

  @override
  State<EnterInformation> createState() => _EnterState();

}

class _EnterState extends State<EnterInformation> {

  var nameController = TextEditingController();
  var heightController = TextEditingController();
  var weightController = TextEditingController();
  var countmeal = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: ListView(
          children: <Widget>[
            const Padding( // 정보 입력 위 간격
              padding: EdgeInsets.only(top: 10),
              child: Text("정보 입력", // 글자 스타일 설정
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NanumGothicExtraBold',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),

            // 정보 입력과 닉네임 사이 간격 설정을 위한 box
            const SizedBox(height: 20,),
            // 닉네임
            Row(
              children: <Widget> [
                const Padding(padding: EdgeInsets.only(left: 25)),
                const Box(text: "닉네임 : "),
                const Padding(padding: EdgeInsets.only(right: 20)),
                //입력 박스
                Flexible(
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText:"닉네임",
                        hintText: "중복을 확인해주세요",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(3),
                      ),
                    ),
                ),
              ],
            ),

            const SizedBox(height: 5),
            // 중복확인 버튼
            Row( // 중복확인 버튼
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: ElevatedButton(
                    onPressed: (){}, // 중복 확인 함수 만들어야 됨
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFE7D8),
                      minimumSize: const Size(100, 40),
                      foregroundColor: Colors.black,
                    ),
                    child: const Text("중복 확인",
                      style: TextStyle(
                        fontFamily: 'NanumGothicExtraBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // 성별
            Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left: 25)),
                const Box(text: "성별 : "),
                MyCheckBox(),
              ],
            ),
            const SizedBox(height: 10),
            // 키
            Row(
              children: <Widget> [
                const Padding(padding: EdgeInsets.only(left: 25)),
                const Box(text: "키: "),
                const Padding(padding: EdgeInsets.only(right: 20)),
                Flexible(
                  child: TextField(
                    controller: heightController,
                    decoration: const InputDecoration(
                      labelText:"키",
                      hintText: "숫자만 입력해주세요( 단위: cm)",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(3),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // 몸무게
            Row(
              children: <Widget> [
                const Padding(padding: EdgeInsets.only(left: 25)),
                const Box(text: "몸무게 : "),
                const Padding(padding: EdgeInsets.only(right: 20)),
                Flexible(
                  child: TextField(
                    controller: weightController,
                    decoration: const InputDecoration(
                      labelText:"몸무게",
                      hintText: "숫자만 입력해주세요( 단위: kg)",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(3),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // 활동 지수
            Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left:25)),
                const Box(text: "활동 지수 : "),
                ActivityCheck(),
              ],
            ),
            Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left: 155)),
                SecondActivity(),
              ],
            ),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left:25)),
                Box(text: "식습관 질문 : "),
              ],
            ),
            const SizedBox(height: 10,),
            const Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 30),),
                Text("Q.평균적으로 하루에 몇 끼를 드시나요?",
                style: TextStyle(
                  fontFamily: 'NanumGothicExtraBold',
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),

            // 식습관 질문
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left: 15,right: 200),),
                Flexible(
                  child: TextField(
                    controller: countmeal,
                    decoration: const InputDecoration(
                      labelText:"끼니 수",
                      hintText: "하루에 몇 끼 드시나요?",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(3),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            // 저장하기 버튼
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xffFFE7D8),
                      minimumSize: const Size(100, 60),
                    ), // 중복 확인 함수 만들어야 됨
                    child: const Text("저장하기",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}