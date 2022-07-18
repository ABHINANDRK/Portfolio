
part of '../main_page.dart';


class _Body extends StatelessWidget {
  const _Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollBloc = context.read<ScrollBloc>();

    return ListView.builder(
      controller: scrollBloc.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
