// App.res
// more infomation https://rescript-lang.org/docs/react/latest/router

// can't go to /about directly
@react.component
let make = () => {
  let initialURL = list{}
  let url = RescriptReactRouter.useUrl()

  let rec len = (myList: list<'a>) =>
    switch myList {
    | list{} => 0
    | list{_, ...tail} => 1 + len(tail)
  };


  let watcher = (url:RescriptReactRouter.url) => {
    Js.log(len(url.path))
    Js.log(url)

  }

  let id = RescriptReactRouter.watchUrl(watcher)


  Js.log(url)
  switch url.path {
    | list{"about",..._} => <About />
    | list{"content",..._} => <Content />
    | list{} => <Home/>
    | _ => <PageNotFound/>
  }
}