let countBox = Emotion.css({
    "minWidth": "300px",
    "padding": "25px",
    "backgroundColor": "#dedede",
    "display": "flex",
    "justifyContent": "center",
    "alignItems": "center",
    "fontSize": "35px"
})

@react.component
let make = (~count:int) => {
    <div className={countBox}> 
        <span>
            {React.int(count)} 
        </span>
    </div>
}