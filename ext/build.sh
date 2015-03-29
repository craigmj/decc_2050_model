#!/bin/bash
gcc -c -o model.o model.c
ar q libmodel.a model.o
go build 2050model.go
