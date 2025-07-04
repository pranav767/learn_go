Message Tagger
Textio needs a way to tag messages based on specific criteria.

Assignment
    -   Complete the tagMessages function. It should take a slice of sms messages, and a function (that takes a sms as input and returns a slice of strings) as inputs. And it should return a slice of sms messages.
        1.  It should loop through each message and set the tags to the result of the passed in function.
        2.  Be sure to modify the messages of the original slice.
        3.  Ensure the tags field contains an initialized slice. No nil slices.
    -   Complete the tagger function. It should take an sms message and return a slice of strings.
        1.  For any message that contains "urgent" (regardless of casing) in the content, the Urgent tag should be applied first.
        2.  For any message that contains "sale" (regardless of casing), the Promo tag should be applied second.
Regardless of casing just means that even "uRGent" or "SALE" should trigger the tag.

Example usage:

```
messages := []sms{
	{id: "001", content: "Urgent! Last chance to see!"},
	{id: "002", content: "Big sale on all items!"},
	// Additional messages...
}
taggedMessages := tagMessages(messages, tagger)
// `taggedMessages` will now have tags based on the content.
// 001 = [Urgent]
// 002 = [Promo]
```

Tip
The go strings package, specifically the Contains and ToLower functions, can be very helpful here!