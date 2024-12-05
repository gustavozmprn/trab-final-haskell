module Lexer where 

import Data.Char

data Expr = BTrue 
          | BFalse 
          | Num Float 
          | Add Expr Expr 
          | Sub Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | And Expr Expr 
          | Or Expr Expr
          | Eq Expr Expr
          | Dif Expr Expr
          | LsT Expr Expr -- Less than
          | GrT Expr Expr -- Greater than
          | LoE Expr Expr -- Less or equal
          | GoE Expr Expr -- Greater or equal
          | If Expr Expr Expr 
          | Var String 
          | Lam String Ty Expr 
          | App Expr Expr
          | Nil          -- Expr para implementação de listas
          | Cons Expr Expr
          | IsNil Expr
          | Head Expr
          | Tail Expr
          deriving (Show, Eq)

data Ty = TBool 
        | TNum 
        | TFun Ty Ty 
        | TList Ty
        | Wildcard
        deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse 
           | TokenNum Float 
           | TokenAdd 
           | TokenSub
           | TokenMul
           | TokenDiv
           | TokenAnd 
           | TokenOr
           | TokenEq
           | TokenDif
           | TokenLess
           | TokenGreater
           | TokenLsEq
           | TokenGrEq
           | TokenIf
           | TokenThen
           | TokenElse 
           | TokenVar String
           | TokenLam 
           | TokenArrow 
           | TokenCons
           | TokenNil
           | TokenHead
           | TokenIsNil
           | TokenTail
           | TokenLBracket
           | TokenRBracket
           | TokenComma
           deriving Show

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('*':cs) = TokenMul : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs 
lexer ('<':'=':cs) = TokenLsEq : lexer cs 
lexer ('<':cs) = TokenLess : lexer cs 
lexer ('>':'=':cs) = TokenGrEq : lexer cs 
lexer ('>':cs) = TokenGreater : lexer cs 
lexer ('=':'=':cs) = TokenEq : lexer cs 
lexer ('!':'=':cs) = TokenDif : lexer cs 
lexer ('-':'>':cs) = TokenArrow : lexer cs 
lexer ('-':cs) = TokenSub : lexer cs 
lexer ('[':cs) = TokenLBracket : lexer cs
lexer (']':cs) = TokenRBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer (c:cs) 
   | isSpace c = lexer cs 
   | isAlpha c = lexerKW (c:cs) 
   | isDigit c = lexerNum (c:cs)

lexerNum :: String -> [Token]
lexerNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexer rest

lexerKW :: String -> [Token]
lexerKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexer rest 
               ("false", rest) -> TokenFalse : lexer rest 
               ("and", rest) -> TokenAnd : lexer rest 
               ("or", rest) -> TokenOr: lexer rest
               ("if", rest) -> TokenIf : lexer rest 
               ("then", rest) -> TokenThen : lexer rest 
               ("else", rest) -> TokenElse : lexer rest 
               ("cons", rest) -> TokenCons : lexer rest
               ("isnil", rest) -> TokenIsNil : lexer rest
               ("nil", rest) -> TokenNil : lexer rest
               ("head", rest) -> TokenHead : lexer rest
               ("tail", rest) -> TokenTail : lexer rest
               (var, rest) -> TokenVar var : lexer rest


{-
lexerList :: String -> [Token]
lexerList (']' : cs) = TokenNil : lexer cs
lexerList (',' : cs) = lexerList cs
lexerList (c:cs) 
   | isSpace c = lexerList cs 
   | isAlpha c = TokenCons : lexerListKW (c:cs) 
   | isDigit c = TokenCons : lexerListNum (c:cs)

lexerListNum :: String -> [Token]
lexerListNum cs = case span isDigit cs of 
                (num, rest) -> TokenNum (read num) : lexerList rest

lexerListKW :: String -> [Token]
lexerListKW cs = case span isAlpha cs of 
               ("true", rest) -> TokenTrue : lexerList rest 
               ("false", rest) -> TokenFalse : lexerList rest 
               ("and", rest) -> TokenAnd : lexerList rest 
               ("or", rest) -> TokenOr: lexerList rest
               ("isnil", rest) -> TokenIsNil : lexerList rest
               ("nil", rest) -> TokenNil : lexerList rest
               ("head", rest) -> TokenHead : lexerList rest
               ("tail", rest) -> TokenTail : lexerList rest
               (var, rest) -> TokenVar var : lexerList rest
-}
