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
subst x n (Not e1 ) = Not (subst x n e1)
subst x n (Equal e1 e2) = Equal (subst x n e1) (subst x n e2)
subst x n (NotEqual e1 e2) = NotEqual (subst x n e1) (subst x n e2)
subst x n (GreaterThan e1 e2) = GreaterThan (subst x n e1) (subst x n e2)
subst x n (LessThan e1 e2) = LessThan (subst x n e1) (subst x n e2)
subst x n (GreaterEqualThan e1 e2) = GreaterEqualThan (subst x n e1) (subst x n e2)
subst x n (LessEqualThan e1 e2) = LessEqualThan (subst x n e1) (subst x n e2)
subst x n (Paren e1) = (subst x n e1)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (If e1 e2 e3) = If (subst x n e1) (subst x n e2) (subst x n e3)
subst x n (Cons t1 e1 e2) = Cons t1 (subst x n e1) (subst x n e2)
subst x n (Head e1) = Head (subst x n e1)
subst x n (Tail e1) = Tail (subst x n e1)
subst x n (IsNil e1) = IsNil (subst x n e1)
subst x n e = e

isValue :: Expr -> Bool
isValue (Num _) = True
isValue (Var _) = True
isValue BTrue = True
isValue BFalse = True
isValue (Lam _ _ _) = True
isValue (Nil _) = True
isValue (Cons _ _ _) = True
isValue _ = False

isBool :: Expr -> Bool
isBool BTrue = True
isBool BFalse = True
isBool _ = False

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
step (Not BFalse) = BTrue
step (Not BTrue) = BFalse
step (Not e1) = Not (step e1)
step (Equal (Num n1) (Num n2)) | n1 == n2 = BTrue
                               | otherwise = BFalse
step (Equal (Num n1) e2) = Equal (Num n1) (step e2)
step (Equal e1 e2) | isBool e1 && isBool e2 = if e1 == e2 then BTrue else BFalse
                   | isBool e1 = Equal e1 (step e2)
                   | otherwise = Equal (step e1) e2
step (NotEqual (Num n1) (Num n2)) | n1 /= n2 = BTrue
                                  | otherwise = BFalse
step (NotEqual (Num n1) e2) = NotEqual (Num n1) (step e2)
step (NotEqual e1 e2) | isBool e1 && isBool e2 = if e1 /= e2 then BTrue else BFalse
                      | isBool e1 = NotEqual e1 (step e2)
                         | otherwise = NotEqual (step e1) e2
step (GreaterEqualThan (Num n1) (Num n2)) | n1 >= n2 = BTrue
                                             | otherwise = BFalse
step (GreaterEqualThan (Num n1) e2) = GreaterEqualThan (Num n1) (step e2)
step (GreaterEqualThan e1 e2) = GreaterEqualThan (step e1) e2
step (LessEqualThan (Num n1) (Num n2)) | n1 <= n2 = BTrue
                                          | otherwise = BFalse
step (LessEqualThan (Num n1) e2) = LessEqualThan (Num n1) (step e2)
step (LessEqualThan e1 e2) = LessEqualThan (step e1) e2
step (LessThan (Num n1) (Num n2)) | n1 < n2 = BTrue
                                  | otherwise = BFalse
step (LessThan (Num n1) e2) = LessThan (Num n1) (step e2)
step (LessThan e1 e2) = LessThan (step e1) e2
step (GreaterThan (Num n1) (Num n2)) | n1 > n2 = BTrue
                                     | otherwise = BFalse
step (GreaterThan (Num n1) e2) = GreaterThan (Num n1) (step e2)
step (GreaterThan e1 e2) = GreaterThan (step e1) e2
step (If BTrue e2 e3) = e2
step (If BFalse e2 e3) = e3
step (If e1 e2 e3) = If (step e1) e2 e3
step (Paren e1) = step e1
step (Cons t1 e1 e2) | isValue e1 = Cons t1 e1 (step e2)
                     | otherwise = Cons t1 (step e1) e2 
step (IsNil (Nil t1)) = BTrue 
step (IsNil (Cons _ v1 v2)) = BFalse
step (IsNil t1) = IsNil (step t1) 
step (Head (Nil t1)) = error "Lista vazia"
step (Head (Cons _ v1 v2)) = v1
step (Head t1) = Head (step t1)
step (Tail (Nil t1)) = error "Lista vazia"
step (Tail (Cons _ v1 v2)) = v2
step (Tail t1) = Tail (step t1)
step e = e

eval :: Expr -> Expr
eval e | isValue e = e
       | otherwise = eval (step e)