import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'constants.dart';
import 'models/Category.dart';

// buna noldu ya sdhdsn bilmirem sana nazar ettm sanırm dfghjkl ahah olabilir
class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);
// hellopğğ  thehelğğ anlatıyorum şimdi dsfgh  fotoğraf ekledim boyutu olmadı sanırım onu ayarlarım ama ileri butonunun calısması lazım calısmadı
//hata   tane değil ki mübarek  ÇALIştır  :)) nerenin şivesi bu sdhjjf kendime özel şivem fsdgh her yerden bişiler kapıyotum ahaha o daa güzel şimdi beni al burdan hatanın olduğu yere doğru gezdir
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryCard(
              icon: demo_categories[index].icon,
              title: demo_categories[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 4, vertical: defaultPadding / 2),
        child: Column(
          // children: [SvgPicture.asset("assets/icons...")],
          children: [
            SvgPicture.asset(icon),
            const SizedBox(height: defaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
