import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            // child: Image.network(
            //   'https://www.bing.com/images/search?view=detailV2&ccid=9e2pUa0j&id=F0549FA2BFEBDC3FCC146E0FB47EBD9ACF55DBF4&thid=OIP.9e2pUa0jt0wfYwFvaKiATgHaFY&mediaurl=https%3a%2f%2fstatic.vecteezy.com%2fsystem%2fresources%2fpreviews%2f000%2f198%2f210%2foriginal%2fbreaking-news-background-with-earth-planet-vector.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.f5eda951ad23b74c1f63016f68a8804e%3frik%3d9NtVz5q9frQPbg%26pid%3dImgRaw%26r%3d0&exph=4000&expw=5500&q=news+image&simid='
            //       '607996705385355636&FORM=IRPRST&ck=8D9C80052996AA4C6C208016489185DC&selectedIndex=0&itb=0&idpp=overlayview&ajaxhist=0&ajaxserp=0',
            //   height: 200,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // )
            child: Image.asset(
              'assets/entertaiment.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          'title fack news for any thing title fack news for any thing title fack news for any thing title fack news for any thing title fack news for any thing',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'title fack news for any thing title fack news for any thing title fack news for any thing title fack news for any thing title fack news for any thing',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
