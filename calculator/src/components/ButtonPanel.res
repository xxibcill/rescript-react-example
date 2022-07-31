open Utils

type target = {
    innerText: string
}

@react.component
let make = () => {
    let container = Emotion.css({
        "width": "auto",
        "height": "65%",
        "display": "grid",
        "gridTemplateColumns": "auto auto auto auto",
        "border": "solid 1px #f7f7f7",
        "borderRadius": "4px"
    })

    let (_, dispatch) = Utils.useCalculator()

    let handleClick = (value) => {
        Js.log(value)
        dispatch(CONCAT(value))
    }
    
    <div className={container}>
        // 1st Row 
        <Button onClick={_ => dispatch(CLEAR)}> {"AC" -> React.string} </Button>
        <Button onClick={_ => dispatch(BACKSPACE)}> {"<=" -> React.string} </Button>
        <Button onClick={_ => handleClick("%")}> {"%" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("/"))}> {`÷` -> React.string} </Button >
  
        // 2nd Row  
        <Button onClick={_ => dispatch(CONCAT("7"))}> {"7" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("8"))}> {"8" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("9"))}> {"9" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("*"))}> {`×` -> React.string} </Button >
   
        // 3rd Row   
        <Button onClick={_ => dispatch(CONCAT("4"))}> {"4" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("5"))}> {"5" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("6"))}> {"6" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("-"))}> {"-" -> React.string} </Button >
   
        // 4th Row   
        <Button onClick={_ => dispatch(CONCAT("1"))}> {"1" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("2"))}> {"2" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("3"))}> {"3" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("+"))}> {"+" -> React.string} </Button >
   
        // 5th Row   
        <Button onClick={_ => dispatch(CONCAT("E"))}> {"e" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("0"))}> {"0" -> React.string} </Button>
        <Button onClick={_ => dispatch(CONCAT("."))}> {"." -> React.string} </Button>
        <Button onClick={_ => dispatch(EVAL)}> {"=" -> React.string} </Button>
    </div>
}