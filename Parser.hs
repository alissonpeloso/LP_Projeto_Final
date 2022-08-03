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
happyExpList = Happy_Data_Array.listArray (0,407) ([10336,57772,257,0,0,0,49152,24157,963,0,64,0,0,41344,34544,3079,13701,60,0,0,0,0,16,0,0,0,0,0,12288,54804,33008,45217,1926,34060,15413,0,384,1,0,0,0,0,0,0,0,0,128,0,48000,34493,56327,13799,16444,0,0,24899,3917,0,0,20672,50008,34307,6850,12318,54804,33008,45217,1926,34060,15413,0,0,0,0,0,0,0,8,0,64,0,38768,61911,0,0,0,0,2,0,2,0,0,2584,30827,20672,50008,3,6144,16,0,32768,48315,1927,62940,15413,0,384,1,0,6144,27402,122,0,0,0,256,0,512,41344,34480,3079,13701,60,0,0,52,0,2584,30827,0,0,60928,6899,30,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","var","'+'","'='","'-'","'*'","'('","')'","if","then","else","and","or","True","False","lam","let","in","Num","Bool","':'","\"->\"","\"[\"","\"]\"","isNil","head","tail","List","','","%eof"]
        bit_start = st * 35
        bit_end = (st + 1) * 35
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..34]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_5
action_0 (12) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (24) = happyShift action_11
action_0 (25) = happyShift action_12
action_0 (30) = happyShift action_13
action_0 (31) = happyShift action_14
action_0 (32) = happyShift action_15
action_0 (33) = happyShift action_16
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_27
action_3 (10) = happyShift action_28
action_3 (11) = happyShift action_29
action_3 (12) = happyShift action_6
action_3 (14) = happyShift action_7
action_3 (17) = happyShift action_30
action_3 (18) = happyShift action_31
action_3 (19) = happyShift action_8
action_3 (20) = happyShift action_9
action_3 (22) = happyShift action_10
action_3 (24) = happyShift action_11
action_3 (25) = happyShift action_12
action_3 (30) = happyShift action_13
action_3 (31) = happyShift action_14
action_3 (32) = happyShift action_15
action_3 (33) = happyShift action_16
action_3 (35) = happyAccept
action_3 (4) = happyGoto action_26
action_3 (5) = happyGoto action_4
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (27) = happyShift action_25
action_4 _ = happyFail (happyExpListPerState 4)

action_5 _ = happyReduce_2

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_5
action_6 (12) = happyShift action_6
action_6 (14) = happyShift action_7
action_6 (19) = happyShift action_8
action_6 (20) = happyShift action_9
action_6 (21) = happyShift action_24
action_6 (22) = happyShift action_10
action_6 (24) = happyShift action_11
action_6 (25) = happyShift action_12
action_6 (30) = happyShift action_13
action_6 (31) = happyShift action_14
action_6 (32) = happyShift action_15
action_6 (33) = happyShift action_16
action_6 (4) = happyGoto action_23
action_6 (5) = happyGoto action_4
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_5
action_7 (12) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (19) = happyShift action_8
action_7 (20) = happyShift action_9
action_7 (22) = happyShift action_10
action_7 (24) = happyShift action_11
action_7 (25) = happyShift action_12
action_7 (30) = happyShift action_13
action_7 (31) = happyShift action_14
action_7 (32) = happyShift action_15
action_7 (33) = happyShift action_16
action_7 (4) = happyGoto action_22
action_7 (5) = happyGoto action_4
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_11

action_9 _ = happyReduce_12

action_10 (7) = happyShift action_21
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_21

action_12 _ = happyReduce_22

action_13 (6) = happyShift action_2
action_13 (7) = happyShift action_5
action_13 (12) = happyShift action_6
action_13 (14) = happyShift action_7
action_13 (19) = happyShift action_8
action_13 (20) = happyShift action_9
action_13 (22) = happyShift action_10
action_13 (24) = happyShift action_11
action_13 (25) = happyShift action_12
action_13 (30) = happyShift action_13
action_13 (31) = happyShift action_14
action_13 (32) = happyShift action_15
action_13 (33) = happyShift action_16
action_13 (4) = happyGoto action_20
action_13 (5) = happyGoto action_4
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_5
action_14 (12) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (19) = happyShift action_8
action_14 (20) = happyShift action_9
action_14 (22) = happyShift action_10
action_14 (24) = happyShift action_11
action_14 (25) = happyShift action_12
action_14 (30) = happyShift action_13
action_14 (31) = happyShift action_14
action_14 (32) = happyShift action_15
action_14 (33) = happyShift action_16
action_14 (4) = happyGoto action_19
action_14 (5) = happyGoto action_4
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_5
action_15 (12) = happyShift action_6
action_15 (14) = happyShift action_7
action_15 (19) = happyShift action_8
action_15 (20) = happyShift action_9
action_15 (22) = happyShift action_10
action_15 (24) = happyShift action_11
action_15 (25) = happyShift action_12
action_15 (30) = happyShift action_13
action_15 (31) = happyShift action_14
action_15 (32) = happyShift action_15
action_15 (33) = happyShift action_16
action_15 (4) = happyGoto action_18
action_15 (5) = happyGoto action_4
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (24) = happyShift action_11
action_16 (25) = happyShift action_12
action_16 (33) = happyShift action_16
action_16 (5) = happyGoto action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (27) = happyShift action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_27
action_18 (10) = happyShift action_28
action_18 (11) = happyShift action_29
action_18 (12) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (17) = happyShift action_30
action_18 (18) = happyShift action_31
action_18 (19) = happyShift action_8
action_18 (20) = happyShift action_9
action_18 (22) = happyShift action_10
action_18 (24) = happyShift action_11
action_18 (25) = happyShift action_12
action_18 (30) = happyShift action_13
action_18 (31) = happyShift action_14
action_18 (32) = happyShift action_15
action_18 (33) = happyShift action_16
action_18 (4) = happyGoto action_26
action_18 (5) = happyGoto action_4
action_18 _ = happyReduce_20

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_27
action_19 (10) = happyShift action_28
action_19 (11) = happyShift action_29
action_19 (12) = happyShift action_6
action_19 (14) = happyShift action_7
action_19 (17) = happyShift action_30
action_19 (18) = happyShift action_31
action_19 (19) = happyShift action_8
action_19 (20) = happyShift action_9
action_19 (22) = happyShift action_10
action_19 (24) = happyShift action_11
action_19 (25) = happyShift action_12
action_19 (30) = happyShift action_13
action_19 (31) = happyShift action_14
action_19 (32) = happyShift action_15
action_19 (33) = happyShift action_16
action_19 (4) = happyGoto action_26
action_19 (5) = happyGoto action_4
action_19 _ = happyReduce_19

action_20 (6) = happyShift action_2
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_27
action_20 (10) = happyShift action_28
action_20 (11) = happyShift action_29
action_20 (12) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (17) = happyShift action_30
action_20 (18) = happyShift action_31
action_20 (19) = happyShift action_8
action_20 (20) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (24) = happyShift action_11
action_20 (25) = happyShift action_12
action_20 (30) = happyShift action_13
action_20 (31) = happyShift action_14
action_20 (32) = happyShift action_15
action_20 (33) = happyShift action_16
action_20 (4) = happyGoto action_26
action_20 (5) = happyGoto action_4
action_20 _ = happyReduce_18

action_21 (9) = happyShift action_43
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_27
action_22 (10) = happyShift action_28
action_22 (11) = happyShift action_29
action_22 (12) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (15) = happyShift action_42
action_22 (17) = happyShift action_30
action_22 (18) = happyShift action_31
action_22 (19) = happyShift action_8
action_22 (20) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (24) = happyShift action_11
action_22 (25) = happyShift action_12
action_22 (30) = happyShift action_13
action_22 (31) = happyShift action_14
action_22 (32) = happyShift action_15
action_22 (33) = happyShift action_16
action_22 (4) = happyGoto action_26
action_22 (5) = happyGoto action_4
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_27
action_23 (10) = happyShift action_28
action_23 (11) = happyShift action_29
action_23 (12) = happyShift action_6
action_23 (13) = happyShift action_41
action_23 (14) = happyShift action_7
action_23 (17) = happyShift action_30
action_23 (18) = happyShift action_31
action_23 (19) = happyShift action_8
action_23 (20) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (24) = happyShift action_11
action_23 (25) = happyShift action_12
action_23 (30) = happyShift action_13
action_23 (31) = happyShift action_14
action_23 (32) = happyShift action_15
action_23 (33) = happyShift action_16
action_23 (4) = happyGoto action_26
action_23 (5) = happyGoto action_4
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_40
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_5
action_25 (12) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (19) = happyShift action_8
action_25 (20) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (24) = happyShift action_11
action_25 (25) = happyShift action_12
action_25 (28) = happyShift action_39
action_25 (30) = happyShift action_13
action_25 (31) = happyShift action_14
action_25 (32) = happyShift action_15
action_25 (33) = happyShift action_16
action_25 (4) = happyGoto action_37
action_25 (5) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_27
action_26 (10) = happyShift action_28
action_26 (11) = happyShift action_29
action_26 (12) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (17) = happyShift action_30
action_26 (18) = happyShift action_31
action_26 (19) = happyShift action_8
action_26 (20) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (24) = happyShift action_11
action_26 (25) = happyShift action_12
action_26 (30) = happyShift action_13
action_26 (31) = happyShift action_14
action_26 (32) = happyShift action_15
action_26 (33) = happyShift action_16
action_26 (4) = happyGoto action_26
action_26 (5) = happyGoto action_4
action_26 _ = happyReduce_13

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_5
action_27 (12) = happyShift action_6
action_27 (14) = happyShift action_7
action_27 (19) = happyShift action_8
action_27 (20) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (24) = happyShift action_11
action_27 (25) = happyShift action_12
action_27 (30) = happyShift action_13
action_27 (31) = happyShift action_14
action_27 (32) = happyShift action_15
action_27 (33) = happyShift action_16
action_27 (4) = happyGoto action_36
action_27 (5) = happyGoto action_4
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_5
action_28 (12) = happyShift action_6
action_28 (14) = happyShift action_7
action_28 (19) = happyShift action_8
action_28 (20) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (24) = happyShift action_11
action_28 (25) = happyShift action_12
action_28 (30) = happyShift action_13
action_28 (31) = happyShift action_14
action_28 (32) = happyShift action_15
action_28 (33) = happyShift action_16
action_28 (4) = happyGoto action_35
action_28 (5) = happyGoto action_4
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_5
action_29 (12) = happyShift action_6
action_29 (14) = happyShift action_7
action_29 (19) = happyShift action_8
action_29 (20) = happyShift action_9
action_29 (22) = happyShift action_10
action_29 (24) = happyShift action_11
action_29 (25) = happyShift action_12
action_29 (30) = happyShift action_13
action_29 (31) = happyShift action_14
action_29 (32) = happyShift action_15
action_29 (33) = happyShift action_16
action_29 (4) = happyGoto action_34
action_29 (5) = happyGoto action_4
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_5
action_30 (12) = happyShift action_6
action_30 (14) = happyShift action_7
action_30 (19) = happyShift action_8
action_30 (20) = happyShift action_9
action_30 (22) = happyShift action_10
action_30 (24) = happyShift action_11
action_30 (25) = happyShift action_12
action_30 (30) = happyShift action_13
action_30 (31) = happyShift action_14
action_30 (32) = happyShift action_15
action_30 (33) = happyShift action_16
action_30 (4) = happyGoto action_33
action_30 (5) = happyGoto action_4
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_5
action_31 (12) = happyShift action_6
action_31 (14) = happyShift action_7
action_31 (19) = happyShift action_8
action_31 (20) = happyShift action_9
action_31 (22) = happyShift action_10
action_31 (24) = happyShift action_11
action_31 (25) = happyShift action_12
action_31 (30) = happyShift action_13
action_31 (31) = happyShift action_14
action_31 (32) = happyShift action_15
action_31 (33) = happyShift action_16
action_31 (4) = happyGoto action_32
action_31 (5) = happyGoto action_4
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_5
action_32 (8) = happyShift action_27
action_32 (10) = happyShift action_28
action_32 (11) = happyShift action_29
action_32 (12) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (17) = happyShift action_30
action_32 (18) = happyShift action_31
action_32 (19) = happyShift action_8
action_32 (20) = happyShift action_9
action_32 (22) = happyShift action_10
action_32 (24) = happyShift action_11
action_32 (25) = happyShift action_12
action_32 (30) = happyShift action_13
action_32 (31) = happyShift action_14
action_32 (32) = happyShift action_15
action_32 (33) = happyShift action_16
action_32 (4) = happyGoto action_26
action_32 (5) = happyGoto action_4
action_32 _ = happyReduce_10

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_5
action_33 (8) = happyShift action_27
action_33 (10) = happyShift action_28
action_33 (11) = happyShift action_29
action_33 (12) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (17) = happyShift action_30
action_33 (18) = happyShift action_31
action_33 (19) = happyShift action_8
action_33 (20) = happyShift action_9
action_33 (22) = happyShift action_10
action_33 (24) = happyShift action_11
action_33 (25) = happyShift action_12
action_33 (30) = happyShift action_13
action_33 (31) = happyShift action_14
action_33 (32) = happyShift action_15
action_33 (33) = happyShift action_16
action_33 (4) = happyGoto action_26
action_33 (5) = happyGoto action_4
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_5
action_34 (12) = happyShift action_6
action_34 (17) = happyShift action_30
action_34 (18) = happyShift action_31
action_34 (19) = happyShift action_8
action_34 (20) = happyShift action_9
action_34 (22) = happyShift action_10
action_34 (24) = happyShift action_11
action_34 (25) = happyShift action_12
action_34 (30) = happyShift action_13
action_34 (31) = happyShift action_14
action_34 (32) = happyShift action_15
action_34 (33) = happyShift action_16
action_34 (4) = happyGoto action_26
action_34 (5) = happyGoto action_4
action_34 _ = happyReduce_5

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_5
action_35 (11) = happyShift action_29
action_35 (12) = happyShift action_6
action_35 (17) = happyShift action_30
action_35 (18) = happyShift action_31
action_35 (19) = happyShift action_8
action_35 (20) = happyShift action_9
action_35 (22) = happyShift action_10
action_35 (24) = happyShift action_11
action_35 (25) = happyShift action_12
action_35 (30) = happyShift action_13
action_35 (31) = happyShift action_14
action_35 (32) = happyShift action_15
action_35 (33) = happyShift action_16
action_35 (4) = happyGoto action_26
action_35 (5) = happyGoto action_4
action_35 _ = happyReduce_4

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_5
action_36 (11) = happyShift action_29
action_36 (12) = happyShift action_6
action_36 (17) = happyShift action_30
action_36 (18) = happyShift action_31
action_36 (19) = happyShift action_8
action_36 (20) = happyShift action_9
action_36 (22) = happyShift action_10
action_36 (24) = happyShift action_11
action_36 (25) = happyShift action_12
action_36 (30) = happyShift action_13
action_36 (31) = happyShift action_14
action_36 (32) = happyShift action_15
action_36 (33) = happyShift action_16
action_36 (4) = happyGoto action_26
action_36 (5) = happyGoto action_4
action_36 _ = happyReduce_3

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_5
action_37 (8) = happyShift action_27
action_37 (10) = happyShift action_28
action_37 (11) = happyShift action_29
action_37 (12) = happyShift action_6
action_37 (14) = happyShift action_7
action_37 (17) = happyShift action_30
action_37 (18) = happyShift action_31
action_37 (19) = happyShift action_8
action_37 (20) = happyShift action_9
action_37 (22) = happyShift action_10
action_37 (24) = happyShift action_11
action_37 (25) = happyShift action_12
action_37 (26) = happyShift action_50
action_37 (30) = happyShift action_13
action_37 (31) = happyShift action_14
action_37 (32) = happyShift action_15
action_37 (33) = happyShift action_16
action_37 (4) = happyGoto action_26
action_37 (5) = happyGoto action_4
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (27) = happyShift action_25
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (29) = happyShift action_49
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (26) = happyShift action_48
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_7

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_5
action_42 (12) = happyShift action_6
action_42 (14) = happyShift action_7
action_42 (19) = happyShift action_8
action_42 (20) = happyShift action_9
action_42 (22) = happyShift action_10
action_42 (24) = happyShift action_11
action_42 (25) = happyShift action_12
action_42 (30) = happyShift action_13
action_42 (31) = happyShift action_14
action_42 (32) = happyShift action_15
action_42 (33) = happyShift action_16
action_42 (4) = happyGoto action_47
action_42 (5) = happyGoto action_4
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_5
action_43 (12) = happyShift action_6
action_43 (14) = happyShift action_7
action_43 (19) = happyShift action_8
action_43 (20) = happyShift action_9
action_43 (22) = happyShift action_10
action_43 (24) = happyShift action_11
action_43 (25) = happyShift action_12
action_43 (30) = happyShift action_13
action_43 (31) = happyShift action_14
action_43 (32) = happyShift action_15
action_43 (33) = happyShift action_16
action_43 (4) = happyGoto action_46
action_43 (5) = happyGoto action_4
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (24) = happyShift action_11
action_44 (25) = happyShift action_12
action_44 (33) = happyShift action_16
action_44 (5) = happyGoto action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (27) = happyShift action_44
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_27
action_46 (10) = happyShift action_28
action_46 (11) = happyShift action_29
action_46 (12) = happyShift action_6
action_46 (14) = happyShift action_7
action_46 (17) = happyShift action_30
action_46 (18) = happyShift action_31
action_46 (19) = happyShift action_8
action_46 (20) = happyShift action_9
action_46 (22) = happyShift action_10
action_46 (23) = happyShift action_55
action_46 (24) = happyShift action_11
action_46 (25) = happyShift action_12
action_46 (30) = happyShift action_13
action_46 (31) = happyShift action_14
action_46 (32) = happyShift action_15
action_46 (33) = happyShift action_16
action_46 (4) = happyGoto action_26
action_46 (5) = happyGoto action_4
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_5
action_47 (8) = happyShift action_27
action_47 (10) = happyShift action_28
action_47 (11) = happyShift action_29
action_47 (12) = happyShift action_6
action_47 (14) = happyShift action_7
action_47 (16) = happyShift action_54
action_47 (17) = happyShift action_30
action_47 (18) = happyShift action_31
action_47 (19) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (22) = happyShift action_10
action_47 (24) = happyShift action_11
action_47 (25) = happyShift action_12
action_47 (30) = happyShift action_13
action_47 (31) = happyShift action_14
action_47 (32) = happyShift action_15
action_47 (33) = happyShift action_16
action_47 (4) = happyGoto action_26
action_47 (5) = happyGoto action_4
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_11
action_48 (25) = happyShift action_12
action_48 (33) = happyShift action_16
action_48 (5) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_15

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_5
action_50 (12) = happyShift action_6
action_50 (14) = happyShift action_7
action_50 (19) = happyShift action_8
action_50 (20) = happyShift action_9
action_50 (22) = happyShift action_10
action_50 (24) = happyShift action_11
action_50 (25) = happyShift action_12
action_50 (28) = happyShift action_52
action_50 (30) = happyShift action_13
action_50 (31) = happyShift action_14
action_50 (32) = happyShift action_15
action_50 (33) = happyShift action_16
action_50 (4) = happyGoto action_51
action_50 (5) = happyGoto action_4
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_5
action_51 (8) = happyShift action_27
action_51 (10) = happyShift action_28
action_51 (11) = happyShift action_29
action_51 (12) = happyShift action_6
action_51 (14) = happyShift action_7
action_51 (17) = happyShift action_30
action_51 (18) = happyShift action_31
action_51 (19) = happyShift action_8
action_51 (20) = happyShift action_9
action_51 (22) = happyShift action_10
action_51 (24) = happyShift action_11
action_51 (25) = happyShift action_12
action_51 (30) = happyShift action_13
action_51 (31) = happyShift action_14
action_51 (32) = happyShift action_15
action_51 (33) = happyShift action_16
action_51 (4) = happyGoto action_26
action_51 (5) = happyGoto action_4
action_51 _ = happyReduce_17

action_52 (29) = happyShift action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (27) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_5
action_54 (12) = happyShift action_6
action_54 (14) = happyShift action_7
action_54 (19) = happyShift action_8
action_54 (20) = happyShift action_9
action_54 (22) = happyShift action_10
action_54 (24) = happyShift action_11
action_54 (25) = happyShift action_12
action_54 (30) = happyShift action_13
action_54 (31) = happyShift action_14
action_54 (32) = happyShift action_15
action_54 (33) = happyShift action_16
action_54 (4) = happyGoto action_57
action_54 (5) = happyGoto action_4
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_5
action_55 (12) = happyShift action_6
action_55 (14) = happyShift action_7
action_55 (19) = happyShift action_8
action_55 (20) = happyShift action_9
action_55 (22) = happyShift action_10
action_55 (24) = happyShift action_11
action_55 (25) = happyShift action_12
action_55 (30) = happyShift action_13
action_55 (31) = happyShift action_14
action_55 (32) = happyShift action_15
action_55 (33) = happyShift action_16
action_55 (4) = happyGoto action_56
action_55 (5) = happyGoto action_4
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_2
action_56 (7) = happyShift action_5
action_56 (8) = happyShift action_27
action_56 (10) = happyShift action_28
action_56 (11) = happyShift action_29
action_56 (12) = happyShift action_6
action_56 (14) = happyShift action_7
action_56 (17) = happyShift action_30
action_56 (18) = happyShift action_31
action_56 (19) = happyShift action_8
action_56 (20) = happyShift action_9
action_56 (22) = happyShift action_10
action_56 (24) = happyShift action_11
action_56 (25) = happyShift action_12
action_56 (30) = happyShift action_13
action_56 (31) = happyShift action_14
action_56 (32) = happyShift action_15
action_56 (33) = happyShift action_16
action_56 (4) = happyGoto action_26
action_56 (5) = happyGoto action_4
action_56 _ = happyReduce_14

action_57 (6) = happyShift action_2
action_57 (7) = happyShift action_5
action_57 (8) = happyShift action_27
action_57 (10) = happyShift action_28
action_57 (11) = happyShift action_29
action_57 (12) = happyShift action_6
action_57 (14) = happyFail []
action_57 (17) = happyShift action_30
action_57 (18) = happyShift action_31
action_57 (19) = happyShift action_8
action_57 (20) = happyShift action_9
action_57 (22) = happyShift action_10
action_57 (24) = happyShift action_11
action_57 (25) = happyShift action_12
action_57 (30) = happyShift action_13
action_57 (31) = happyShift action_14
action_57 (32) = happyShift action_15
action_57 (33) = happyShift action_16
action_57 (4) = happyGoto action_26
action_57 (5) = happyGoto action_4
action_57 _ = happyReduce_8

action_58 (6) = happyShift action_2
action_58 (7) = happyShift action_5
action_58 (12) = happyShift action_6
action_58 (14) = happyShift action_7
action_58 (19) = happyShift action_8
action_58 (20) = happyShift action_9
action_58 (22) = happyShift action_10
action_58 (24) = happyShift action_11
action_58 (25) = happyShift action_12
action_58 (30) = happyShift action_13
action_58 (31) = happyShift action_14
action_58 (32) = happyShift action_15
action_58 (33) = happyShift action_16
action_58 (4) = happyGoto action_60
action_58 (5) = happyGoto action_38
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_16

action_60 (6) = happyShift action_2
action_60 (7) = happyShift action_5
action_60 (8) = happyShift action_27
action_60 (10) = happyShift action_28
action_60 (11) = happyShift action_29
action_60 (12) = happyShift action_6
action_60 (13) = happyShift action_61
action_60 (14) = happyShift action_7
action_60 (17) = happyShift action_30
action_60 (18) = happyShift action_31
action_60 (19) = happyShift action_8
action_60 (20) = happyShift action_9
action_60 (22) = happyShift action_10
action_60 (24) = happyShift action_11
action_60 (25) = happyShift action_12
action_60 (30) = happyShift action_13
action_60 (31) = happyShift action_14
action_60 (32) = happyShift action_15
action_60 (33) = happyShift action_16
action_60 (4) = happyGoto action_26
action_60 (5) = happyGoto action_4
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_6

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

happyReduce_15 = happyReduce 4 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Nil happy_var_1
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Const happy_var_1 happy_var_3 (Nil happy_var_1)
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 5 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Const happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNil happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (TList happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

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
	TokenLSBracket -> cont 28;
	TokenRSBracket -> cont 29;
	TokenIsNil -> cont 30;
	TokenHead -> cont 31;
	TokenTail -> cont 32;
	TokenTypeList -> cont 33;
	TokenComma -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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
