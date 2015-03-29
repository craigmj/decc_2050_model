package main

/*

#cgo CFLAGS: -I.
#cgo LDFLAGS: -L. -lmodel -lm
#include "excelspreadsheet.h"

ExcelValue enumber(int i) {
	ExcelValue v;
	v.type = ExcelNumber;
	v.number = (double)i;
	return v;
}

*/
import "C"
import "fmt"

func p188() C.double {
	return C.intermediate_output_p188().number
}

func enumber(i int) C.ExcelValue {
	return C.enumber(C.int(i))
}

func main() {
	p188v := p188()
	fmt.Printf("p188 = %f\n", p188v)
	for i := 1; i < 5; i++ {
		C.reset()
		C.set_control_e30(enumber(i))
		e30 := C.control_e30().number
		fmt.Printf("E30 = %f\n", e30)
		p188v := p188()
		fmt.Printf("p188 = %f\n", p188v)
	}
}
