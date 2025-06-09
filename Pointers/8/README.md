Pointer Performance
Occasionally, new Go developers hear "pointers don't pass copies" and take that to a logical extreme, concluding:

Pointers are always faster because copying is slow. I'll always use pointers!

No. Bad. Stop.

Here are my rules of thumb:

First, worry about writing clear, correct, maintainable code.
If you have a performance problem, fix it.
Before even thinking about using pointers to optimize your code, use pointers when you need a shared reference to a value; otherwise, just use values.

If you do have a performance problem, consider:

Stack vs. Heap
Copying
Interestingly, local non-pointer variables are generally faster to pass around than pointers because they're stored on the stack, which is faster to access than the heap. Even though copying is involved, the stack is so fast that it's no big deal.

Once the value becomes large enough that copying is the greater problem, it can be worth using a pointer to avoid copying. That value will probably go to the heap, so the gain from avoiding copying needs to be greater than the loss from moving to the heap.

One of the reasons Go programs tend to use less memory than Java and C# programs is that Go tends to allocate more on the stack.

If you're curious to dig deeper, I ran a benchmark and wrote about it.