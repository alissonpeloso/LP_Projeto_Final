-- Usar o happy seguindo o padrão das aulas

{
module Parser where

import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token
    num     { TokenNum $$ }
    var 	{ TokenVar $$}
    '+'     { TokenPlus }
    '='     { TokenEqual }
    '-'     { TokenMinus }
    '*'     { TokenTimes }
    '('     { TokenLParen }
    ')'     { ToknenRParen }
    if      { TokenIf }
    then    { TokenThen }
    else    { TokenElse }
    and		{ TokenAnd }
    or		{ TokenOr }
    True	{ TokenTrue }
    False	{ TokenFalse }
    lam		{ TokenLambda }
    let 	{ TokenLet }
    in		{ TokenIn }
    Num 	{ TokenTypeNum }
    Bool 	{ TokenTypeBool }
    ':' 	{ TokenSemi }
    "->" 	{ TokenArrow }
    "["		{ TokenLSBracket }
    "]"		{ TokenRSBracket }
    isNil	{ TokenIsNil }
    head	{ TokenHead }
    tail	{ TokenTail }
    List 	{ TokenTypeList }
    '<'		{ TokenLessThan }
    '>'		{ TokenGreaterThan }
    "=="	{ TokenEqualEqual }
    "!="	{ TokenNotEqual }
    "<="	{ TokenLessEqual }
    ">="	{ TokenGreaterEqual }
    not 	{ TokenNot }

%nonassoc if then else
%left '<' '>' "<=" '>='
%left '+' '-'
%left '*'

%%

Exp     : num           					{ Num $1 }
        | var           					{ Var $1 }
        | Exp '+' Exp   					{ Add $1 $3 }
        | Exp '-' Exp   					{ Minus $1 $3 }
        | Exp '*' Exp  						{ Times $1 $3  }
        | '(' Exp ')'   					{ Paren $2 }
        | if Exp then Exp else Exp 			{ If $2 $4 $6 } 
        | Exp and Exp   					{ And $1 $3 }
        | Exp or Exp   						{ Or $1 $3 }
        | True								{ BTrue }
        | False								{ BFalse }
        | Exp Exp          					{ App $1 $2 }
        | let var '=' Exp in Exp 			{ Let $2 $4 $6 }
        | List '<'Type'>' "[" "]"			{ Nil  $3 }
        | List '<'Type'>' Exp ':' "[" "]"	{ Cons $3 $5 (Nil  $3) }
        | List '<'Type'>' Exp ':' Exp		{ Cons $3 $5 $7 }
        | '(' lam var ':' Type "->" Exp ')'	{ Lam $3 $5 $7 }
        | isNil Exp							{ IsNil $2 }
        | head Exp 							{ Head $2 }
        | tail Exp 							{ Tail $2 }
        | not Exp 							{ Not $2 }
        | Exp "==" Exp 						{ Equal $1 $3 }
        | Exp "!=" Exp 						{ NotEqual $1 $3 }
        | Exp "<=" Exp 						{ LessEqualThan $1 $3 }
        | Exp ">=" Exp 						{ GreaterEqualThan $1 $3 }
        | Exp '<' Exp 						{ LessThan $1 $3 }
        | Exp '>' Exp 						{ GreaterThan $1 $3 }


Type     : Num           	{ TNum }
        | Bool           	{ TBool }
        | Type "->" Type   	{ TFun $1 $3 }
        | List '<'Type'>' 	{ TList $3 }

{

data Ty = TBool
        | TNum
        | TFun Ty Ty
        | TList Ty
        deriving (Eq)

data Expr = Num Int
          | Var String
          | Add Expr Expr
          | Minus Expr Expr
          | Times Expr Expr
          | Paren Expr
          | If Expr Expr Expr
          | And Expr Expr
          | Or Expr Expr
          | Not Expr
          | Equal Expr Expr
          | NotEqual Expr Expr
          | GreaterThan Expr Expr
          | LessThan Expr Expr
          | GreaterEqualThan Expr Expr
          | LessEqualThan Expr Expr
          | BTrue
          | BFalse
          | Lam String Ty Expr
          | App Expr Expr
          | Let String Expr Expr
          | Nil Ty
          | Cons Ty Expr Expr
          | IsNil Expr
          | Head Expr
          | Tail Expr
          | List Ty
          deriving (Eq)

        --   deriving Show

parseError :: [Token] -> a
parseError _ = error "Syntax Error!"

instance Show Expr where
    show (BTrue) = "True"
    show (BFalse) = "False"
    show (Num n) = show n
    show (Var x) = x
    show (Let v t1 t2) = v ++ "=" ++ show t1 ++ " in " ++ show t2
    show (If t1 t2 t3) = "if " ++ show t1 ++ " then " ++ show t2 ++ " else " ++ show t3
    show (Add t1 t2) = show t1 ++ " + " ++ show t2
    show (Minus t1 t2) = show t1 ++ " - " ++ show t2
    show (Times t1 t2) = show t1 ++ " * " ++ show t2
    show (And t1 t2) = show t1 ++ " and " ++ show t2
    show (Or t1 t2) = show t1 ++ " or " ++ show t2
    show (Paren t1) = " ( " ++ show t1 ++ " ) "
    show (Lam v t1 t2) = " ( lam " ++ v ++ ":" ++ show t1 ++ " -> " ++ show t2 ++ " ) "
    show (App t1 t2) =   show t1 ++ " " ++ show t2
    show (Nil t1 ) = " [] "
    show (Cons t1 e1 e2) ="List<" ++ show t1 ++ "> " ++ show e1 ++ " : " ++ show e2	
    show (IsNil t1 ) = show t1
    show (Head t1 ) = show t1
    show (Tail t1 ) = show t1
    show (Not e1) = "not " ++ show e1
    show (Equal e1 e2) = show e1 ++ " == " ++ show e2
    show (NotEqual e1 e2) = show e1 ++ " != " ++ show e2
    show (LessEqualThan e1 e2) = show e1 ++ " <= " ++ show e2
    show (GreaterEqualThan e1 e2) = show e1 ++ " >= " ++ show e2
    show (LessThan e1 e2) = show e1 ++ " < " ++ show e2
    show (GreaterThan e1 e2) = show e1 ++ " > " ++ show e2

instance Show Ty where
    show (TBool) = "Bool"
    show (TNum) = "Num"
    show (TFun t1 t2) = show t1 ++ " -> " ++ show t2
    show (TList t1) = "List<" ++ show t1 ++ ">"
}