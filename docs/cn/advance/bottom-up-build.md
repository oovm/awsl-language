

## 自底向上

```awsl


let title = </>

let head = <>
    <link rel="stylesheet" href="style.css"/>
    <title>{title} - My Webpage</title>
</>


let footer = <>
    &copy; Copyright 2008 by <a href="http://domain.invalid/">you</a>.
</>


import "base";


<!DOCTYPE html>
<html lang="en">
<head>{base.head}</head>
<body>
    <div id="content">{base.content}</div>
    <div id="footer">{base.footer}</div>
</body>
</html>



def cdn_katex(enable: false) {
    if enable {
        <>
        <p> 2</p>2
        </>
    }
}



include "base";

extends head {
    {super()}
    <style type="text/css">
        .important { color: #336699; }
    </style>
}


extends content {
    <h1>Index</h1>
    <p class="important">
    2  Welcome to my awesome homepage.
    </p>
}


import "part";
```
