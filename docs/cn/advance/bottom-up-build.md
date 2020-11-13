

## 自底向上

先构建基本原件: `part.awsl`.

```awsl
let title = </>

let head = <>
    <link rel="stylesheet" href="style.css"/>
    <title>{title} - My Webpage</title>
</>


let footer = <>
    &copy; Copyright 2008 by <a href="http://domain.invalid/">you</a>.
</>
```


然后引入这些原件:

```awsl
import "part.awsl";

<!DOCTYPE html>
<html lang="en">
<head>{base.head}</head>
<body>
    <div id="content">{base.content}</div>
    <div id="footer">{base.footer}</div>
</body>
</html>
```
