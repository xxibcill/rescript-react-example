@react.component
let make = () => {
   let container = Emotion.css({
        "width": "100%",
        "height": "35%",
        "backgroundColor": "salmon"
    })

    <div className={container}>
        <div>{"" -> React.string}</div>
    </div>
}