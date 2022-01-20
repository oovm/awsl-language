
## Widget

部件(widget)是组件(component)的简化版.

有时候一些复用单元一共没几行, 不值得新建一个 SFC.

这种情况下就可以使用 widget.

```awsl
widget TitleCard(url: String) {
    <a link=url>click me!</a>
}
```

widget 没有办法自定义 style, 如果非要可变 style 的话, 需要额外增加字段

widget 也没有办法附加多语言内容


```awsl
<a/>


< script>
component TitleCard {
    title: String
}
</script>
```
