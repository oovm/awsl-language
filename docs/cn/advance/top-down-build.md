

## 自顶向下

```awsl
<!DOCTYPE html>
<html lang="en">
<head>{
block head {
    <link rel="stylesheet" href="style.css" />
    <title>{block title {}} - My Webpage</title>
}
}</head>
<body>
    <div id="content">{block content {}}</div>
    <div id="footer">{
    block footer {
        <>&copy; Copyright 2008 by <a href="http://domain.invalid/">you</a>.</>
    }
    }</div>
</body>
</html>





include "base";

extends title {
    <super/>
    "Index"
}

extends head {
    <super/>
    <style type="text/css">
        .important { color: #336699; }
    </style>
}


extends content {
    <h1>Index</h1>
    <p class="important">
      Welcome to my awesome homepage.
    </p>
}
```
