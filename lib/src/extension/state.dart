part of starlight_callback_listview;

extension _StarlightWidgetExt on State {
  bool _remove(OverscrollIndicatorNotification notification) {
    notification.disallowIndicator();
    return false;
  }
}
