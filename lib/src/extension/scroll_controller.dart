part of starlight_callback_listview;

extension _StarlightScrollController on ScrollController {
  double percent() => (position.pixels / position.maxScrollExtent) * 100;
}
