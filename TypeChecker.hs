module TypeChecker where

import Parser
import Lexer

import Data.List

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty
typeof ctx BTrue = Just TBool
typeof ctx BFalse = Just TBool
typeof ctx (Num _) = Just TNum
typeof ctx (Var v) = lookup v ctx
typeof ctx (Lam v t1 b) = let Just t2 = typeof ((v,t1):ctx) b
                            in Just (TFun t1 t2)
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                            (Just (TFun t11 t12) , Just t2) -> if (t11 == t2) then
                                                                    Just t12
                                                                else
                                                                    Nothing
                            _                               -> Nothing
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of
							(Just TNum, Just TNum) -> Just TNum
							_ -> Nothing
typeof ctx (Minus e1 e2) = case (typeof ctx e1, typeof ctx e2) of
							(Just TNum, Just TNum) -> Just TNum
							_ -> Nothing
typeof ctx (Times e1 e2) = case (typeof ctx e1, typeof ctx e2) of
							(Just TNum, Just TNum) -> Just TNum
							_ -> Nothing
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of
							(Just TBool, Just TBool) -> Just TBool
							_ -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of
							(Just TBool, Just TBool) -> Just TBool
							_ -> Nothing
typeof ctx (If e1 e2 e3) = case (typeof ctx e1) of
							Just TBool -> case (typeof ctx e2, typeof ctx e3) of 
								(Just t1, Just t2) -> if t1 == t2 then
														Just t1
													  else
														Nothing
							_ -> Nothing
typeof ctx (Let x t1 t2) = let Just t1' = typeof ctx t1
                            in typeof ((x,t1'):ctx) t2
typeof ctx (Paren e1) = typeof ctx e1
typeof ctx (Nil t1) = Just (TList t1)
typeof ctx (Const t1 e1 e2) = case (typeof ctx e1, typeof ctx e2) of
								(Just t2, Just (TList t3)) -> if t2 == t3 && t1 == t2 then
																Just (TList t1)
															else
																Nothing
								_ -> Nothing
typeof ctx (IsNil e1) = case typeof ctx e1 of
							Just (TList t1) -> Just TBool
							_ -> Nothing
typeof ctx (Head e1) = case typeof ctx e1 of
							Just (TList t1) -> Just t1
							_ -> Nothing
typeof ctx (Tail e1) = case typeof ctx e1 of
							Just (TList t1) -> Just (TList t1)
							_ -> Nothing

typecheck :: Expr -> Expr
typecheck e = case (typeof [] e) of
				Just _ -> e
				_	   -> error "Type error: erro na verificação de tipos!"