module PokedexQuery = %graphql(`
    query getPokemon{
        allPokemon {
            name
        }
    }
  `)

@react.component
let make = () =>
    switch PokedexQuery.use() {
    | {loading: true} => "Loading..."->React.string
    | {error: Some(_error)} => "Error loading data"->React.string
    | {data: Some({todos})} =>
        <div>
        {"There are "->React.string} {todos->Belt.Array.length->React.int} {" To-Dos"->React.string}
        </div>
    | {data: None, error: None, loading: false} =>
        "I hope this is impossible, but sometimes it's not!"->React.string
}
