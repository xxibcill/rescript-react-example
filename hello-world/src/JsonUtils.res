type l2 = {
  name: string,
  value: int,
}

type l1 = {
  l2_array: array<l2>,
  l2_option: option<l2>,
  l2_option_array: option<array<l2>>,
}

module Decode = {
  open Json.Decode
 
  let l2Decode = object(field => {
    name: field.required(. "name", string),
    value: field.required(. "value", int),
  })

  let decoder = object(field => {
    l2_array: field.required(. "l2_array", array(l2Decode)),
    l2_option: field.optional(. "l2_option", l2Decode),
    l2_option_array: field.optional(. "l2_option_array", array(l2Decode)),
  })
}

let data = `{
  "l2_array": [
    {
      "name": "gg",
      "value": 112
    },
    {
      "name": "wp",
      "value": 99
    }
  ],
  "l2_option_array": [
    {
      "name": "gg",
      "value": 112
    },
    {
      "name": "wp",
      "value": 99
    }
  ]
}`

let result = data->Json.parseExn->Json.decode(Decode.decoder)->(res => switch res {
  | Ok(data) => Some(data)
  | Error(_) => None
})
