import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/src/features/home/widgets/animated_indicator.dart';
import 'package:portfolio/src/features/home/widgets/terminal.dart';
import 'package:portfolio/src/settings/theme/settings_controller.dart';
import 'package:portfolio/src/settings/theme/settings_toggle_view.dart';
import 'package:url_launcher/url_launcher.dart';

class WebHomeScreen extends StatelessWidget {
  const WebHomeScreen({super.key, required this.controller});

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: ToggleTheme(controller: controller),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.1),
              Row(
                children: <Widget>[
                  Text(
                    '>',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(width: 15.0),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TyperAnimatedText(
                        speed: const Duration(milliseconds: 90),
                        "Sanskar Shrivastava",
                        textStyle:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                      ),
                    ],
                  ),
                  AnimatedIndicator(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(.7),
                  ),
                ],
              ),
              SizedBox(height: screenSize.height * 0.1),
              Text(
                "I am a flutter developer. My passion is building simple, beautiful user experiences.",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              SizedBox(height: screenSize.height * 0.08),
              const BuildAboutMeTerminal(),
              SizedBox(height: screenSize.height * 0.1),
              Center(
                child: Text(
                  "Contact me!",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 30,
                      ),
                ),
              ),
              Center(
                  child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 8,
                width: 70,
                color: Theme.of(context).colorScheme.primary,
              )),
              SizedBox(height: screenSize.height * 0.2),
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "the.sanskar.sh@gmail.com",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                    ),
                    Text(
                      " || ",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                    ),
                    GestureDetector(
                      onTap: _launchLinkedInbUrl,
                      child: Text(
                        "LinkedIn",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ),
                    Text(
                      " || ",
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                    ),
                    GestureDetector(
                      onTap: _launchGitHubUrl,
                      child: Text(
                        "GitHub",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenSize.height * 0.2),
              Center(
                child: Text(
                  "Made By Sanskar © 2024",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
              ),
              SizedBox(height: screenSize.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  _launchLinkedInbUrl() async {
    final Uri url =
        Uri.parse("https://www.linkedin.com/in/sanskar-shrivastava-757649202");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchGitHubUrl() async {
    final Uri url = Uri.parse("https://github.com/SanskarSh");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
