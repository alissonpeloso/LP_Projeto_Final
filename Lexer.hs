module Lexer where

import Data.Char

data Token = TokenNum Int
            | TokenVar String
            | TokenPlus
            | TokenMinus
            | TokenTimes
            | TokenLParen
            | ToknenRParen
            | TokenIf
            | TokenThen
            | TokenElse
            | TokenAnd
            | TokenOr
            | TokenTrue
            | TokenFalse
            | TokenNot
            | TokenLambda
            | TokenLet
            | TokenIn
            | TokenTypeNum
            | TokenTypeBool
            | TokenSemi
            | TokenArrow
            | TokenEqual
            | TokenLSBracket
            | TokenRSBracket
            | TokenComma
            | TokenIsNil
            | TokenHead
            | TokenTail
            | TokenTypeList
            | TokenLessThan
            | TokenGreaterThan
            | TokenEqualEqual
            | TokenGreaterEqual
            | TokenLessEqual
            | TokenNotEqual
            deriving Show 

-- Implementar função lexer abaixo

lexer :: String -> [Token]
lexer [] = []
lexer ('+':cs) = TokenPlus : lexer cs
lexer ('-':cs) = case (head cs) of
                    '>' -> TokenArrow : lexer (tail cs)
                    _ -> TokenMinus : lexer cs
lexer ('*':cs) = TokenTimes : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = ToknenRParen : lexer cs
lexer (':':cs) = TokenSemi : lexer cs
lexer ('=':cs) = case (head cs) of
                    '=' -> TokenEqualEqual : lexer (tail cs)
                    _ -> TokenEqual : lexer cs
lexer ('[':cs) = TokenLSBracket : lexer cs
lexer (']':cs) = TokenRSBracket : lexer cs
lexer (',':cs) = TokenComma : lexer cs
lexer ('<':cs) = case (head cs) of
                    '=' -> TokenLessEqual : lexer (tail cs)
                    _ -> TokenLessThan : lexer cs
lexer ('>':cs) = case (head cs) of
                    '=' -> TokenGreaterEqual : lexer (tail cs)
                    _ -> TokenGreaterThan : lexer cs
lexer ('!':cs) = case (head cs) of
                    '=' -> TokenNotEqual : lexer (tail cs)
                    _ -> error "Lexical error: caracter inválido"
lexer (c:cs)
    | isSpace c = lexer cs
    | isDigit c = lexNum (c:cs)
    | isAlpha c = lexKW (c:cs)
lexer _ = error "Lexical error: caracter inválido"


lexNum :: [Char] -> [Token]
lexNum cs = case span isDigit cs of
                    (num, rest) -> TokenNum (read num) : lexer rest

lexKW :: [Char] -> [Token]
lexKW cs = case span isAlpha cs of
                    ("if", rest) -> TokenIf : lexer rest
                    ("then", rest) -> TokenThen : lexer rest
                    ("else", rest) -> TokenElse : lexer rest
                    ("and", rest) -> TokenAnd : lexer rest
                    ("or", rest) -> TokenOr : lexer rest
                    ("not", rest) -> TokenNot : lexer rest
                    ("True", rest) -> TokenTrue : lexer rest                    
                    ("False", rest) -> TokenFalse : lexer rest
                    ("lam", rest) -> TokenLambda : lexer rest
                    ("let", rest) -> TokenLet : lexer rest
                    ("in", rest) -> TokenIn : lexer rest
                    ("Bool", rest) -> TokenTypeBool : lexer rest
                    ("Num", rest) -> TokenTypeNum : lexer rest
                    ("List", rest) -> TokenTypeList : lexer rest
                    ("isNil", rest) -> TokenIsNil : lexer rest
                    ("head", rest) -> TokenHead : lexer rest
                    ("tail", rest) -> TokenTail : lexer rest
                    (s, rest) -> TokenVar (s) : lexer rest