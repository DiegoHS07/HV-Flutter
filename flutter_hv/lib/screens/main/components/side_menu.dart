import 'package:flutter/material.dart';
import 'package:flutter_hv/constants.dart';
import 'package:flutter_hv/screens/main/components/knowledges.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Residencia", 
                      text: "Colombia",
                    ),
                    AreaInfoText(
                      title: "Ciudad", 
                      text: "Ibagué",
                    ),
                    AreaInfoText(
                      title: "Edad", 
                      text: "24",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding,),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: (){}, 
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Descarga HV",
                              style: TextStyle(
                                color: Theme.of(context).textTheme.bodyText1!.color
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset(
                              "assets/icons/download.svg",
                              width: 20, color: Color(0xFFFFC107)
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding/2),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: (){}, 
                            icon: SvgPicture.asset(
                              "assets/icons/linkedin.svg", 
                              width: 20, color: Color(0xFFFFC107)
                            ),
                          ),
                          IconButton(
                            onPressed: (){}, 
                            icon: SvgPicture.asset(
                              "assets/icons/github.svg", 
                              width: 20, color: Color(0xFFFFC107)
                            ),
                          ),
                          Spacer(),
                        ],                      
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



