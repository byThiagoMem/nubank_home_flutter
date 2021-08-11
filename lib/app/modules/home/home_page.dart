import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/themes/app_theme.dart';
import 'home_store.dart';
import 'widgets/app_bar/custom_app_bar.dart';
import 'widgets/banners/bottom/custom_bottom_banner.dart';
import 'widgets/banners/bottom/list_titles_bottom_banners.dart';
import 'widgets/banners/top/custom_top_banner.dart';
import 'widgets/banners/top/list_titles_top_banners.dart';
import 'widgets/custom_infos/custom_infos.dart';
import 'widgets/custom_items_carrousel/custom_list_tile.dart';
import 'widgets/custom_items_carrousel/list_items.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title:
                          Text('Conta', style: AppTheme.textStyles.titlesHome),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 27,
                        color: AppTheme.colors.black.withOpacity(.5),
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                    SizedBox(height: 2),
                    Text('R\$ 1.120,98', style: AppTheme.textStyles.values),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 120,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return CustomItemsCarrousel(
                      title: ListItems.titles[index],
                      image: ListItems.images[index],
                    );
                  },
                  itemCount: ListItems.titles.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.backgroundIcons,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AppTheme.images.card,
                        height: 38,
                      ),
                      Text(
                        'Meus cartões',
                        style: AppTheme.textStyles.titlesHomeCards,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return CustomTopBanner(
                      title: ListTitlesTopBanners.titles[index],
                      titleFeatured: ListTitlesTopBanners.titleFeatured[index],
                    );
                  },
                  itemCount: ListTitlesTopBanners.titles.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CustomInfos(
                  icon: AppTheme.images.card,
                  title: 'Cartão de crédito',
                  subtitle: 'Fatura atual',
                  invoice: 'R\$ 616,08',
                  valueLoan: 'Limite disponível de R\$ 6.167,00',
                ),
              ),
              Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CustomInfos(
                  icon: AppTheme.images.loan,
                  title: 'Empréstimo',
                  subtitle: 'Valor disponível até',
                  invoice: '',
                  valueLoan: 'R\$ 25.000,00',
                ),
              ),
              Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: CustomInfos(
                  icon: AppTheme.images.favorite,
                  title: 'Seguro de vida',
                  subtitle:
                      'Conheça Nubank Vida: um seguro simples que cabe no bolso.',
                  invoice: '',
                  valueLoan: '',
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 30),
                child: Text(
                  'Descubra mais',
                  style: AppTheme.textStyles.titlesHome.copyWith(fontSize: 17),
                ),
              ),
              Container(
                height: 170,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return CustomBottomBanner(
                      title: ListTitlesBottomBanners.titles[index],
                      subtitle: ListTitlesBottomBanners.subtitles[index],
                      titleButton: ListTitlesBottomBanners.titlesButton[index],
                      isNew: index == 0 ? true : false,
                    );
                  },
                  itemCount: ListTitlesBottomBanners.titles.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
