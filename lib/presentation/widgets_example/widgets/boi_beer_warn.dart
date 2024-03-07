import 'package:flutter/material.dart';

class BoiBeerWarn extends StatelessWidget {
  const BoiBeerWarn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      width: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://scontent.futh1-1.fna.fbcdn.net/v/t39.30808-6/367432797_249094054686779_8363083864096153828_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHFJ_q52Xk8FYGlrVtPoiQ1dR8cbW5NtMR1Hxxtbk20xJ78zDSQv8yHXr1n3nI7WsvzNuvjbHHUOdRwOElmChsw&_nc_ohc=0UDeRY6HoYYAX9Bp6uh&_nc_ht=scontent.futh1-1.fna&oh=00_AfDYlA26GihE_VWiYOTwwZ9c4Sr1SNzE56f3Py4wj-3UAg&oe=65EA1A2C",
        ),
      ),
    );
  }
}
