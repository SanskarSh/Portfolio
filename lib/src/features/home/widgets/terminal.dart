import 'package:flutter/material.dart';
import 'package:portfolio/src/features/home/widgets/animated_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildAboutMeTerminal extends StatelessWidget {
  const BuildAboutMeTerminal({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.7,
      // width: screenSize.width * 0.8,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "> Sanskar.currentLocation",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        '"Jaipur, Rajasthan (India)"',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "> Sanskar.contactInfo",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            '[',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                          ),
                          GestureDetector(
                            // onTap: _launchMainUrl,
                            child: Text(
                              '"the.sanskar.sh@gmail.com",',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Colors.cyanAccent,
                                  ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchLinkedInbUrl,
                            child: Text(
                              ' "Linkedin",',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Colors.cyanAccent,
                                  ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchGitHubUrl,
                            child: Text(
                              ' "Github",',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Colors.cyanAccent,
                                  ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _launchTwitterUrl,
                            child: Text(
                              ' "Twitter"',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Colors.cyanAccent,
                                  ),
                            ),
                          ),
                          Text(
                            ']',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "> Sanskar.resume",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      GestureDetector(
                        onTap: _launchResumeUrl,
                        child: Text(
                          '"sanskar-resume.pdf"',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: Colors.cyanAccent),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "> Sanskar.interests",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        '["design", "guitar", "cooking", "music"]',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "> Sanskar.education",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        '"B.Tech in Computer Science and Engineering - Rajasthan Technical University, Kota"',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context).colorScheme.tertiary,
                                ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "> Sanskar.skills",
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        '["Sass", "Flutter", "Dart", "JavaScript", "Python", "Node", "git"]',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: Theme.of(context).colorScheme.tertiary),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            ">",
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: AnimatedIndicator(
                              containerHeight: 20.0,
                              containerWidth: 10.0,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _launchResumeUrl() async {
    final Uri url = Uri.parse(
        "https://docs.google.com/document/d/1f5ZxTr-R2iFa8s2fJfiVZ6UEe_vgj8PuEbQaVE5-t-k/edit?usp=sharing");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
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

  _launchTwitterUrl() async {
    final Uri url = Uri.parse("https://twitter.com/SanskarShriva17");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
