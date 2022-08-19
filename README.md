# Reproduction of CGO env forcefully set

To reproduce run makefile:

```
$ make repro
```

It should fail with following:

```
$ make repro
go test -c -o ./repro.test ./
go tool test2json -t ./repro.test -test.count=1
{"Time":"2022-08-19T12:42:13.742590288+02:00","Action":"output","Test":"TestCgo","Output":"--- FAIL: TestCgo (0.00s)\n"}
{"Time":"2022-08-19T12:42:13.743167948+02:00","Action":"output","Test":"TestCgo","Output":"    cgo_test.go:12: Expecting CGO_ENABLED equal \"\", got \"1\"\n"}
{"Time":"2022-08-19T12:42:13.743197548+02:00","Action":"fail","Test":"TestCgo","Elapsed":0}
{"Time":"2022-08-19T12:42:13.743212794+02:00","Action":"output","Output":"FAIL\n"}
{"Time":"2022-08-19T12:42:13.743499898+02:00","Action":"fail","Elapsed":0.006}
make: *** [Makefile:10: repro] Error 1
```
