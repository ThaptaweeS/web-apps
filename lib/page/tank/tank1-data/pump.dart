
import 'package:newmaster/page/tank/tank1-data/pum-info.dart';
import 'package:newmaster/page/tank/tank1-data/pump-detail.dart';
import 'package:newmaster/responsive.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';


class FileInfoCardGridView extends StatelessWidget {
  FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.2,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo(
          info: demoMyFiles[index],
        );
      },
    );
  }
}


class FileInfoCardGridView2 extends StatelessWidget {
  FileInfoCardGridView2({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles2[index],
        );
      },
    );
  }
}


class FileInfoCardGridView3 extends StatelessWidget {
  FileInfoCardGridView3({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles3[index],
        );
      },
    );
  }
}

class FileInfoCardGridView4 extends StatelessWidget {
  FileInfoCardGridView4({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles4[index],
        );
      },
    );
  }
}


class FileInfoCardGridView5 extends StatelessWidget {
  FileInfoCardGridView5({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles5[index],
        );
      },
    );
  }
}


class FileInfoCardGridView6 extends StatelessWidget {
  FileInfoCardGridView6({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles6[index],
        );
      },
    );
  }
}

class FileInfoCardGridView7 extends StatelessWidget {
  FileInfoCardGridView7({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(FileInfoCardGridView)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return Pumpinfo2(
          info: demoMyFiles7[index],
        );
      },
    );
  }
}


