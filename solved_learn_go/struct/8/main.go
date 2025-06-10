package main

type User struct {
	Name string
	Membership
}

type Membership struct {
	Type string
	MessageCharLimit int
}

func newUser(name string, membershipType string) User {
	// ?
	// Need to return a User struct with a Membership struct inside it.
	limit := 100
	if membershipType == "premium" {
		limit = 1000
	}
	return User{
		Name: name,
		Membership: Membership{
			Type: membershipType,
			MessageCharLimit: limit,
		},
	}
}
