import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan5/config/app_routes.dart';

import '../../models/user.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hi, Welcome Back!"),
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
            user.profilePhoto!,
          ),
        ),
      ],
    );
  }
}

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        isDense: true,
        hintText: "Search . . . ",
        filled: true,
        fillColor: Colors.grey[350],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        suffixIcon: const Icon(
          Icons.search_rounded,
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const Icon(Icons.chevron_right_rounded)
      ],
    );
  }
}

class HottestNewsCard extends StatelessWidget {
  const HottestNewsCard({
    super.key,
    required this.size,
    required this.pictureUrl,
    required this.newsTitle,
    required Null Function() onTap,
  });

  final Size size;
  final String pictureUrl;
  final String newsTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              pictureUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 50,
            width: size.width - 32,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),
          ),
        ),
        Positioned(
            bottom: 16,
            right: 16,
            child: Text(
              newsTitle,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ))
      ],
    );
  }
}

class LatestNewsCard extends StatelessWidget {
  const LatestNewsCard({
    super.key,
    required this.size,
    required this.i,
  });

  final Size size;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.black12,
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              GoRouter.of(context).goNamed(
                AppRoutes.newsDetail,
                params: {
                  "id": i.toString(),
                },
              );
            },
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.25,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image.network(
                          "https://i.postimg.cc/50CNfS40/image-750x-63e746b43d037.jpg"),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "$i.Formula E India, Mobil dan Motor Warga Masuk Sirkuit",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        )
      ],
    );
  }
}

class LatestNewsIndexCardSection extends StatelessWidget {
  const LatestNewsIndexCardSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(
        height: 300,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 1; i < 3; i++)
            LatestNewsCard(
              size: size,
              i: i,
            ),
        ],
      ),
    );
  }
}
