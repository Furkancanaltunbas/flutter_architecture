import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  //Sayfayı yeniden build etme.
  final Widget Function(BuildContext context, T value) onPageBuilder;
  //Her view bir viewModelu olur.
  final T viewModel;
  //callback functionu dönderiyor (T model döndermeyi sağlıyor).,
  final Function(T model) onModelReady;
  //dispose nin callback ini dönderir
  final VoidCallback onDispose;

  const BaseView(
      {Key? key,
      //eğer diğer sayfadan kesin olarak değer almasını istiyorsak bunun başına required yazarız.
      required this.viewModel,
      required this.onPageBuilder,
      required this.onModelReady,
      required this.onDispose})
      : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
//Sayfa açıldığında ilk çalısacak metod.
  @override
  void initState() {
    super.initState();
    if (widget.onModelReady != null) widget.onModelReady(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context,widget.viewModel);
  }
}
