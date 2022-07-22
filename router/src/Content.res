
@react.component
let make = () => {
    Js.log("this is Content")

    let handleClick = (_) => {
        RescriptReactRouter.push("/")
    }

    <div className={"container"}>
        <h1 className={"Content"} >{React.string("Hello World")}</h1>
        <button onClick={handleClick}> {"go to Home" -> React.string}</button>
    </div>
}                                