
@react.component
let make = () => {
  Js.log("this is Home")

  let handleClick = (_) => {
    RescriptReactRouter.push("/about")
  }

  <div className={"container"}>
    <h1 className={"hello"} >{React.string("This is Home")}</h1>
    <button onClick={handleClick}> {"go to About" -> React.string}</button>
  </div>
}