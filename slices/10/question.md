- Why is 5 the final value in the last index of 'j'?

    - [ ] j and g point to the same underlying array so g's append overwrote j
    - [ ] The Go team be trollin'
    - [ ] Because append only works properly when the number of elements is < 10
    - [ ] Because 5 was appended to i to create j

- Why doesn't the bug regarding slices 'j' and 'g' in example 2 occur in example 1 as well?

    - [ ] The array's cap() is exceeded so a new underlying array is allocated
    - [ ] The array in example 1 had a larger starting capacity
    - [ ] Because there are fewer elements and Go's runtime can't handle more than ~8

- How can you best avoid these kinds of bugs?

    - [ ] Don't use the append() function
    - [ ] Always assign the result of the append() function to a new slice
    - [ ] Always assign the result of the append() function back to the same slice