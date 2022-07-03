@react.component
let make = () => {
    // useTheme custom hook
    let theme = Theme.useTheme()

    let hello = Emotion.css({
        "color": theme.pallete.primary ,
        "backgroundColor": theme.pallete.grey,
        "padding": theme.spacing(2),
        "fontSize": theme.fontSize.large,
        "borderRadius": "4px"
    })

    <h1 className={hello} >{React.string("Hello World")}</h1>
}