#lang brag

top : (func-def | expr)*
func-def : /"fun" var /"(" vars /")" /"=" expr
/vars : [var [/"," var]*]
@expr : sum
sum : [sum ("+" | "-")] product
product : [product ("*" | "/")] value
@value : var | INT | func-app | /"(" expr /")"
func-app : var /"(" [value [/"," value]*] /")"
@var : ID