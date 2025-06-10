Pass by Reference
Functions in Go generally pass variables by value, meaning that functions receive a copy of most non-composite types:

func increment(x int) {
    x++
    fmt.Println(x)
    // 6
}


func main() {
    x := 5
    increment(x)
    fmt.Println(x)
    // 5
}

The main function still prints 5 because the increment function received a copy of x.

One of the most common use cases for pointers in Go is to pass variables by reference, meaning that the function receives the address of the original variable, not a copy of the value. This allows the function to update the original variable's value.

func increment(x *int) {
    *x++
    fmt.Println(*x)
    // 6
}

func main() {
    x := 5
    increment(&x)
    fmt.Println(x)
    // 6
}

Fields of Pointers
When your function receives a pointer to a struct, you might try to access a field like this and encounter an error:

msgTotal := *analytics.MessagesTotal

Instead, access it – like you'd normally do — using a selector expression.

msgTotal := analytics.MessagesTotal

This approach is the recommended, simplest way to access struct fields in Go, and is shorthand for:

(*analytics).MessagesTotal

Assignment
Write a getMessageText function. It should accept a pointer to an Analytics struct and a Message struct (not a pointer).

It should look at the Success field of the Message struct and, based on that, increment the MessagesTotal, MessagesSucceeded, or MessagesFailed fields of the Analytics struct as appropriate.