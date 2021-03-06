open Utils

@react.component
let make = () => {
   
    // let (state, setState) = React.useState(() => "032+20312-30821-38512-390412-38123-59+712-342508+60980967320-952134")
    let (state, dispatch) = React.useReducer(calculatorReducer, "0")

    let container = Emotion.css({
        "width": "30vh",
        "height": "60vh",
        "minWidth" : "300px",
        "minHeight" : "640px",
        "border": "solid 1px #dedede",
        "borderRadius": "4px"
    })


    <CalculatorProvider value={(state, dispatch)}>
        <div className={container}>
            <DisplayPanel/>
            <ButtonPanel/>
        </div>
    </CalculatorProvider>
}