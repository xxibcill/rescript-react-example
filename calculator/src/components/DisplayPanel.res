@react.component
let make = () => {
    let (displayFontSize,setDisplayFontSize) = React.useState(_ => "90px")
    let (state, _) = Utils.useCalculator()

    let calculateFontSize = (n) => {
        if (n < 5) {
            "60px"
        } else if (n >= 5 && n < 10) {
            "45px"
        } else if (n >= 10 && n < 15) {
            "35px"
        } else if (n >= 15 && n < 20) {
            "25px"
        } else {
            "20px"
        }
    }
    let addPxTail = (num) => num -> Js.String2.length -> calculateFontSize

    React.useEffect1(() => {
        // Run effects
        setDisplayFontSize(_ => state -> addPxTail )
        None // or Some(() => {})
    }, [state])

    let container = Emotion.css({
        "display": "flex",
        "justifyContent": "flex-end",
        "alignItems": "flex-end",
        "width": "100%",
        "height": "35%",
        "backgroundColor": "salmon"
    })

    let display = Emotion.css({
        "width": "calc(100% - 40px)",
        "overflowWrap": "break-word",
        "textAlign": "right",
        "fontSize": displayFontSize,
        "margin": "20px",
    })


    <div className={container}>
        <h1 className={display}>{state -> React.string}</h1>
    </div>
}