// A simple Go microservice boilerplate that demonstrates colored output
package main

import (
	"fmt"

	"github.com/fatih/color"
)

func main() {
	fmt.Println(color.GreenString("Hello, world!"))
}
