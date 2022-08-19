undefine CGO_ENABLED

default: pass repro

pass: check-env
	go test -count=1 ./

repro: check-env
	go test -c -o ./repro.test ./
	go tool test2json -t ./repro.test -test.count=1

check-env:
	if [ -n "$$CGO_ENABLED" ]; then \
		echo "CGO_ENABLED is not empty: '$$CGO_ENABLED'"; \
		exit 42; \
	fi
