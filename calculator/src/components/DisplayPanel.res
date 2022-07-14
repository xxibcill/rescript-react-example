@react.component
let make = () => {
    let (displayFontSize,setDisplayFontSize) = React.useState(_ => "90px")
    let (state, _) = Utils.useCalculator()

    let calculateFontSize = (n) => {
        if (n < 5) {
            "60px"
        } else if (n >= 5 && n < 15) {
            "30px"
        } else if (n >= 15 && n < 25) {
            "20px"
        } else {
            "15px"
        }
    }
    let addPxTail = (num) => num -> Js.String2.length -> calculateFontSize

    React.useEffect1(() => {
        // Run effects
        setDisplayFontSize(_ => state -> addPxTail )
        Js.log(displayFontSize)
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
        "width": "auto",
        "height": "auto",
        "overflowWrap": "break-word",
        "textAlign": "right",
        "fontSize": displayFontSize,
        "margin": "20px",
    })


    <div className={container}>
        <h1 className={display}>{state -> React.string}</h1>
    </div>
}