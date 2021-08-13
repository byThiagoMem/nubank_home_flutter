import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../modules/home/widgets/custom_items_carrousel/custom_items_carousel.dart';
import '../../themes/app_theme.dart';
import '../transfer/transfer.dart';
import 'custom_list_tile_pix.dart';
import 'list_items_carousel_pix.dart';

class AreaPix {
  static void showBottomSheet({required BuildContext context}) {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
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
              //Icone de fechar
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
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Imagem
                          Image.asset(
                            AppTheme.images.send_transfer,
                            height: 140,
                          ),
                          SizedBox(height: 20),
                          //Title
                          Text(
                            'Área Pix',
                            style: AppTheme.textStyles.titlesHome
                                .copyWith(fontSize: 25),
                          ),
                          SizedBox(height: 10),
                          //Subtitle
                          Text(
                            'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.',
                            style: AppTheme.textStyles.subtitlesHomeCardsBottom
                                .copyWith(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    //Menu Carousel
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      height: 120,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return Row(
                            children: [
                              CustomItemsCarrousel(
                                title:
                                    ListItemsCarouselPix.titlesCarousel[index],
                                image:
                                    ListItemsCarouselPix.iconsCarousel[index],
                                onTap: () {
                                  if (index == 0) {
                                    Modular.to.push(MaterialPageRoute(
                                        builder: (context) => Pix()));
                                  }
                                  ;
                                },
                              ),
                              SizedBox(width: 15),
                            ],
                          );
                        },
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: ListItemsCarouselPix.titlesCarousel.length,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                    SizedBox(height: 15),
                    //List Tiles Bottom
                    Container(
                      height: 200,
                      color: AppTheme.colors.backgroundIcons,
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return CustomListTilePix(
                            title: ListItemsCarouselPix.titlesListTile[index],
                            icon: ListItemsCarouselPix.iconsListTile[index],
                          );
                        },
                        itemCount: ListItemsCarouselPix.titlesListTile.length,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
