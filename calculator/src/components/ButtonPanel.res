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

    let onClick = (_) => {
        Js.log("Hello")
    }

    <div className={container}>
        // 1st Row 
        <Button onClick>{"AC" -> React.string}</Button>
        <Button onClick>{"<=" -> React.string}</Button>
        <Button onClick>{"%" -> React.string}</Button>
        <Button onClick>{`÷` -> React.string}</Button >
 
        // 2nd Row 
        <Button onClick>{"7" -> React.string}</Button>
        <Button onClick>{"8" -> React.string}</Button>
        <Button onClick>{"9" -> React.string}</Button>
        <Button onClick>{`×` -> React.string}</Button >
 
        // 3rd Row 
        <Button onClick>{"4" -> React.string}</Button>
        <Button onClick>{"5" -> React.string}</Button>
        <Button onClick>{"6" -> React.string}</Button>
        <Button onClick>{"-" -> React.string}</Button >
 
        // 4th Row 
        <Button onClick>{"1" -> React.string}</Button>
        <Button onClick>{"2" -> React.string}</Button>
        <Button onClick>{"3" -> React.string}</Button>
        <Button onClick>{"+" -> React.string}</Button >
 
        // 5th Row 
        <Button onClick>{"e" -> React.string}</Button>
        <Button onClick>{"0" -> React.string}</Button>
        <Button onClick>{"." -> React.string}</Button>
        <Button onClick>{"+" -> React.string}</Button>
    </div>
}