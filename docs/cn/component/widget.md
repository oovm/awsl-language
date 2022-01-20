
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

### 与 function 的区别

构造器不同

```awsl
function a() {
    for i in [1, 2, 3] {
        i
        i
    }
}
```awsl

```awsl
widget a() {
    for i in [1, 2, 3] {
        i
        i
    }
}
```awsl
