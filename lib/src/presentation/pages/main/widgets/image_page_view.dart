import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/pages/component/cached_image_component.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class ImagePageBuilder extends StatefulWidget {
  const ImagePageBuilder({
    super.key,
    required this.imageList,
  });
  final List<String?> imageList;

  @override
  State<ImagePageBuilder> createState() => _ImagePageBuilderState();
}

class _ImagePageBuilderState extends State<ImagePageBuilder> {
  PageController pageController = PageController(initialPage: 0);
  late int pageIndex;
  @override
  void initState() {
    pageIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257.h, // height of the page view
      child: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: widget.imageList.length,
                itemBuilder: (context, index) {
                  return CachedImageComponent(
                    imageUrl: widget.imageList[index] ?? "",
                    height: double.infinity,
                    width: double.infinity,
                    borderRadius: 15.r,
                  );
                }),
          ),
          Positioned.fill(
            bottom: 8.h,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Style.white,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: SizedBox(
                        height: 7.r,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.imageList.length,
                          itemBuilder: (context, index) => SizedBox(
                            height: 7.r,
                            width: 7.r,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: pageIndex == index
                                      ? Style.black
                                      : Style.black.withOpacity(0.21),
                                  borderRadius: BorderRadius.circular(3.5.r)),
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              5.horizontalSpace,
                        ),
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
