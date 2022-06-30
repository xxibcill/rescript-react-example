let container = Emotion.css({
  "width": "100vw",
  "height": "100vh",
  "display": "flex",
  "justifyContent": "center",
  "alignItems": "center",
  "flexDirection": "column"
})

let buttonStyle = Emotion.css({
  "width": "100px",
  "height": "100px",
  "fontSize": "50px",
  "margin": "20px"
})

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)
  let onClick = (e) => {
    setCount(_ => count+1)
  }
  <div className={container}>
    <Count count/>
    <Button onClick className={buttonStyle}>
      {React.string("+")}
    </Button>
  </div>
}