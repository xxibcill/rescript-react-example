
@react.component
let make = () => {
    Js.log("this is About")

    let handleClick = (_) => {
        RescriptReactRouter.push("/content")
    }

    <div className={"container"}>
        <h1 className={"About"} >{React.string("Hello World")}</h1>
        <button onClick={handleClick}> {"go to content" -> React.string}</button>
    </div>
}                                