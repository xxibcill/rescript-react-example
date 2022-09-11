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
  <ApolloClient.React.ApolloProvider client=Apollo.client>
    <div className={container}>
      <Query/>
    </div>
  </ApolloClient.React.ApolloProvider>
}
