import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.grey,
              // ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 7),
                ),
              ],
            ),
            margin: const EdgeInsets.only(top: 50),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '장영빈',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'iOS 개발자로 시작하였지만 19년도부터 시작한 ',
                      children: [
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(text: '로 CrossPlatform의 매력을 느껴 4년째 Flutter로 개발을 하고 있습니다.'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '국내에 ',
                      children: [
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(text: ' 개발 문화 전파를 위해 노력하고 있습니다.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: _ProfileImage(),
        ),
      ],
    );
  }
}

class _ProfileImage extends StatelessWidget {
  const _ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          /// image: NetworkImage('https://picsum.photos/seed/picsum/200/300')
          image: AssetImage('images/profile.jpeg'),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
    );
  }
}
