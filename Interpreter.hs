module Interpreter where

import Lexer
import Parser
import TypeChecker

subst :: String -> Expr -> Expr -> Expr
subst x n b@(Var v) =   if v == x then
                            n
                        else
                            b
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Minus e1 e2) = Minus (subst x n e1) (subst x n e2)
subst x n (Times e1 e2) = Times (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Paren e1) = (subst x n e1)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n e = e

isValue :: Expr -> Bool
isValue (Num _) = True
isValue (Var _) = True
isValue BTrue = True
isValue BFalse = True
isValue (Lam _ _ _) = True
isValue _ = False

step :: Expr -> Expr
step (App e1@(Lam x _ b) e2)  | isValue e2 = subst x e2 b
                              | otherwise = App e1 (step e2)
step (App e1 e2) = App (step e1) e2
step (Let x e1 e2)  | isValue e1 = subst x e1 e2
                              | otherwise = Let x (step e1) e2
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n1) e2) = Add (Num n1) (step e2)
step (Add e1 e2) = Add (step e1) e2
step (Minus (Num n1) (Num n2)) = Num (n1 - n2)
step (Minus (Num n1) e2) = Minus (Num n1) (step e2)
step (Minus e1 e2) = Minus (step e1) e2
step (Times (Num n1) (Num n2)) = Num (n1 * n2)
step (Times (Num n1) e2) = Times (Num n1) (step e2)
step (Times e1 e2) = Times (step e1) e2
step (And BTrue BTrue) = BTrue
step (And _ _) = BFalse
step (Or BFalse BFalse) = BFalse
step (Or _ _) = BTrue
step (If BTrue e2 e3) = e2
step (If BFalse e2 e3) = e3
step (If e1 e2 e3) = If (step e1) e2 e3
step (Paren e1) = step e1
step e = e

eval :: Expr -> Expr
eval e | isValue e = e
       | otherwise = eval (step e)