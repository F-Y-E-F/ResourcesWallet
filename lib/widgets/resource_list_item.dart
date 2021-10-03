import 'package:flutter/material.dart';


class ResourceListItem extends StatelessWidget {
  const ResourceListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
            ClipRRect(child: Image.network("https://cdn.discordapp.com/attachments/797111829025390652/894259836873768970/unknown.png",height: 70,width: 70, fit: BoxFit.cover,),borderRadius: BorderRadius.circular(10),)
        ],
      ),
    );
  }
}
