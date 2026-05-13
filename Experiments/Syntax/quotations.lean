-- set_option diagnostics true

#check ``Nat.succ

def var : Int := 4

#eval var

#print Lean.Name
#print Lean.Name.num

#check Lean.Name.num `crap 4

def newthing := Lean.Name.num `crap 10

#eval newthing
#check newthing
#print newthing

-- #eval crap

#check ``Nat.succ

-- #eval ``(Nat.succ 3)

#check Lean.TSyntax ``Nat

#print Lean.SyntaxNodeKind
#print Lean.SyntaxNodeKinds
#print Lean.Syntax.node

#print Lean.Syntax

#eval repr ``Nat.succ
#eval repr (Nat.succ 4)

-- Syntax

declare_syntax_cat mystr
syntax "mystring" str : mystr

macro_rules
| `(mystr| mystring $st) => do `(command| #eval $st)

syntax "MyTerm" : term

#check `(term| MyTerm)


declare_syntax_cat toy
syntax "hello" : toy

#check `(toy| hello)


declare_syntax_cat my_clause
declare_syntax_cat my_long_clause

#check Lean.Parser.Category.my_clause

syntax "variable" term : my_clause
syntax "variable" ident ":" term "=" term  : my_long_clause




macro_rules
| `(my_clause| variable $term) => do `(command| #print $term)

















/-
- At any point, there is only one value of the type Lean.Syntax which represents the CST of the entire file after the parser has done its job?
-

-/
