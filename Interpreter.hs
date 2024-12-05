module Interpreter where 

import Lexer 

isValue :: Expr -> Bool
isValue BTrue = True 
isValue BFalse = True 
isValue (Num _) = True 
isValue (Lam _ _ _) = True
isValue Nil = True
isValue (Cons e1 e2) =  if (isValue e1) && (isValue e2) then
                          True
                        else
                          False
isValue _ = False 

---------------------------------------------------     
-- Função: subst
-- Parâmetros: Variável (Parâmetro formal), 
--             Expressão (Parâmetro atual), 
--             Corpo da função
-- Retorno: Corpo da função substituído
---------------------------------------------------       
subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 
subst x n (Add e1 e2) = (Add (subst x n e1) (subst x n e2))
subst x n (Sub e1 e2) = (Sub (subst x n e1) (subst x n e2))
subst x n (Mul e1 e2) = (Mul (subst x n e1) (subst x n e2))
subst x n (Div e1 e2) = (Div (subst x n e1) (subst x n e2))
subst x n (And e1 e2) = (And (subst x n e1) (subst x n e2))
subst x n (Eq e1 e2) = (Eq (subst x n e1) (subst x n e2))
subst x n (Or e1 e2) = (Or (subst x n e1) (subst x n e2))
subst x n (Dif e1 e2) = (Dif (subst x n e1) (subst x n e2))
subst x n (LsT e1 e2) = (LsT (subst x n e1) (subst x n e2))
subst x n (GrT e1 e2) = (GrT (subst x n e1) (subst x n e2))
subst x n (If e e1 e2) = (If (subst x n e) (subst x n e1) (subst x n e2))
subst x n (Lam v t b) = (Lam v t (subst x n b))
subst x n (App e1 e2) = (App (subst x n e1) (subst x n e2))
subst x n (Cons e1 e2) = (Cons (subst x n e1) (subst x n e2))
subst x n (IsNil e) = (IsNil (subst x n e))
subst x n (Head e) = (Head (subst x n e))
subst x n (Tail e) = (Tail (subst x n e))
subst _ _ e = e

---------------------------------------------------     
-- Função: step
-- Parâmetros: Expressão (Parâmetro formal), 
-- Retorno: Expressão
---------------------------------------------------     

step :: Expr -> Expr 
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num nv) e2) = let e2' = step e2 
                           in Add (Num nv) e2' 
step (Add e1 e2) = Add (step e1) e2 
-- Adicionado o step da subtração
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num nv) e2) = let e2' = step e2 
                           in Sub (Num nv) e2' 
step (Sub e1 e2) = Sub (step e1) e2   
-- Adicionado o step da multiplicação
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num nv) e2) = let e2' = step e2 
                           in Mul (Num nv) e2' 
step (Mul e1 e2) = Mul (step e1) e2     
-- Adicionado o step da divisão
step (Div (Num n1) (Num n2)) = Num (n1 / n2)
step (Div (Num nv) e2) = let e2' = step e2 
                           in Div (Num nv) e2' 
step (Div e1 e2) = Div (step e1) e2
-- Steps de operadores relacionais    
-- And           
step (And BFalse e) = BFalse 
step (And BTrue e) = e 
step (And e1 e2) = And (step e1) e2 
-- Or
step (Or BTrue e) = BTrue 
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2 
-- Equal
step (Eq e1 e2) | isValue e1 && isValue e2 = if (e1 == e2) then 
                                               BTrue 
                                             else 
                                               BFalse
                | isValue e1 = Eq e1 (step e2)
                | otherwise = Eq (step e1) e2
step (Dif e1 e2) | isValue e1 && isValue e2 = if (e1 /= e2) then 
                                               BTrue 
                                             else 
                                               BFalse
                 | isValue e1 = Dif e1 (step e2)
                 | otherwise = Dif (step e1) e2
-- Less than
step (LsT (Num n1) (Num n2)) = if (n1 < n2) then 
                                  BTrue 
                               else 
                                  BFalse
step (LsT (Num n1) e2) = let e2' = step e2
                          in LsT (Num n1) e2'
step (LsT e1 e2) = LsT (step e1) e2
-- Greater than
step (GrT (Num n1) (Num n2)) = if (n1 > n2) then 
                                  BTrue 
                               else 
                                  BFalse
step (GrT (Num n1) e2) = let e2' = step e2
                          in GrT (Num n1) e2'
step (GrT e1 e2) = GrT (step e1) e2
-- Less os Equal
step (LoE (Num n1) (Num n2)) = if (n1 <= n2) then 
                                  BTrue 
                               else 
                                  BFalse
step (LoE (Num n1) e2) = let e2' = step e2
                          in LoE (Num n1) e2'
step (LoE e1 e2) = LoE (step e1) e2
-- Greater Or Equal
step (GoE (Num n1) (Num n2)) = if (n1 >= n2) then 
                                  BTrue 
                               else 
                                  BFalse
step (GoE (Num n1) e2) = let e2' = step e2
                          in GoE (Num n1) e2'
step (GoE e1 e2) = GoE (step e1) e2
-- If
step (If BTrue e1 e2) = e1 
step (If BFalse e1 e2) = e2 
step (If e e1 e2) = If (step e) e1 e2
-- Steps relacionados a funções 
step (App (Lam v t b) e) | isValue e = subst v e b 
                         | otherwise = (App (Lam v t b) (step e))
step (App e1 e2) = App (step e1) e2 
-- Lista
step (Cons e1 e2) | not(isValue e2) = Cons e1 (step e2)
                  | not(isValue e1) = Cons (step e1) e2
                  | otherwise = Cons e1 e2 
-- Head
step (Head (Cons e1 _)) = e1
step (Head e1) = Head (step e1)
-- Tail
step (Tail (Cons _ e2)) = e2
step (Tail e1) = Tail (step e1)
-- IsNil -> verificar se a lista é nula
step (IsNil Nil) = BTrue
step (IsNil (Cons _ _)) = BFalse
step (IsNil e1) = IsNil (step e1)
{-
step (IsNil e1) = if (step (Head e1)) == Nil then -- Não sei se essa lógica tá certa, verifico primeiramente se
                    BTrue                         -- O valor em si é nulo (acima), e depois se o head é nulo
                  else
                    BFalse
-}
eval :: Expr -> Expr 
eval e | isValue e = e 
       | otherwise = eval (step e)
