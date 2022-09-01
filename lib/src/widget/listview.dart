part of starlight_callback_listview;

class StarlightCallbackListView extends StatefulWidget {
  final int? count;
  final IndexedWidgetBuilder? builder;
  final void Function(double percent)? invokeWhen;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  final bool? primary;
  final bool shrinkWrap;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final double? itemExtent;
  final Widget? prototypeItem;
  final int? Function(Key)? findChildIndexCallback;
  final bool addAutomaticKeepAlives;
  final bool addRepaintBoundaries;
  final bool addSemanticIndexes;
  final double? cacheExtent;
  final int? semanticChildCount;
  final DragStartBehavior dragStartBehavior;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;
  final String? restorationId;
  final Clip clipBehavior;
  final List<Widget> children;
  final bool _usingBuilder;

  const StarlightCallbackListView({
    Key? key,
    this.invokeWhen,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    this.itemExtent,
    this.prototypeItem,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    required this.children,
  })  : count = null,
        builder = null,
        _usingBuilder = false,
        super(key: key);

  const StarlightCallbackListView.builder({
    Key? key,
    required this.count,
    required this.builder,
    this.invokeWhen,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    this.itemExtent,
    this.prototypeItem,
    this.findChildIndexCallback,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
  })  : _usingBuilder = true,
        children = const [],
        super(key: key);

  @override
  State<StarlightCallbackListView> createState() =>
      _StarlightCallbackListViewState();
}

class _StarlightCallbackListViewState extends State<StarlightCallbackListView> {
  late ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: _remove,
      child: widget._usingBuilder
          ? ListView.builder(
              key: widget.key,
              scrollDirection: widget.scrollDirection,
              reverse: widget.reverse,
              controller: _controller,
              primary: widget.primary,
              physics: widget.physics,
              shrinkWrap: widget.shrinkWrap,
              padding: widget.padding,
              itemExtent: widget.itemExtent,
              prototypeItem: widget.prototypeItem,
              itemBuilder: widget.builder!,
              findChildIndexCallback: widget.findChildIndexCallback,
              itemCount: widget.count,
              addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
              addRepaintBoundaries: widget.addRepaintBoundaries,
              addSemanticIndexes: widget.addSemanticIndexes,
              dragStartBehavior: widget.dragStartBehavior,
              keyboardDismissBehavior: widget.keyboardDismissBehavior,
              restorationId: widget.restorationId,
              clipBehavior: widget.clipBehavior,
              cacheExtent: widget.cacheExtent,
              semanticChildCount: widget.semanticChildCount,
            )
          : ListView(
              key: widget.key,
              cacheExtent: widget.cacheExtent,
              scrollDirection: widget.scrollDirection,
              reverse: widget.reverse,
              controller: _controller,
              primary: widget.primary,
              physics: widget.physics,
              shrinkWrap: widget.shrinkWrap,
              padding: widget.padding,
              itemExtent: widget.itemExtent,
              prototypeItem: widget.prototypeItem,
              semanticChildCount: widget.semanticChildCount,
              addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
              addRepaintBoundaries: widget.addRepaintBoundaries,
              addSemanticIndexes: widget.addSemanticIndexes,
              dragStartBehavior: widget.dragStartBehavior,
              keyboardDismissBehavior: widget.keyboardDismissBehavior,
              restorationId: widget.restorationId,
              clipBehavior: widget.clipBehavior,
              children: widget.children,
            ),
    );
  }

  @override
  void dispose() {
    if (widget.invokeWhen != null) {
      _controller.addListener(_listener);
    }
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (widget.invokeWhen != null) _controller.addListener(_listener);
    });
  }

  void _listener() {
    widget.invokeWhen!.call(
      _controller.percent(),
    );
  }
}
