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
happyExpList = Happy_Data_Array.listArray (0,624) ([10336,57388,16513,0,0,0,0,0,31095,65281,7,0,0,34060,15367,6160,2826,8312,0,0,0,0,0,128,0,32768,45217,1920,17154,353,1039,49798,7682,8,0,64,2584,30731,32,0,0,0,384,1,0,0,0,0,0,0,0,4096,0,0,60892,64517,47135,3023,16376,32,0,0,0,0,20672,49240,33027,45217,1920,17154,353,1039,49798,7682,3080,1413,4156,2584,30731,12320,5652,16624,10336,57388,49281,22608,960,41345,32944,519,24899,3841,4,0,0,208,0,0,0,0,0,0,32768,6,0,3328,0,0,0,0,0,0,0,0,0,32768,0,0,256,0,0,0,1,0,0,49152,22608,960,41345,32944,519,0,8224,0,0,0,0,0,0,0,128,0,32960,0,32768,257,20672,53336,33027,48315,65409,30467,381,2047,0,4120,0,32768,0,2584,30731,12320,5652,16624,12000,57903,255,0,32,0,0,0,0,8224,0,0,0,0,0,6144,2826,8314,0,0,32768,6,9728,20672,50008,33027,48379,65408,3,0,16,0,0,0,0,2,0,0,0,49152,128,0,0,0,0,2056,41344,41136,519,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","var","'+'","'='","'-'","'*'","'('","')'","if","then","else","and","or","True","False","lam","let","in","Num","Bool","':'","\"->\"","\"[\"","\"]\"","isNil","head","tail","List","'<'","'>'","\"==\"","\"!=\"","\"<=\"","\">=\"","not","%eof"]
        bit_start = st * 41
        bit_end = (st + 1) * 41
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..40]
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
action_0 (30) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (33) = happyShift action_13
action_0 (40) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_4
action_3 (8) = happyShift action_25
action_3 (10) = happyShift action_26
action_3 (11) = happyShift action_27
action_3 (12) = happyShift action_5
action_3 (14) = happyShift action_6
action_3 (17) = happyShift action_28
action_3 (18) = happyShift action_29
action_3 (19) = happyShift action_7
action_3 (20) = happyShift action_8
action_3 (22) = happyShift action_9
action_3 (30) = happyShift action_10
action_3 (31) = happyShift action_11
action_3 (32) = happyShift action_12
action_3 (33) = happyShift action_13
action_3 (34) = happyShift action_30
action_3 (35) = happyShift action_31
action_3 (36) = happyShift action_32
action_3 (37) = happyShift action_33
action_3 (38) = happyShift action_34
action_3 (39) = happyShift action_35
action_3 (40) = happyShift action_14
action_3 (41) = happyAccept
action_3 (4) = happyGoto action_24
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (6) = happyShift action_2
action_5 (7) = happyShift action_4
action_5 (12) = happyShift action_5
action_5 (14) = happyShift action_6
action_5 (19) = happyShift action_7
action_5 (20) = happyShift action_8
action_5 (21) = happyShift action_23
action_5 (22) = happyShift action_9
action_5 (30) = happyShift action_10
action_5 (31) = happyShift action_11
action_5 (32) = happyShift action_12
action_5 (33) = happyShift action_13
action_5 (40) = happyShift action_14
action_5 (4) = happyGoto action_22
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (12) = happyShift action_5
action_6 (14) = happyShift action_6
action_6 (19) = happyShift action_7
action_6 (20) = happyShift action_8
action_6 (22) = happyShift action_9
action_6 (30) = happyShift action_10
action_6 (31) = happyShift action_11
action_6 (32) = happyShift action_12
action_6 (33) = happyShift action_13
action_6 (40) = happyShift action_14
action_6 (4) = happyGoto action_21
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_10

action_8 _ = happyReduce_11

action_9 (7) = happyShift action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (14) = happyShift action_6
action_10 (19) = happyShift action_7
action_10 (20) = happyShift action_8
action_10 (22) = happyShift action_9
action_10 (30) = happyShift action_10
action_10 (31) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (33) = happyShift action_13
action_10 (40) = happyShift action_14
action_10 (4) = happyGoto action_19
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (12) = happyShift action_5
action_11 (14) = happyShift action_6
action_11 (19) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (22) = happyShift action_9
action_11 (30) = happyShift action_10
action_11 (31) = happyShift action_11
action_11 (32) = happyShift action_12
action_11 (33) = happyShift action_13
action_11 (40) = happyShift action_14
action_11 (4) = happyGoto action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (14) = happyShift action_6
action_12 (19) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (22) = happyShift action_9
action_12 (30) = happyShift action_10
action_12 (31) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (33) = happyShift action_13
action_12 (40) = happyShift action_14
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (34) = happyShift action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (14) = happyShift action_6
action_14 (19) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (22) = happyShift action_9
action_14 (30) = happyShift action_10
action_14 (31) = happyShift action_11
action_14 (32) = happyShift action_12
action_14 (33) = happyShift action_13
action_14 (40) = happyShift action_14
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_4
action_15 (8) = happyShift action_25
action_15 (10) = happyShift action_26
action_15 (11) = happyShift action_27
action_15 (12) = happyShift action_5
action_15 (14) = happyShift action_6
action_15 (17) = happyShift action_28
action_15 (18) = happyShift action_29
action_15 (19) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (22) = happyShift action_9
action_15 (30) = happyShift action_10
action_15 (31) = happyShift action_11
action_15 (32) = happyShift action_12
action_15 (33) = happyShift action_13
action_15 (34) = happyShift action_30
action_15 (35) = happyShift action_31
action_15 (36) = happyShift action_32
action_15 (37) = happyShift action_33
action_15 (38) = happyShift action_34
action_15 (39) = happyShift action_35
action_15 (40) = happyShift action_14
action_15 (4) = happyGoto action_24
action_15 _ = happyReduce_21

action_16 (24) = happyShift action_52
action_16 (25) = happyShift action_53
action_16 (33) = happyShift action_54
action_16 (5) = happyGoto action_51
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_4
action_17 (8) = happyShift action_25
action_17 (10) = happyShift action_26
action_17 (11) = happyShift action_27
action_17 (12) = happyShift action_5
action_17 (14) = happyShift action_6
action_17 (17) = happyShift action_28
action_17 (18) = happyShift action_29
action_17 (19) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (22) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (31) = happyShift action_11
action_17 (32) = happyShift action_12
action_17 (33) = happyShift action_13
action_17 (34) = happyShift action_30
action_17 (35) = happyShift action_31
action_17 (36) = happyShift action_32
action_17 (37) = happyShift action_33
action_17 (38) = happyShift action_34
action_17 (39) = happyShift action_35
action_17 (40) = happyShift action_14
action_17 (4) = happyGoto action_24
action_17 _ = happyReduce_20

action_18 (6) = happyShift action_2
action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_25
action_18 (10) = happyShift action_26
action_18 (11) = happyShift action_27
action_18 (12) = happyShift action_5
action_18 (14) = happyShift action_6
action_18 (17) = happyShift action_28
action_18 (18) = happyShift action_29
action_18 (19) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (22) = happyShift action_9
action_18 (30) = happyShift action_10
action_18 (31) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (33) = happyShift action_13
action_18 (34) = happyShift action_30
action_18 (35) = happyShift action_31
action_18 (36) = happyShift action_32
action_18 (37) = happyShift action_33
action_18 (38) = happyShift action_34
action_18 (39) = happyShift action_35
action_18 (40) = happyShift action_14
action_18 (4) = happyGoto action_24
action_18 _ = happyReduce_19

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_25
action_19 (10) = happyShift action_26
action_19 (11) = happyShift action_27
action_19 (12) = happyShift action_5
action_19 (14) = happyShift action_6
action_19 (17) = happyShift action_28
action_19 (18) = happyShift action_29
action_19 (19) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (22) = happyShift action_9
action_19 (30) = happyShift action_10
action_19 (31) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (33) = happyShift action_13
action_19 (34) = happyShift action_30
action_19 (35) = happyShift action_31
action_19 (36) = happyShift action_32
action_19 (37) = happyShift action_33
action_19 (38) = happyShift action_34
action_19 (39) = happyShift action_35
action_19 (40) = happyShift action_14
action_19 (4) = happyGoto action_24
action_19 _ = happyReduce_18

action_20 (9) = happyShift action_50
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_25
action_21 (10) = happyShift action_26
action_21 (11) = happyShift action_27
action_21 (12) = happyShift action_5
action_21 (14) = happyShift action_6
action_21 (15) = happyShift action_49
action_21 (17) = happyShift action_28
action_21 (18) = happyShift action_29
action_21 (19) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (22) = happyShift action_9
action_21 (30) = happyShift action_10
action_21 (31) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (33) = happyShift action_13
action_21 (34) = happyShift action_30
action_21 (35) = happyShift action_31
action_21 (36) = happyShift action_32
action_21 (37) = happyShift action_33
action_21 (38) = happyShift action_34
action_21 (39) = happyShift action_35
action_21 (40) = happyShift action_14
action_21 (4) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_25
action_22 (10) = happyShift action_26
action_22 (11) = happyShift action_27
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_48
action_22 (14) = happyShift action_6
action_22 (17) = happyShift action_28
action_22 (18) = happyShift action_29
action_22 (19) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (22) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (31) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (33) = happyShift action_13
action_22 (34) = happyShift action_30
action_22 (35) = happyShift action_31
action_22 (36) = happyShift action_32
action_22 (37) = happyShift action_33
action_22 (38) = happyShift action_34
action_22 (39) = happyShift action_35
action_22 (40) = happyShift action_14
action_22 (4) = happyGoto action_24
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_47
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_25
action_24 (10) = happyShift action_26
action_24 (11) = happyShift action_27
action_24 (12) = happyShift action_5
action_24 (14) = happyShift action_6
action_24 (17) = happyShift action_28
action_24 (18) = happyShift action_29
action_24 (19) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (22) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (33) = happyShift action_13
action_24 (34) = happyShift action_30
action_24 (35) = happyShift action_31
action_24 (36) = happyShift action_32
action_24 (37) = happyShift action_33
action_24 (38) = happyShift action_34
action_24 (39) = happyShift action_35
action_24 (40) = happyShift action_14
action_24 (4) = happyGoto action_24
action_24 _ = happyReduce_12

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (14) = happyShift action_6
action_25 (19) = happyShift action_7
action_25 (20) = happyShift action_8
action_25 (22) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (33) = happyShift action_13
action_25 (40) = happyShift action_14
action_25 (4) = happyGoto action_46
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (14) = happyShift action_6
action_26 (19) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (22) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (31) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (33) = happyShift action_13
action_26 (40) = happyShift action_14
action_26 (4) = happyGoto action_45
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (14) = happyShift action_6
action_27 (19) = happyShift action_7
action_27 (20) = happyShift action_8
action_27 (22) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (33) = happyShift action_13
action_27 (40) = happyShift action_14
action_27 (4) = happyGoto action_44
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (14) = happyShift action_6
action_28 (19) = happyShift action_7
action_28 (20) = happyShift action_8
action_28 (22) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (31) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (33) = happyShift action_13
action_28 (40) = happyShift action_14
action_28 (4) = happyGoto action_43
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (14) = happyShift action_6
action_29 (19) = happyShift action_7
action_29 (20) = happyShift action_8
action_29 (22) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (31) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (33) = happyShift action_13
action_29 (40) = happyShift action_14
action_29 (4) = happyGoto action_42
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (14) = happyShift action_6
action_30 (19) = happyShift action_7
action_30 (20) = happyShift action_8
action_30 (22) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (31) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (33) = happyShift action_13
action_30 (40) = happyShift action_14
action_30 (4) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (14) = happyShift action_6
action_31 (19) = happyShift action_7
action_31 (20) = happyShift action_8
action_31 (22) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (31) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (33) = happyShift action_13
action_31 (40) = happyShift action_14
action_31 (4) = happyGoto action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (14) = happyShift action_6
action_32 (19) = happyShift action_7
action_32 (20) = happyShift action_8
action_32 (22) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (31) = happyShift action_11
action_32 (32) = happyShift action_12
action_32 (33) = happyShift action_13
action_32 (40) = happyShift action_14
action_32 (4) = happyGoto action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (14) = happyShift action_6
action_33 (19) = happyShift action_7
action_33 (20) = happyShift action_8
action_33 (22) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (31) = happyShift action_11
action_33 (32) = happyShift action_12
action_33 (33) = happyShift action_13
action_33 (40) = happyShift action_14
action_33 (4) = happyGoto action_38
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (6) = happyShift action_2
action_34 (7) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (14) = happyShift action_6
action_34 (19) = happyShift action_7
action_34 (20) = happyShift action_8
action_34 (22) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (31) = happyShift action_11
action_34 (32) = happyShift action_12
action_34 (33) = happyShift action_13
action_34 (40) = happyShift action_14
action_34 (4) = happyGoto action_37
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (14) = happyShift action_6
action_35 (19) = happyShift action_7
action_35 (20) = happyShift action_8
action_35 (22) = happyShift action_9
action_35 (30) = happyShift action_10
action_35 (31) = happyShift action_11
action_35 (32) = happyShift action_12
action_35 (33) = happyShift action_13
action_35 (40) = happyShift action_14
action_35 (4) = happyGoto action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_4
action_36 (8) = happyShift action_25
action_36 (10) = happyShift action_26
action_36 (11) = happyShift action_27
action_36 (12) = happyShift action_5
action_36 (14) = happyShift action_6
action_36 (17) = happyShift action_28
action_36 (18) = happyShift action_29
action_36 (19) = happyShift action_7
action_36 (20) = happyShift action_8
action_36 (22) = happyShift action_9
action_36 (30) = happyShift action_10
action_36 (31) = happyShift action_11
action_36 (32) = happyShift action_12
action_36 (33) = happyShift action_13
action_36 (34) = happyShift action_30
action_36 (35) = happyShift action_31
action_36 (36) = happyShift action_32
action_36 (37) = happyShift action_33
action_36 (38) = happyShift action_34
action_36 (39) = happyShift action_35
action_36 (40) = happyShift action_14
action_36 (4) = happyGoto action_24
action_36 _ = happyReduce_25

action_37 (6) = happyShift action_2
action_37 (7) = happyShift action_4
action_37 (8) = happyShift action_25
action_37 (10) = happyShift action_26
action_37 (11) = happyShift action_27
action_37 (12) = happyShift action_5
action_37 (17) = happyShift action_28
action_37 (18) = happyShift action_29
action_37 (19) = happyShift action_7
action_37 (20) = happyShift action_8
action_37 (22) = happyShift action_9
action_37 (30) = happyShift action_10
action_37 (31) = happyShift action_11
action_37 (32) = happyShift action_12
action_37 (33) = happyShift action_13
action_37 (36) = happyShift action_32
action_37 (37) = happyShift action_33
action_37 (39) = happyShift action_35
action_37 (40) = happyShift action_14
action_37 (4) = happyGoto action_24
action_37 _ = happyReduce_24

action_38 (6) = happyShift action_2
action_38 (7) = happyShift action_4
action_38 (8) = happyShift action_25
action_38 (10) = happyShift action_26
action_38 (11) = happyShift action_27
action_38 (12) = happyShift action_5
action_38 (14) = happyShift action_6
action_38 (17) = happyShift action_28
action_38 (18) = happyShift action_29
action_38 (19) = happyShift action_7
action_38 (20) = happyShift action_8
action_38 (22) = happyShift action_9
action_38 (30) = happyShift action_10
action_38 (31) = happyShift action_11
action_38 (32) = happyShift action_12
action_38 (33) = happyShift action_13
action_38 (34) = happyShift action_30
action_38 (35) = happyShift action_31
action_38 (36) = happyShift action_32
action_38 (37) = happyShift action_33
action_38 (38) = happyShift action_34
action_38 (39) = happyShift action_35
action_38 (40) = happyShift action_14
action_38 (4) = happyGoto action_24
action_38 _ = happyReduce_23

action_39 (6) = happyShift action_2
action_39 (7) = happyShift action_4
action_39 (8) = happyShift action_25
action_39 (10) = happyShift action_26
action_39 (11) = happyShift action_27
action_39 (12) = happyShift action_5
action_39 (14) = happyShift action_6
action_39 (17) = happyShift action_28
action_39 (18) = happyShift action_29
action_39 (19) = happyShift action_7
action_39 (20) = happyShift action_8
action_39 (22) = happyShift action_9
action_39 (30) = happyShift action_10
action_39 (31) = happyShift action_11
action_39 (32) = happyShift action_12
action_39 (33) = happyShift action_13
action_39 (34) = happyShift action_30
action_39 (35) = happyShift action_31
action_39 (36) = happyShift action_32
action_39 (37) = happyShift action_33
action_39 (38) = happyShift action_34
action_39 (39) = happyShift action_35
action_39 (40) = happyShift action_14
action_39 (4) = happyGoto action_24
action_39 _ = happyReduce_22

action_40 (6) = happyShift action_2
action_40 (7) = happyShift action_4
action_40 (8) = happyShift action_25
action_40 (10) = happyShift action_26
action_40 (11) = happyShift action_27
action_40 (12) = happyShift action_5
action_40 (17) = happyShift action_28
action_40 (18) = happyShift action_29
action_40 (19) = happyShift action_7
action_40 (20) = happyShift action_8
action_40 (22) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (31) = happyShift action_11
action_40 (32) = happyShift action_12
action_40 (33) = happyShift action_13
action_40 (36) = happyShift action_32
action_40 (37) = happyShift action_33
action_40 (39) = happyShift action_35
action_40 (40) = happyShift action_14
action_40 (4) = happyGoto action_24
action_40 _ = happyReduce_27

action_41 (6) = happyShift action_2
action_41 (7) = happyShift action_4
action_41 (8) = happyShift action_25
action_41 (10) = happyShift action_26
action_41 (11) = happyShift action_27
action_41 (12) = happyShift action_5
action_41 (17) = happyShift action_28
action_41 (18) = happyShift action_29
action_41 (19) = happyShift action_7
action_41 (20) = happyShift action_8
action_41 (22) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (31) = happyShift action_11
action_41 (32) = happyShift action_12
action_41 (33) = happyShift action_13
action_41 (36) = happyShift action_32
action_41 (37) = happyShift action_33
action_41 (39) = happyShift action_35
action_41 (40) = happyShift action_14
action_41 (4) = happyGoto action_24
action_41 _ = happyReduce_26

action_42 (6) = happyShift action_2
action_42 (7) = happyShift action_4
action_42 (8) = happyShift action_25
action_42 (10) = happyShift action_26
action_42 (11) = happyShift action_27
action_42 (12) = happyShift action_5
action_42 (14) = happyShift action_6
action_42 (17) = happyShift action_28
action_42 (18) = happyShift action_29
action_42 (19) = happyShift action_7
action_42 (20) = happyShift action_8
action_42 (22) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (31) = happyShift action_11
action_42 (32) = happyShift action_12
action_42 (33) = happyShift action_13
action_42 (34) = happyShift action_30
action_42 (35) = happyShift action_31
action_42 (36) = happyShift action_32
action_42 (37) = happyShift action_33
action_42 (38) = happyShift action_34
action_42 (39) = happyShift action_35
action_42 (40) = happyShift action_14
action_42 (4) = happyGoto action_24
action_42 _ = happyReduce_9

action_43 (6) = happyShift action_2
action_43 (7) = happyShift action_4
action_43 (8) = happyShift action_25
action_43 (10) = happyShift action_26
action_43 (11) = happyShift action_27
action_43 (12) = happyShift action_5
action_43 (14) = happyShift action_6
action_43 (17) = happyShift action_28
action_43 (18) = happyShift action_29
action_43 (19) = happyShift action_7
action_43 (20) = happyShift action_8
action_43 (22) = happyShift action_9
action_43 (30) = happyShift action_10
action_43 (31) = happyShift action_11
action_43 (32) = happyShift action_12
action_43 (33) = happyShift action_13
action_43 (34) = happyShift action_30
action_43 (35) = happyShift action_31
action_43 (36) = happyShift action_32
action_43 (37) = happyShift action_33
action_43 (38) = happyShift action_34
action_43 (39) = happyShift action_35
action_43 (40) = happyShift action_14
action_43 (4) = happyGoto action_24
action_43 _ = happyReduce_8

action_44 (6) = happyShift action_2
action_44 (7) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (17) = happyShift action_28
action_44 (18) = happyShift action_29
action_44 (19) = happyShift action_7
action_44 (20) = happyShift action_8
action_44 (22) = happyShift action_9
action_44 (30) = happyShift action_10
action_44 (31) = happyShift action_11
action_44 (32) = happyShift action_12
action_44 (33) = happyShift action_13
action_44 (36) = happyShift action_32
action_44 (37) = happyShift action_33
action_44 (39) = happyShift action_35
action_44 (40) = happyShift action_14
action_44 (4) = happyGoto action_24
action_44 _ = happyReduce_5

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (11) = happyShift action_27
action_45 (12) = happyShift action_5
action_45 (17) = happyShift action_28
action_45 (18) = happyShift action_29
action_45 (19) = happyShift action_7
action_45 (20) = happyShift action_8
action_45 (22) = happyShift action_9
action_45 (30) = happyShift action_10
action_45 (31) = happyShift action_11
action_45 (32) = happyShift action_12
action_45 (33) = happyShift action_13
action_45 (36) = happyShift action_32
action_45 (37) = happyShift action_33
action_45 (39) = happyShift action_35
action_45 (40) = happyShift action_14
action_45 (4) = happyGoto action_24
action_45 _ = happyReduce_4

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_4
action_46 (11) = happyShift action_27
action_46 (12) = happyShift action_5
action_46 (17) = happyShift action_28
action_46 (18) = happyShift action_29
action_46 (19) = happyShift action_7
action_46 (20) = happyShift action_8
action_46 (22) = happyShift action_9
action_46 (30) = happyShift action_10
action_46 (31) = happyShift action_11
action_46 (32) = happyShift action_12
action_46 (33) = happyShift action_13
action_46 (36) = happyShift action_32
action_46 (37) = happyShift action_33
action_46 (39) = happyShift action_35
action_46 (40) = happyShift action_14
action_46 (4) = happyGoto action_24
action_46 _ = happyReduce_3

action_47 (26) = happyShift action_60
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_6

action_49 (6) = happyShift action_2
action_49 (7) = happyShift action_4
action_49 (12) = happyShift action_5
action_49 (14) = happyShift action_6
action_49 (19) = happyShift action_7
action_49 (20) = happyShift action_8
action_49 (22) = happyShift action_9
action_49 (30) = happyShift action_10
action_49 (31) = happyShift action_11
action_49 (32) = happyShift action_12
action_49 (33) = happyShift action_13
action_49 (40) = happyShift action_14
action_49 (4) = happyGoto action_59
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (6) = happyShift action_2
action_50 (7) = happyShift action_4
action_50 (12) = happyShift action_5
action_50 (14) = happyShift action_6
action_50 (19) = happyShift action_7
action_50 (20) = happyShift action_8
action_50 (22) = happyShift action_9
action_50 (30) = happyShift action_10
action_50 (31) = happyShift action_11
action_50 (32) = happyShift action_12
action_50 (33) = happyShift action_13
action_50 (40) = happyShift action_14
action_50 (4) = happyGoto action_58
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_56
action_51 (35) = happyShift action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_28

action_53 _ = happyReduce_29

action_54 (34) = happyShift action_55
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (24) = happyShift action_52
action_55 (25) = happyShift action_53
action_55 (33) = happyShift action_54
action_55 (5) = happyGoto action_67
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (24) = happyShift action_52
action_56 (25) = happyShift action_53
action_56 (33) = happyShift action_54
action_56 (5) = happyGoto action_66
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_2
action_57 (7) = happyShift action_4
action_57 (12) = happyShift action_5
action_57 (14) = happyShift action_6
action_57 (19) = happyShift action_7
action_57 (20) = happyShift action_8
action_57 (22) = happyShift action_9
action_57 (28) = happyShift action_65
action_57 (30) = happyShift action_10
action_57 (31) = happyShift action_11
action_57 (32) = happyShift action_12
action_57 (33) = happyShift action_13
action_57 (40) = happyShift action_14
action_57 (4) = happyGoto action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_2
action_58 (7) = happyShift action_4
action_58 (8) = happyShift action_25
action_58 (10) = happyShift action_26
action_58 (11) = happyShift action_27
action_58 (12) = happyShift action_5
action_58 (14) = happyShift action_6
action_58 (17) = happyShift action_28
action_58 (18) = happyShift action_29
action_58 (19) = happyShift action_7
action_58 (20) = happyShift action_8
action_58 (22) = happyShift action_9
action_58 (23) = happyShift action_63
action_58 (30) = happyShift action_10
action_58 (31) = happyShift action_11
action_58 (32) = happyShift action_12
action_58 (33) = happyShift action_13
action_58 (34) = happyShift action_30
action_58 (35) = happyShift action_31
action_58 (36) = happyShift action_32
action_58 (37) = happyShift action_33
action_58 (38) = happyShift action_34
action_58 (39) = happyShift action_35
action_58 (40) = happyShift action_14
action_58 (4) = happyGoto action_24
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_4
action_59 (8) = happyShift action_25
action_59 (10) = happyShift action_26
action_59 (11) = happyShift action_27
action_59 (12) = happyShift action_5
action_59 (14) = happyShift action_6
action_59 (16) = happyShift action_62
action_59 (17) = happyShift action_28
action_59 (18) = happyShift action_29
action_59 (19) = happyShift action_7
action_59 (20) = happyShift action_8
action_59 (22) = happyShift action_9
action_59 (30) = happyShift action_10
action_59 (31) = happyShift action_11
action_59 (32) = happyShift action_12
action_59 (33) = happyShift action_13
action_59 (34) = happyShift action_30
action_59 (35) = happyShift action_31
action_59 (36) = happyShift action_32
action_59 (37) = happyShift action_33
action_59 (38) = happyShift action_34
action_59 (39) = happyShift action_35
action_59 (40) = happyShift action_14
action_59 (4) = happyGoto action_24
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (24) = happyShift action_52
action_60 (25) = happyShift action_53
action_60 (33) = happyShift action_54
action_60 (5) = happyGoto action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (27) = happyShift action_73
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_2
action_62 (7) = happyShift action_4
action_62 (12) = happyShift action_5
action_62 (14) = happyShift action_6
action_62 (19) = happyShift action_7
action_62 (20) = happyShift action_8
action_62 (22) = happyShift action_9
action_62 (30) = happyShift action_10
action_62 (31) = happyShift action_11
action_62 (32) = happyShift action_12
action_62 (33) = happyShift action_13
action_62 (40) = happyShift action_14
action_62 (4) = happyGoto action_72
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_2
action_63 (7) = happyShift action_4
action_63 (12) = happyShift action_5
action_63 (14) = happyShift action_6
action_63 (19) = happyShift action_7
action_63 (20) = happyShift action_8
action_63 (22) = happyShift action_9
action_63 (30) = happyShift action_10
action_63 (31) = happyShift action_11
action_63 (32) = happyShift action_12
action_63 (33) = happyShift action_13
action_63 (40) = happyShift action_14
action_63 (4) = happyGoto action_71
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (6) = happyShift action_2
action_64 (7) = happyShift action_4
action_64 (8) = happyShift action_25
action_64 (10) = happyShift action_26
action_64 (11) = happyShift action_27
action_64 (12) = happyShift action_5
action_64 (14) = happyShift action_6
action_64 (17) = happyShift action_28
action_64 (18) = happyShift action_29
action_64 (19) = happyShift action_7
action_64 (20) = happyShift action_8
action_64 (22) = happyShift action_9
action_64 (26) = happyShift action_70
action_64 (30) = happyShift action_10
action_64 (31) = happyShift action_11
action_64 (32) = happyShift action_12
action_64 (33) = happyShift action_13
action_64 (34) = happyShift action_30
action_64 (35) = happyShift action_31
action_64 (36) = happyShift action_32
action_64 (37) = happyShift action_33
action_64 (38) = happyShift action_34
action_64 (39) = happyShift action_35
action_64 (40) = happyShift action_14
action_64 (4) = happyGoto action_24
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (29) = happyShift action_69
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (27) = happyShift action_56
action_66 _ = happyReduce_30

action_67 (27) = happyShift action_56
action_67 (35) = happyShift action_68
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_31

action_69 _ = happyReduce_14

action_70 (6) = happyShift action_2
action_70 (7) = happyShift action_4
action_70 (12) = happyShift action_5
action_70 (14) = happyShift action_6
action_70 (19) = happyShift action_7
action_70 (20) = happyShift action_8
action_70 (22) = happyShift action_9
action_70 (28) = happyShift action_77
action_70 (30) = happyShift action_10
action_70 (31) = happyShift action_11
action_70 (32) = happyShift action_12
action_70 (33) = happyShift action_13
action_70 (40) = happyShift action_14
action_70 (4) = happyGoto action_76
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (6) = happyShift action_2
action_71 (7) = happyShift action_4
action_71 (8) = happyShift action_25
action_71 (10) = happyShift action_26
action_71 (11) = happyShift action_27
action_71 (12) = happyShift action_5
action_71 (14) = happyShift action_6
action_71 (17) = happyShift action_28
action_71 (18) = happyShift action_29
action_71 (19) = happyShift action_7
action_71 (20) = happyShift action_8
action_71 (22) = happyShift action_9
action_71 (30) = happyShift action_10
action_71 (31) = happyShift action_11
action_71 (32) = happyShift action_12
action_71 (33) = happyShift action_13
action_71 (34) = happyShift action_30
action_71 (35) = happyShift action_31
action_71 (36) = happyShift action_32
action_71 (37) = happyShift action_33
action_71 (38) = happyShift action_34
action_71 (39) = happyShift action_35
action_71 (40) = happyShift action_14
action_71 (4) = happyGoto action_24
action_71 _ = happyReduce_13

action_72 (6) = happyShift action_2
action_72 (7) = happyShift action_4
action_72 (8) = happyShift action_25
action_72 (10) = happyShift action_26
action_72 (11) = happyShift action_27
action_72 (12) = happyShift action_5
action_72 (14) = happyFail []
action_72 (17) = happyShift action_28
action_72 (18) = happyShift action_29
action_72 (19) = happyShift action_7
action_72 (20) = happyShift action_8
action_72 (22) = happyShift action_9
action_72 (30) = happyShift action_10
action_72 (31) = happyShift action_11
action_72 (32) = happyShift action_12
action_72 (33) = happyShift action_13
action_72 (34) = happyShift action_30
action_72 (35) = happyShift action_31
action_72 (36) = happyShift action_32
action_72 (37) = happyShift action_33
action_72 (38) = happyShift action_34
action_72 (39) = happyShift action_35
action_72 (40) = happyShift action_14
action_72 (4) = happyGoto action_24
action_72 _ = happyReduce_7

action_73 (6) = happyShift action_2
action_73 (7) = happyShift action_4
action_73 (12) = happyShift action_5
action_73 (14) = happyShift action_6
action_73 (19) = happyShift action_7
action_73 (20) = happyShift action_8
action_73 (22) = happyShift action_9
action_73 (24) = happyShift action_52
action_73 (25) = happyShift action_53
action_73 (30) = happyShift action_10
action_73 (31) = happyShift action_11
action_73 (32) = happyShift action_12
action_73 (33) = happyShift action_75
action_73 (40) = happyShift action_14
action_73 (4) = happyGoto action_74
action_73 (5) = happyGoto action_66
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (6) = happyShift action_2
action_74 (7) = happyShift action_4
action_74 (8) = happyShift action_25
action_74 (10) = happyShift action_26
action_74 (11) = happyShift action_27
action_74 (12) = happyShift action_5
action_74 (13) = happyShift action_80
action_74 (14) = happyShift action_6
action_74 (17) = happyShift action_28
action_74 (18) = happyShift action_29
action_74 (19) = happyShift action_7
action_74 (20) = happyShift action_8
action_74 (22) = happyShift action_9
action_74 (30) = happyShift action_10
action_74 (31) = happyShift action_11
action_74 (32) = happyShift action_12
action_74 (33) = happyShift action_13
action_74 (34) = happyShift action_30
action_74 (35) = happyShift action_31
action_74 (36) = happyShift action_32
action_74 (37) = happyShift action_33
action_74 (38) = happyShift action_34
action_74 (39) = happyShift action_35
action_74 (40) = happyShift action_14
action_74 (4) = happyGoto action_24
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (34) = happyShift action_79
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (6) = happyShift action_2
action_76 (7) = happyShift action_4
action_76 (8) = happyShift action_25
action_76 (10) = happyShift action_26
action_76 (11) = happyShift action_27
action_76 (12) = happyShift action_5
action_76 (14) = happyShift action_6
action_76 (17) = happyShift action_28
action_76 (18) = happyShift action_29
action_76 (19) = happyShift action_7
action_76 (20) = happyShift action_8
action_76 (22) = happyShift action_9
action_76 (30) = happyShift action_10
action_76 (31) = happyShift action_11
action_76 (32) = happyShift action_12
action_76 (33) = happyShift action_13
action_76 (34) = happyShift action_30
action_76 (35) = happyShift action_31
action_76 (36) = happyShift action_32
action_76 (37) = happyShift action_33
action_76 (38) = happyShift action_34
action_76 (39) = happyShift action_35
action_76 (40) = happyShift action_14
action_76 (4) = happyGoto action_24
action_76 _ = happyReduce_16

action_77 (29) = happyShift action_78
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_15

action_79 (24) = happyShift action_52
action_79 (25) = happyShift action_53
action_79 (33) = happyShift action_54
action_79 (5) = happyGoto action_81
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_17

action_81 (27) = happyShift action_56
action_81 (35) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (6) = happyShift action_2
action_82 (7) = happyShift action_4
action_82 (12) = happyShift action_5
action_82 (14) = happyShift action_6
action_82 (19) = happyShift action_7
action_82 (20) = happyShift action_8
action_82 (22) = happyShift action_9
action_82 (28) = happyShift action_65
action_82 (30) = happyShift action_10
action_82 (31) = happyShift action_11
action_82 (32) = happyShift action_12
action_82 (33) = happyShift action_13
action_82 (40) = happyShift action_14
action_82 (4) = happyGoto action_64
action_82 _ = happyReduce_31

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

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 6 4 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  4 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Nil  happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 8 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Cons happy_var_3 happy_var_5 (Nil  happy_var_3)
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Cons happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 8 4 happyReduction_17
happyReduction_17 (_ `HappyStk`
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

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessEqualThan happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterEqualThan happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessThan happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterThan happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TFun happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 5 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TList happy_var_3
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 41 41 notHappyAtAll (HappyState action) sts stk []

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
	TokenLessThan -> cont 34;
	TokenGreaterThan -> cont 35;
	TokenEqualEqual -> cont 36;
	TokenNotEqual -> cont 37;
	TokenLessEqual -> cont 38;
	TokenGreaterEqual -> cont 39;
	TokenNot -> cont 40;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41 tk tks = happyError' (tks, explist)
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
    show (Cons t1 e1 e2) = show t1 ++ "> " ++ show e1 ++ " : " ++ show e2	
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
    show (TList t1) = "List<"++show t1++">"
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
