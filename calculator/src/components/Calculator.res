@react.component
let make = () => {

    let container = Emotion.css({
        "width": "30vh",
        "height": "60vh",
        "minWidth" : "300px",
        "minHeight" : "640px",
        "border": "solid 1px #dedede",
        "borderRadius": "4px"
    })

    <div className={container}>
        <DisplayPanel/>
        <ButtonPanel/>
    </div>
}