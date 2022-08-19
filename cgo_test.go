package reprocgodrift_test

import (
	"os"
	"testing"
)

func TestCgo(t *testing.T) {
	got := os.Getenv("CGO_ENABLED")
	want := ""
	if got != want {
		t.Errorf("Expecting CGO_ENABLED equal %#v, got %#v", want, got)
	}
}
