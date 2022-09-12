@obj
external makeProps: (
  ~children: React.element,
  ~color: string,
  ~disable: bool,
  ~disableRipple: bool,
  ~href: string,
  ~variant: string,
  unit,
) => _ = ""

@module("@mui/material")
external make: React.component<{
  "children": React.element,
  "color": string,
  "disable": bool,
  "disableRipple": bool,
  "href": string,
  "variant": string,
}> = "Button"
