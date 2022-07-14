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

    let (_, setState) = Utils.useCalculator()

    let handleClick = (value) => {
        setState(x => x ++ value)
    }
    
    <div className={container}>
        // 1st Row 
        <Button onClick={(_) => handleClick("AC")}> {"AC" -> React.string} </Button>
        <Button onClick={(_) => handleClick("clear")}> {"<=" -> React.string} </Button>
        <Button onClick={(_) => handleClick("Percentage")}> {"%" -> React.string} </Button>
        <Button onClick={(_) => handleClick("DIV")}> {`÷` -> React.string} </Button >
  
        // 2nd Row  
        <Button onClick={(_) => handleClick("7")}> {"7" -> React.string} </Button>
        <Button onClick={(_) => handleClick("8")}> {"8" -> React.string} </Button>
        <Button onClick={(_) => handleClick("9")}> {"9" -> React.string} </Button>
        <Button onClick={(_) => handleClick("MUL")}> {`×` -> React.string} </Button >
   
        // 3rd Row   
        <Button onClick={(_) => handleClick("4")}> {"4" -> React.string} </Button>
        <Button onClick={(_) => handleClick("5")}> {"5" -> React.string} </Button>
        <Button onClick={(_) => handleClick("6")}> {"6" -> React.string} </Button>
        <Button onClick={(_) => handleClick("SUB")}> {"-" -> React.string} </Button >
   
        // 4th Row   
        <Button onClick={(_) => handleClick("1")}> {"1" -> React.string} </Button>
        <Button onClick={(_) => handleClick("2")}> {"2" -> React.string} </Button>
        <Button onClick={(_) => handleClick("3")}> {"3" -> React.string} </Button>
        <Button onClick={(_) => handleClick("ADD")}> {"+" -> React.string} </Button >
   
        // 5th Row   
        <Button onClick={(_) => handleClick("EXP")}> {"e" -> React.string} </Button>
        <Button onClick={(_) => handleClick("0")}> {"0" -> React.string} </Button>
        <Button onClick={(_) => handleClick("DEC")}> {"." -> React.string} </Button>
        <Button onClick={(_) => handleClick("EXE")}> {"=" -> React.string} </Button>
    </div>
}