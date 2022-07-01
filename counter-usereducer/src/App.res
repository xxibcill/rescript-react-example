let container = Emotion.css({
  "width": "100vw",
  "height": "100vh",
  "display": "flex",
  "justifyContent": "center",
  "alignItems": "center",
  "flexDirection": "column"
})

let buttonStyle = Emotion.css({
  "height": "100px",
  "fontSize": "30px",
  "padding": "10px 30px",
  "margin": "20px"
})

let buttonGroup = Emotion.css({
  "padding": "20px"
})


// Varaint
type action = Inc | Dec | IncByNumber(int) | Double
type state = {count: int}

let reducer = (state, action) => {
  switch action {
  | Inc => {count: state.count + 1}
  | Dec => {count: state.count - 1}
  | IncByNumber(x) => {count: state.count + x}
  | Double => {count: state.count*2}
  }
}

@react.component
let make = () => {
  let (state, dispatch) = React.useReducer(reducer, {count: 0})

  let asyncInc = () => {
    // setTimeOut return Js.Global.timeoutId so we gonna ignore it
    Js.Global.setTimeout(() => dispatch(Inc), 1000) -> ignore
  }

  <div className={container}>
    <Count count={state.count}/>
    <div className={buttonGroup}>
      <Button onClick={(_) => dispatch(Inc)} className={buttonStyle}>
        {React.string("INC")}
      </Button>
      <Button onClick={(_) => dispatch(Dec)} className={buttonStyle}>
        {React.string("DEC")}
      </Button>
      <Button onClick={(_) => dispatch(IncByNumber(3))} className={buttonStyle}>
        {React.string("INC by 3")}
      </Button>
      <Button onClick={(_) => dispatch(Double)} className={buttonStyle}>
        {React.string("Double")}
      </Button>

      <Button onClick={(_) => asyncInc()} className={buttonStyle}>
        {React.string("Async INC")}
      </Button> 
    </div>
  </div>
}