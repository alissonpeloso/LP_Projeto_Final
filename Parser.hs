{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,210) ([10336,44,2,0,0,60928,754,0,0,49798,24579,11304,0,0,0,0,4,0,1,60928,758,16096,47,4,0,0,34304,706,10336,44,49798,24578,11304,34304,706,0,0,0,0,0,16384,0,1024,0,0,32,0,34304,706,10336,44,62190,57350,12206,0,6144,0,1024,0,0,0,34304,706,10336,44,0,32768,6,34304,6850,16096,47,0,0,32768,1,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","var","'+'","'='","'-'","'*'","'('","')'","if","then","else","and","or","True","False","lam","let","in","Num","Bool","':'","\"->\"","%eof"]
        bit_start = st * 28
        bit_end = (st + 1) * 28
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..27]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (14) = happyShift action_6
action_0 (19) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (22) = happyShift action_9
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_15
action_3 (10) = happyShift action_16
action_3 (11) = happyShift action_17
action_3 (12) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (17) = happyShift action_18
action_3 (18) = happyShift action_19
action_3 (19) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (28) = happyAccept
action_3 (4) = happyGoto action_14
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (6) = happyShift action_2
action_5 (7) = happyShift action_4
action_5 (12) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (19) = happyShift action_7
action_5 (20) = happyShift action_8
action_5 (21) = happyShift action_13
action_5 (22) = happyShift action_9
action_5 (4) = happyGoto action_12
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (19) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (4) = happyGoto action_11
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_11

action_8 _ = happyReduce_12

action_9 (7) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (9) = happyShift action_28
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_15
action_11 (10) = happyShift action_16
action_11 (11) = happyShift action_17
action_11 (12) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (15) = happyShift action_27
action_11 (17) = happyShift action_18
action_11 (18) = happyShift action_19
action_11 (19) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (22) = happyShift action_9
action_11 (4) = happyGoto action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_15
action_12 (10) = happyShift action_16
action_12 (11) = happyShift action_17
action_12 (12) = happyShift action_5
action_12 (13) = happyShift action_26
action_12 (14) = happyShift action_6
action_12 (17) = happyShift action_18
action_12 (18) = happyShift action_19
action_12 (19) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (4) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (7) = happyShift action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (8) = happyShift action_15
action_14 (10) = happyShift action_16
action_14 (11) = happyShift action_17
action_14 (12) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (17) = happyShift action_18
action_14 (18) = happyShift action_19
action_14 (19) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (4) = happyGoto action_14
action_14 _ = happyReduce_13

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (19) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (4) = happyGoto action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (14) = happyShift action_6
action_16 (19) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (22) = happyShift action_9
action_16 (4) = happyGoto action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (19) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (4) = happyGoto action_22
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (19) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (4) = happyGoto action_21
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (19) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_15
action_20 (10) = happyShift action_16
action_20 (11) = happyShift action_17
action_20 (12) = happyShift action_5
action_20 (14) = happyShift action_6
action_20 (17) = happyShift action_18
action_20 (18) = happyShift action_19
action_20 (19) = happyShift action_7
action_20 (20) = happyShift action_8
action_20 (22) = happyShift action_9
action_20 (4) = happyGoto action_14
action_20 _ = happyReduce_10

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_15
action_21 (10) = happyShift action_16
action_21 (11) = happyShift action_17
action_21 (12) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (17) = happyShift action_18
action_21 (18) = happyShift action_19
action_21 (19) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (4) = happyGoto action_14
action_21 _ = happyReduce_9

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (17) = happyShift action_18
action_22 (18) = happyShift action_19
action_22 (19) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (4) = happyGoto action_14
action_22 _ = happyReduce_5

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (11) = happyShift action_17
action_23 (12) = happyShift action_5
action_23 (17) = happyShift action_18
action_23 (18) = happyShift action_19
action_23 (19) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (22) = happyShift action_9
action_23 (4) = happyGoto action_14
action_23 _ = happyReduce_4

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (11) = happyShift action_17
action_24 (12) = happyShift action_5
action_24 (17) = happyShift action_18
action_24 (18) = happyShift action_19
action_24 (19) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (4) = happyGoto action_14
action_24 _ = happyReduce_3

action_25 (26) = happyShift action_31
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_7

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (19) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_15
action_29 (10) = happyShift action_16
action_29 (11) = happyShift action_17
action_29 (12) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (17) = happyShift action_18
action_29 (18) = happyShift action_19
action_29 (19) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (23) = happyShift action_36
action_29 (4) = happyGoto action_14
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_15
action_30 (10) = happyShift action_16
action_30 (11) = happyShift action_17
action_30 (12) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (16) = happyShift action_35
action_30 (17) = happyShift action_18
action_30 (18) = happyShift action_19
action_30 (19) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (4) = happyGoto action_14
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_33
action_31 (25) = happyShift action_34
action_31 (5) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (27) = happyShift action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_15

action_34 _ = happyReduce_16

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (4) = happyGoto action_38
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (19) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (4) = happyGoto action_37
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_15
action_37 (10) = happyShift action_16
action_37 (11) = happyShift action_17
action_37 (12) = happyShift action_5
action_37 (14) = happyShift action_6
action_37 (17) = happyShift action_18
action_37 (18) = happyShift action_19
action_37 (19) = happyShift action_7
action_37 (20) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (4) = happyGoto action_14
action_37 _ = happyReduce_14

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_15
action_38 (10) = happyShift action_16
action_38 (11) = happyShift action_17
action_38 (12) = happyShift action_5
action_38 (14) = happyFail []
action_38 (17) = happyShift action_18
action_38 (18) = happyShift action_19
action_38 (19) = happyShift action_7
action_38 (20) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (4) = happyGoto action_14
action_38 _ = happyReduce_8

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (19) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (24) = happyShift action_33
action_39 (25) = happyShift action_34
action_39 (4) = happyGoto action_40
action_39 (5) = happyGoto action_41
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_15
action_40 (10) = happyShift action_16
action_40 (11) = happyShift action_17
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_43
action_40 (14) = happyShift action_6
action_40 (17) = happyShift action_18
action_40 (18) = happyShift action_19
action_40 (19) = happyShift action_7
action_40 (20) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (4) = happyGoto action_14
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (27) = happyShift action_42
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (24) = happyShift action_33
action_42 (25) = happyShift action_34
action_42 (5) = happyGoto action_41
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_6

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Times happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 8 4 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 6 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  5 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_16 = happySpecReduce_1  5 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 28 28 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenVar happy_dollar_dollar -> cont 7;
	TokenPlus -> cont 8;
	TokenEqual -> cont 9;
	TokenMinus -> cont 10;
	TokenTimes -> cont 11;
	TokenLParen -> cont 12;
	ToknenRParen -> cont 13;
	TokenIf -> cont 14;
	TokenThen -> cont 15;
	TokenElse -> cont 16;
	TokenAnd -> cont 17;
	TokenOr -> cont 18;
	TokenTrue -> cont 19;
	TokenFalse -> cont 20;
	TokenLambda -> cont 21;
	TokenLet -> cont 22;
	TokenIn -> cont 23;
	TokenTypeNum -> cont 24;
	TokenTypeBool -> cont 25;
	TokenSemi -> cont 26;
	TokenArrow -> cont 27;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 28 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data Ty = TBool
		| TNum
		| TFun Ty Ty
		deriving (Show, Eq)

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
          deriving Show

parseError :: [Token] -> a
parseError _ = error "Syntax Error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
