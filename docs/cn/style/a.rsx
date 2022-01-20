#![feature(proc_macro)]

extern crate rsx;
extern crate rsx_primitives;

use rsx::{rsx, css};
use rsx_primitives::rsx_stylesheet::types::*;
use rsx_primitives::rsx_dom::types::*;

let stylesheet: Stylesheet = <style>
.foo {
    padding: 1px;
}
</style>;
let node: DOMNode = <div>Hello world!</div>;




fn render_root() -> DOMNode {
    let stylesheet = include_sass!("example.sass");
    <\view style=stylesheet.take(".root")>
    let name = Some("world");
    let image = <image style=stylesheet.take(".image") src="..." />;
    render_children(name, image)
    </view>
}

fn app(cx: Scope) -> Element {
    let mut count = use_state(&cx, || 0);

    cx.render(rsx!(
        h1 { "High-Five counter: {count}" }
        button { onclick: move |_| count += 1, "Up high!" }
        button { onclick: move |_| count -= 1, "Down low!" }
    ))
}
