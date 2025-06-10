package main
import "fmt"

func (e email) cost() int {
	// ?
	if !e.isSubscribed {
		return 5*len(e.body)
	} else {
		return 2*len(e.body)
	}
}

func (e email) format() string {
	// ?
	if e.isSubscribed {
		return fmt.Sprintf("'%s' | Subscribed", e.body)
	} else {
		return fmt.Sprintf("'%s' | Not Subscribed", e.body)
	}
}

type expense interface {
	cost() int
}

type formatter interface {
	format() string
}

type email struct {
	isSubscribed bool
	body         string
}
