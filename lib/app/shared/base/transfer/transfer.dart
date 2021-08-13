import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../modules/home/home_store.dart';
import '../../themes/app_theme.dart';
import 'custom_text_form_field.dart';

class Pix extends StatefulWidget {
  const Pix({Key? key}) : super(key: key);

  @override
  _PixState createState() => _PixState();
}

class _PixState extends State<Pix> {
  @override
  Widget build(BuildContext context) {
    HomeStore store = Modular.get<HomeStore>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(color: Colors.black),
            Container(
              height: MediaQuery.of(context).size.height * .961,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Top Barra Close / QR code
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Modular.to.pop();
                        },
                        icon: Icon(
                          Icons.close,
                          color: AppTheme.colors.black.withOpacity(.6),
                          size: 23,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Image.asset(AppTheme.images.qr_code_purple,
                            height: 23),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qual é o valor da\ntransferência ?',
                                style: AppTheme.textStyles.titlesHome
                                    .copyWith(fontSize: 27),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: 'Saldo disponível em conta ',
                                  style: AppTheme
                                      .textStyles.subtitlesHomeCardsBottom
                                      .copyWith(fontSize: 15),
                                  children: [
                                    TextSpan(
                                      text: 'R\$ 1.120,98',
                                      style: AppTheme
                                          .textStyles.subtitlesHomeCardsBottom
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Observer(
                                builder: (_) {
                                  return CustomFormField(
                                    moneyController: store.moneycontroller,
                                    onChanged: (value) =>
                                        store.onChanged(value),
                                  );
                                },
                              ),
                              SizedBox(height: 70),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Observer(
                                  builder: (_) {
                                    return FloatingActionButton(
                                      onPressed: () {},
                                      elevation: 0,
                                      backgroundColor: store.value.isNotEmpty
                                          ? AppTheme.colors.darkPurple
                                          : AppTheme.colors.backgroundIcons,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: store.value.isNotEmpty
                                            ? AppTheme.colors.white
                                            : AppTheme.colors.black
                                                .withOpacity(.5),
                                        size: 20,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
