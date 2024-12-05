{
module Parser where 

import Lexer
}

%name parser 
%tokentype { Token }
%error { parseError } 

%token 
  true          { TokenTrue }
  false         { TokenFalse }
  num           { TokenNum $$ }
  '+'           { TokenAdd }
  '-'           { TokenSub }
  '*'           { TokenMul }
  '/'           { TokenDiv }
  and           { TokenAnd }
  or            { TokenOr}
  "=="          { TokenEq }
  "!="          { TokenDif }
  '<'           { TokenLess }
  '>'           { TokenGreater }
  "<="          { TokenLsEq }
  ">="          { TokenGrEq }
  if            { TokenIf }
  then          { TokenThen }
  else          { TokenElse }
  cons          { TokenCons }
  nil           { TokenNil }
  isnil         { TokenIsNil }
  head          { TokenHead }
  tail          { TokenTail }
  '['           { TokenLBracket }
  ']'           { TokenRBracket }
  ','           { TokenComma }

%nonassoc if then else cons nil
%nonassoc isnil head tail
%left or
%left and
%nonassoc "==" "!=" '<' '>' "<=" ">="
%left '+' '-'
%left '*' '/'

%% 

Exp : true                        { BTrue }
    | false                       { BFalse }
    | num                         { Num $1 }
    | Exp '+' Exp                 { Add $1 $3 }
    | Exp '-' Exp                 { Sub $1 $3 }
    | Exp '*' Exp                 { Mul $1 $3 }
    | Exp '/' Exp                 { Div $1 $3 }
    | Exp and Exp                 { And $1 $3 }
    | Exp or Exp                  { Or $1 $3 }
    | Exp "==" Exp                { Eq $1 $3 }
    | Exp "!=" Exp                { Dif $1 $3 }
    | Exp '<' Exp                 { LsT $1 $3 }
    | Exp '>' Exp                 { GrT $1 $3 }
    | Exp "<=" Exp                { LoE $1 $3 }
    | Exp ">=" Exp                { GoE $1 $3 }
    | if Exp then Exp else Exp    { If $2 $4 $6 }
    | cons Exp Exp                { Cons $2 $3 }
    | nil                         { Nil }
    | isnil Exp                   { IsNil $2 }
    | head Exp                    { Head $2 }
    | tail Exp                    { Tail $2 }
    | '[' ']'                     { Nil }
    | '[' List ']'                { $2 }

List : Exp          { Cons $1 Nil }
     | Exp ',' List { Cons $1 $3 }

{
parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
}