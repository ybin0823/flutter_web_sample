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
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            margin: const EdgeInsets.only(top: 50),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('iOS 개발자로 시작하였지만 19년도부터 시작한 Flutter로 CrossPlatform의 매력을 느껴 4년째 Flutter로 개발을 하고 있습니다. '),
                  Text('국내에 Flutter 개발 문화 전파를 위해 노력하고 있습니다.')
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
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          /// image: NetworkImage('https://picsum.photos/seed/picsum/200/300')
          image: AssetImage('images/profile.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
