import 'package:flutter/material.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    double screenHeigh = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: screenHeigh * 0.4,
              width: screenWidht,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn0-production-images-kly.akamaized.net/OJBjd-YJpAb4UeMrcDDPdksZdiw=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3258311/original/005746300_1601894161-logo_mu.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.pink.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                                child: Text(
                              'Populer',
                              style: TextStyle(color: Colors.white),
                            )))
                      ],
                    ),
                  ),
                ]),
              ),
            )
          ]),
        ));
  }
}
