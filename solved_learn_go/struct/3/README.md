# Embedded Structs

Go is not an object-oriented language. However, embedded structs provide a kind of data-only inheritance that can be useful at times. Keep in mind, Go doesn't support classes or inheritance in the complete sense, but embedded structs are a way to elevate and share fields between struct definitions.

```
type car struct {
  brand string
  model string
}

type truck struct {
  // "car" is embedded, so the definition of a
  // "truck" now also additionally contains all
  // of the fields of the car struct
  car
  bedSize int
}
```

## Embedded vs. Nested

Unlike nested structs, an embedded struct's fields are accessed at the top level like normal fields.
Like nested structs, you assign the promoted fields with the embedded struct in a composite literal.

```
lanesTruck := truck{
  bedSize: 10,
  car: car{
    brand: "Toyota",
    model: "Camry",
  },
}

fmt.Println(lanesTruck.brand) // Toyota
fmt.Println(lanesTruck.model) // Camry
```

In the example above you can see that both brand and model are accessible from the top-level, while the nested equivalent to this object would require you to access these fields via a nested car struct: lanesTruck.car.brand or lanesTruck.car.model.

Assignment
At Textio, a "user" struct represents an account holder, and a "sender" is just a "user" with some additional "sender" specific data. A "sender" is a user that has a rateLimit field that tells us how many messages they are allowed to send.

Fix the bug by embedding the proper struct in the other.





