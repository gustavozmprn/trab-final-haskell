module TypeChecker where 

import Lexer 

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof _ (Num _) = Just TNum 
typeof _ BTrue = Just TBool
typeof _ BFalse = Just TBool
typeof _ Nil = Just (TList Wildcard)
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 
typeof ctx (Div e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TNum, Just TNum) -> Just TNum
                           _ -> Nothing 
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool
                           _ -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just TBool, Just TBool) -> Just TBool
                           _ -> Nothing
typeof ctx (Eq e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) | t1 == t2 -> Just TBool 
                                             | otherwise -> Nothing 
                          _ -> Nothing
typeof ctx (Dif e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just t1, Just t2) | t1 == t2 -> Just TBool 
                                             | otherwise -> Nothing 
                          _ -> Nothing
typeof ctx (LsT e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing
typeof ctx (GrT e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing
typeof ctx (LoE e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing
typeof ctx (GoE e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                          (Just TNum, Just TNum) -> Just TBool
                          _ -> Nothing
typeof ctx (If e e1 e2) = case typeof ctx e of 
                            Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                                            (Just t1, Just t2) | t1 == t2 -> Just t1 
                                                               | otherwise -> Nothing
                                            _ -> Nothing
                            _ -> Nothing
typeof ctx (Var v) = lookup v ctx 
typeof ctx (Lam v t1 b) = let Just t2 = typeof ((v, t1) : ctx) b 
                            in Just (TFun t1 t2)
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                           (Just (TFun t11 t12), Just t2) | t11 == t2 -> Just t12 
                                                          | otherwise -> Nothing 
                           _ -> Nothing
typeof ctx (Cons e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                            (Just t1, Just (TList t2)) | t2 == Wildcard -> Just (TList t1) -- Wildcard sepa funciona
                                                       | t1 == t2 -> Just (TList t1)
                            _ -> Nothing
typeof ctx (IsNil e1) = case (typeof ctx e1) of
                          (Just (TList _)) -> Just TBool    -- Nil retorna TList Wildcard
                          _ -> Nothing
typeof ctx (Tail e1) = case (typeof ctx e1) of
                          (Just (TList t1)) -> Just (TList t1)
                          _ -> Nothing
typeof ctx (Head e1) = case (typeof ctx e1) of
                          (Just (TList t1)) -> Just t1
                          _ -> Nothing
typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                (Just _) -> e 
                _        -> error ("Erro verificando tipo da expressão: " ++ show e)