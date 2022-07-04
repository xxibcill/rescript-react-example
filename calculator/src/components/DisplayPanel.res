@react.component
let make = () => {
    let container = Emotion.css({
        "width": "100%",
        "height": "35%",
        "backgroundColor": "salmon"
    })

    let (state, _) = Utils.useCalculator()

    <div className={container}>
        <div>{state -> React.string}</div>
    </div>
}