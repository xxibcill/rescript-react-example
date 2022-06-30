@react.component
let make = (~children, ~onClick, ~className) => {
  <button onClick className> children </button>
}