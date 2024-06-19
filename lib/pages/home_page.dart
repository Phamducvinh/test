import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kColorPrimary,
      body: SafeArea(
        child: orientation == Orientation.portrait
            ? Stack(
                children: [
                  const GetStartedBackground(),
                  const FractionallySizedBox(
                    heightFactor: 0.35,
                    child: GetStartedHeader(),
                  ),
                  Align(
                    alignment: const Alignment(0.0, 0.8),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            'Get Started',
                            style: PrimaryFont.medium(size.width * 0.07),
                          ),
                        )),
                  )
                ],
              )
            : const Row(
                children: [
                  Expanded(child: GetStartedBackground()),
                  Expanded(
                      child: Align(
                    alignment: Alignment.topCenter,
                    child: FractionallySizedBox(
                      heightFactor: 0.7,
                      child: GetStartedHeader(),
                    ),
                  )),
                ],
              ),
      ),
    );
  }
}

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation; // Add this line
    return Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
            heightFactor: orientation == Orientation.portrait ? 0.6 : 0.9,
            widthFactor: 1,
            child: FittedBox(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                clipBehavior: Clip.antiAlias,
                child: SvgPicture.asset('assets/images/bg_get_started.svg'))));
  }
}

class GetStartedHeader extends StatelessWidget {
  const GetStartedHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: SvgPicture.asset(
              'assets/images/ic_logo.svg',
              alignment: const Alignment(0.0, -0.8),
            )),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Hi Ashar, welcome\n',
                  style: PrimaryFont.medium(30)
                      .copyWith(color: kColorLightYellow, height: 1.3),
                  children: [
                    TextSpan(
                      text: 'to silent Moon\n',
                      style: PrimaryFont.thin(30).copyWith(
                        color: kColorLightYellow,
                      ),
                    ),
                  ],
                )),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    'Explore the app, Find some peace of mind\n to prepare for meditation.',
                    style: PrimaryFont.light(16)
                        .copyWith(color: kColorLightGrey, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
