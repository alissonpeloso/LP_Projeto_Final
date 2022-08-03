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
	','		{ TokenComma }

%nonassoc if then else
%left '+' '-'
%left '*'

%%

Exp     : num           					{ Num $1 }
		| var           					{ Var $1 }
        | Exp '+' Exp   					{ Add $1 $3 }
        | Exp '-' Exp   					{ Minus $1 $3 }
        | Exp '*' Exp  						{ Times $1 $3  }
		| '(' lam var ':' Type "->" Exp ')'	{ Lam $3 $5 $7 }
        | '(' Exp ')'   					{ Paren $2 }
        | if Exp then Exp else Exp 			{ If $2 $4 $6 } 
        | Exp and Exp   					{ And $1 $3 }
        | Exp or Exp   						{ Or $1 $3 }
		| True								{ BTrue }
		| False								{ BFalse }
		| Exp Exp          					{ App $1 $2 }
		| let var '=' Exp in Exp 			{ Let $2 $4 $6 }
		| Type "->" "[" "]"					{ Nil $1 }
		| Type "->" Exp ':' "[" "]"			{ Const $1 $3 (Nil $1) }
		| Type "->" Exp ':' Exp				{ Const $1 $3 $5 }
		-- | Type "->" "[" ValueList "]"		{ Teste $1 $4 }
		| isNil Exp							{ IsNil $2 }
		| head Exp 							{ Head $2 }
		| tail Exp 							{ Tail $2 }

Type     : Num           	{ TNum }
		| Bool           	{ TBool }
		| Type "->" Type   	{ TFun $1 $3 }
		| List Type 		{ TList $2 }


-- ValueList	: Exp ',' Exp		{ VList $1 $3 }
-- 		   | Exp ',' ValueList  { VList $1 $3 }
{

data Ty = TBool
		| TNum
		| TFun Ty Ty
		| TList Ty
		deriving (Show, Eq)

-- data VList = VList Expr Expr

data Expr = Num Int
		  | Var String
          | Add Expr Expr
          | Minus Expr Expr
          | Times Expr Expr
          | Paren Expr
          | If Expr Expr Expr
		  | And Expr Expr
		  | Or Expr Expr
		  | BTrue
		  | BFalse
		  | Lam String Ty Expr
		  | App Expr Expr
		  | Let String Expr Expr
		  | Nil Ty
		  | Const Ty Expr Expr
		  | IsNil Expr
		  | Head Expr
		  | Tail Expr
		--   | Teste Ty String
          deriving Show

parseError :: [Token] -> a
parseError _ = error "Syntax Error!"

}