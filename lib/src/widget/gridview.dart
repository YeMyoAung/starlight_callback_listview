part of starlight_callback_listview;

class StarlightCallbackGridView extends StatefulWidget {
  final int _crossAxisCount;
  final double _maxCrossAxisExtent;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;
  final int count;
  final IndexedWidgetBuilder? builder;
  final void Function(double percent)? invokeWhen;
  final SliverGridDelegate? _gridDelegate;
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
  final _Using _using;
  final SliverChildDelegate? _childrenDelegate;

  final List<Widget> _children;

  const StarlightCallbackGridView.builder({
    Key? key,
    this.invokeWhen,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    required SliverGridDelegate gridDelegate,
    required this.builder,
    this.findChildIndexCallback,
    required this.count,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
  })  : itemExtent = null,
        prototypeItem = null,
        childAspectRatio = 0,
        crossAxisSpacing = 0,
        mainAxisSpacing = 0,
        _gridDelegate = gridDelegate,
        _children = const [],
        _crossAxisCount = 0,
        _maxCrossAxisExtent = 0.0,
        _childrenDelegate = null,
        _using = _Using.builder,
        super(key: key);

  const StarlightCallbackGridView.count({
    Key? key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    required int crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 0.0,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    required List<Widget> children,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.invokeWhen,
  })  : count = 0,
        builder = null,
        findChildIndexCallback = null,
        itemExtent = 0,
        prototypeItem = null,
        _children = children,
        _gridDelegate = null,
        _crossAxisCount = crossAxisCount,
        _maxCrossAxisExtent = 0.0,
        _childrenDelegate = null,
        _using = _Using.count,
        super(key: key);

  const StarlightCallbackGridView.custom({
    Key? key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    required SliverGridDelegate gridDelegate,
    required SliverChildDelegate childrenDelegate,
    this.cacheExtent,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.invokeWhen,
  })  : addAutomaticKeepAlives = true,
        addSemanticIndexes = true,
        addRepaintBoundaries = true,
        childAspectRatio = 0.0,
        mainAxisSpacing = 0.0,
        crossAxisSpacing = 0.0,
        count = 0,
        builder = null,
        findChildIndexCallback = null,
        itemExtent = 0,
        prototypeItem = null,
        _children = const [],
        _gridDelegate = gridDelegate,
        _crossAxisCount = 0,
        _maxCrossAxisExtent = 0.0,
        _childrenDelegate = childrenDelegate,
        _using = _Using.custom,
        super(key: key);

  const StarlightCallbackGridView.extent({
    Key? key,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
    required double maxCrossAxisExtent,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.childAspectRatio = 1.0,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    required List<Widget> children,
    this.semanticChildCount,
    this.dragStartBehavior = DragStartBehavior.start,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    this.restorationId,
    this.clipBehavior = Clip.hardEdge,
    this.invokeWhen,
  })  : count = 0,
        builder = null,
        findChildIndexCallback = null,
        itemExtent = 0,
        prototypeItem = null,
        _children = children,
        _gridDelegate = null,
        _crossAxisCount = 0,
        _maxCrossAxisExtent = maxCrossAxisExtent,
        _childrenDelegate = null,
        _using = _Using.extent,
        super(key: key);

  @override
  State<StarlightCallbackGridView> createState() =>
      _StarlightCallbackGridViewState();
}

class _StarlightCallbackGridViewState extends State<StarlightCallbackGridView> {
  late ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (widget._using) {
      case _Using.builder:
        child = GridView.builder(
          scrollDirection: widget.scrollDirection,
          reverse: widget.reverse,
          controller: _controller,
          primary: widget.primary,
          physics: widget.physics,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          gridDelegate: widget._gridDelegate!,
          itemBuilder: widget.builder!,
          findChildIndexCallback: widget.findChildIndexCallback,
          itemCount: widget.count,
          addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
          addRepaintBoundaries: widget.addRepaintBoundaries,
          addSemanticIndexes: widget.addSemanticIndexes,
          cacheExtent: widget.cacheExtent,
          semanticChildCount: widget.semanticChildCount,
          dragStartBehavior: widget.dragStartBehavior,
          keyboardDismissBehavior: widget.keyboardDismissBehavior,
          restorationId: widget.restorationId,
          clipBehavior: widget.clipBehavior,
          key: widget.key,
        );
        break;
      case _Using.count:
        child = GridView.count(
          scrollDirection: widget.scrollDirection,
          reverse: widget.reverse,
          controller: _controller,
          primary: widget.primary,
          physics: widget.physics,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          crossAxisCount: widget._crossAxisCount,
          mainAxisSpacing: widget.mainAxisSpacing,
          crossAxisSpacing: widget.crossAxisSpacing,
          childAspectRatio: widget.childAspectRatio,
          addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
          addRepaintBoundaries: widget.addRepaintBoundaries,
          addSemanticIndexes: widget.addSemanticIndexes,
          cacheExtent: widget.cacheExtent,
          semanticChildCount: widget.semanticChildCount,
          dragStartBehavior: widget.dragStartBehavior,
          keyboardDismissBehavior: widget.keyboardDismissBehavior,
          restorationId: widget.restorationId,
          clipBehavior: widget.clipBehavior,
          key: widget.key,
          children: widget._children,
        );
        break;
      case _Using.extent:
        child = GridView.extent(
          key: widget.key,
          scrollDirection: widget.scrollDirection,
          reverse: widget.reverse,
          controller: _controller,
          primary: widget.primary,
          physics: widget.physics,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          maxCrossAxisExtent: widget._maxCrossAxisExtent,
          mainAxisSpacing: widget.mainAxisSpacing,
          crossAxisSpacing: widget.crossAxisSpacing,
          childAspectRatio: widget.childAspectRatio,
          addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
          addRepaintBoundaries: widget.addRepaintBoundaries,
          addSemanticIndexes: widget.addSemanticIndexes,
          cacheExtent: widget.cacheExtent,
          semanticChildCount: widget.semanticChildCount,
          dragStartBehavior: widget.dragStartBehavior,
          keyboardDismissBehavior: widget.keyboardDismissBehavior,
          restorationId: widget.restorationId,
          clipBehavior: widget.clipBehavior,
          children: widget._children,
        );
        break;
      case _Using.custom:
        child = GridView.custom(
          gridDelegate: widget._gridDelegate!,
          childrenDelegate: widget._childrenDelegate!,
          cacheExtent: widget.cacheExtent,
          semanticChildCount: widget.semanticChildCount,
          key: widget.key,
          scrollDirection: widget.scrollDirection,
          reverse: widget.reverse,
          controller: _controller,
          primary: widget.primary,
          physics: widget.physics,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          dragStartBehavior: widget.dragStartBehavior,
          keyboardDismissBehavior: widget.keyboardDismissBehavior,
          restorationId: widget.restorationId,
          clipBehavior: widget.clipBehavior,
        );
        break;
      default:
        child = GridView.builder(
          scrollDirection: widget.scrollDirection,
          reverse: widget.reverse,
          controller: _controller,
          primary: widget.primary,
          physics: widget.physics,
          shrinkWrap: widget.shrinkWrap,
          padding: widget.padding,
          gridDelegate: widget._gridDelegate!,
          itemBuilder: widget.builder!,
          findChildIndexCallback: widget.findChildIndexCallback,
          itemCount: widget.count,
          addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
          addRepaintBoundaries: widget.addRepaintBoundaries,
          addSemanticIndexes: widget.addSemanticIndexes,
          cacheExtent: widget.cacheExtent,
          semanticChildCount: widget.semanticChildCount,
          dragStartBehavior: widget.dragStartBehavior,
          keyboardDismissBehavior: widget.keyboardDismissBehavior,
          restorationId: widget.restorationId,
          clipBehavior: widget.clipBehavior,
          key: widget.key,
        );
    }

    return NotificationListener(
      onNotification: _remove,
      child: child,
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

enum _Using { count, extent, builder, custom }
