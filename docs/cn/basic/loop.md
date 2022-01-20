


## `for` 语句

```awsl
for x in ["apple", "orange", "banana"] {
    <p>I like {x}</p>
}
```

### `if` 子句

```awsl
for i in [1, 2, 3] if x is prime {
<p>{i} is prime</p>
}
else {
<p>all prime</p>
}
```



### `else` 子句

对于任意迭代器 I, 如果 I 是空的, 那么会执行 else 子句

```awsl
for i in [1, 2, 3] if x is prime {
    <p>{i} is prime</p>
}
else {
    <p>all prime</p>
}
```

等价于

```awsl
let t0 = [1, 2, 3].filter {$x.is_prime()}
if t0.is_empty() {
    <p>all prime</p>
}
for i in t0 {
    <p>{i} is prime</p>
}
```

### `c-for` 指令

```awsl
<ul id="array-rendering">
  <li &{for item in items}>{ item.message }</li>
</ul>
```
