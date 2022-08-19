undefine CGO_ENABLED

default: pass repro

pass:
	go test -count=1 ./

repro:
	go test -c -o ./repro.test ./
	go tool test2json -t ./repro.test -test.count=1
