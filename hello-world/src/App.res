let container = Emotion.css({
  "width": "100vw",
  "height": "100vh",
  "display": "flex",
  "justifyContent": "center",
  "alignItems": "center",
})

let hello = Emotion.css({
  "color": "#fff",
  "backgroundColor": "hotpink",
  "padding": "24px",
  "fontSize": "24px",
  "borderRadius": "4px"
})

@react.component
let make = () => {
  <div className={container}>
    <h1 className={hello} >
      {
        switch JsonUtils.result {
          | Some({l2_option}) => switch l2_option {
            | Some({name}) => name -> React.string
            | None => "None" -> React.string
          } 
          | None => "None" -> React.string
        }
      }
    </h1>
    {
      switch JsonUtils.result {
        | Some({l2_option_array}) => switch l2_option_array {
          | Some(resArray) => {
            resArray -> Belt.Array.map(res => <h1 className={hello}>
              {res.name -> React.string}
            </h1>) -> React.array
            }
          | None => <div>{"None" -> React.string}</div>
        } 
        | None => "None" -> React.string
      }
    }
  </div>
}
