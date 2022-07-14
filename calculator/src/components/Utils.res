
type action = CLEAR | BACKSPACE | CONCAT(string)
type contextType = (Js.String2.t, action => unit)

let initialValue:contextType = ("",_ => ())
let context = React.createContext(initialValue)

let handleConcatAction = (state,str:string) : string => {
    if(Js.String2.length(state) > 120){
        state
    } else {
        state == "0" ? str : Js.String2.concat(state,str)
    }
} 

let cutTail = (str) => Js.String2.slice(str, ~from=0, ~to_=(Js.String2.length(str)-1))
let calculatorReducer = (state, action) => {
    switch action {
    | CLEAR => ""
    | BACKSPACE => cutTail(state)
    | CONCAT(str) => handleConcatAction(state,str)
    }
}

module CalculatorProvider = {
    let provider = React.Context.provider(context)

    @react.component
    let make = (~value, ~children) => {
        React.createElement(provider, {"value": value, "children": children})
    }
}

let useCalculator = () => {
    React.useContext(context)
}
