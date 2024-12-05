{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,198) ([224,8080,32,0,0,0,65280,15,0,0,0,0,224,8080,224,8080,0,0,224,8080,224,8080,224,8080,224,16272,65280,16399,0,8192,0,0,65280,15,65280,15,65280,15,65504,8095,65280,47,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,224,8080,3840,0,3840,0,3840,0,3840,0,3840,0,3840,0,57088,15,52992,15,0,0,0,0,3072,0,3072,0,224,8080,65280,15,0,0,224,8080,0,0,65280,79,224,8080,65280,15,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","List","true","false","num","'+'","'-'","'*'","'/'","and","or","\"==\"","\"!=\"","'<'","'>'","\"<=\"","\">=\"","if","then","else","cons","nil","isnil","head","tail","'['","']'","','","%eof"]
        bit_start = st * 32
        bit_end = (st + 1) * 32
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..31]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (21) = happyShift action_6
action_0 (24) = happyShift action_7
action_0 (25) = happyShift action_8
action_0 (26) = happyShift action_9
action_0 (27) = happyShift action_10
action_0 (28) = happyShift action_11
action_0 (29) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (9) = happyShift action_21
action_3 (10) = happyShift action_22
action_3 (11) = happyShift action_23
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_27
action_3 (16) = happyShift action_28
action_3 (17) = happyShift action_29
action_3 (18) = happyShift action_30
action_3 (19) = happyShift action_31
action_3 (20) = happyShift action_32
action_3 (32) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (6) = happyShift action_2
action_6 (7) = happyShift action_4
action_6 (8) = happyShift action_5
action_6 (21) = happyShift action_6
action_6 (24) = happyShift action_7
action_6 (25) = happyShift action_8
action_6 (26) = happyShift action_9
action_6 (27) = happyShift action_10
action_6 (28) = happyShift action_11
action_6 (29) = happyShift action_12
action_6 (4) = happyGoto action_20
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (6) = happyShift action_2
action_7 (7) = happyShift action_4
action_7 (8) = happyShift action_5
action_7 (21) = happyShift action_6
action_7 (24) = happyShift action_7
action_7 (25) = happyShift action_8
action_7 (26) = happyShift action_9
action_7 (27) = happyShift action_10
action_7 (28) = happyShift action_11
action_7 (29) = happyShift action_12
action_7 (4) = happyGoto action_19
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_18

action_9 (6) = happyShift action_2
action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (21) = happyShift action_6
action_9 (24) = happyShift action_7
action_9 (25) = happyShift action_8
action_9 (26) = happyShift action_9
action_9 (27) = happyShift action_10
action_9 (28) = happyShift action_11
action_9 (29) = happyShift action_12
action_9 (4) = happyGoto action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_2
action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (21) = happyShift action_6
action_10 (24) = happyShift action_7
action_10 (25) = happyShift action_8
action_10 (26) = happyShift action_9
action_10 (27) = happyShift action_10
action_10 (28) = happyShift action_11
action_10 (29) = happyShift action_12
action_10 (4) = happyGoto action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (21) = happyShift action_6
action_11 (24) = happyShift action_7
action_11 (25) = happyShift action_8
action_11 (26) = happyShift action_9
action_11 (27) = happyShift action_10
action_11 (28) = happyShift action_11
action_11 (29) = happyShift action_12
action_11 (4) = happyGoto action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_4
action_12 (8) = happyShift action_5
action_12 (21) = happyShift action_6
action_12 (24) = happyShift action_7
action_12 (25) = happyShift action_8
action_12 (26) = happyShift action_9
action_12 (27) = happyShift action_10
action_12 (28) = happyShift action_11
action_12 (29) = happyShift action_12
action_12 (30) = happyShift action_15
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_14
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (9) = happyShift action_21
action_13 (10) = happyShift action_22
action_13 (11) = happyShift action_23
action_13 (12) = happyShift action_24
action_13 (13) = happyShift action_25
action_13 (14) = happyShift action_26
action_13 (15) = happyShift action_27
action_13 (16) = happyShift action_28
action_13 (17) = happyShift action_29
action_13 (18) = happyShift action_30
action_13 (19) = happyShift action_31
action_13 (20) = happyShift action_32
action_13 (31) = happyShift action_48
action_13 _ = happyReduce_24

action_14 (30) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_22

action_16 (9) = happyShift action_21
action_16 (10) = happyShift action_22
action_16 (11) = happyShift action_23
action_16 (12) = happyShift action_24
action_16 (13) = happyShift action_25
action_16 (14) = happyShift action_26
action_16 (15) = happyShift action_27
action_16 (16) = happyShift action_28
action_16 (17) = happyShift action_29
action_16 (18) = happyShift action_30
action_16 (19) = happyShift action_31
action_16 (20) = happyShift action_32
action_16 _ = happyReduce_21

action_17 (9) = happyShift action_21
action_17 (10) = happyShift action_22
action_17 (11) = happyShift action_23
action_17 (12) = happyShift action_24
action_17 (13) = happyShift action_25
action_17 (14) = happyShift action_26
action_17 (15) = happyShift action_27
action_17 (16) = happyShift action_28
action_17 (17) = happyShift action_29
action_17 (18) = happyShift action_30
action_17 (19) = happyShift action_31
action_17 (20) = happyShift action_32
action_17 _ = happyReduce_20

action_18 (9) = happyShift action_21
action_18 (10) = happyShift action_22
action_18 (11) = happyShift action_23
action_18 (12) = happyShift action_24
action_18 (13) = happyShift action_25
action_18 (14) = happyShift action_26
action_18 (15) = happyShift action_27
action_18 (16) = happyShift action_28
action_18 (17) = happyShift action_29
action_18 (18) = happyShift action_30
action_18 (19) = happyShift action_31
action_18 (20) = happyShift action_32
action_18 _ = happyReduce_19

action_19 (6) = happyShift action_2
action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_21
action_19 (10) = happyShift action_22
action_19 (11) = happyShift action_23
action_19 (12) = happyShift action_24
action_19 (13) = happyShift action_25
action_19 (14) = happyShift action_26
action_19 (15) = happyShift action_27
action_19 (16) = happyShift action_28
action_19 (17) = happyShift action_29
action_19 (18) = happyShift action_30
action_19 (19) = happyShift action_31
action_19 (20) = happyShift action_32
action_19 (21) = happyShift action_6
action_19 (24) = happyShift action_7
action_19 (25) = happyShift action_8
action_19 (26) = happyShift action_9
action_19 (27) = happyShift action_10
action_19 (28) = happyShift action_11
action_19 (29) = happyShift action_12
action_19 (4) = happyGoto action_46
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (9) = happyShift action_21
action_20 (10) = happyShift action_22
action_20 (11) = happyShift action_23
action_20 (12) = happyShift action_24
action_20 (13) = happyShift action_25
action_20 (14) = happyShift action_26
action_20 (15) = happyShift action_27
action_20 (16) = happyShift action_28
action_20 (17) = happyShift action_29
action_20 (18) = happyShift action_30
action_20 (19) = happyShift action_31
action_20 (20) = happyShift action_32
action_20 (22) = happyShift action_45
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (21) = happyShift action_6
action_21 (24) = happyShift action_7
action_21 (25) = happyShift action_8
action_21 (26) = happyShift action_9
action_21 (27) = happyShift action_10
action_21 (28) = happyShift action_11
action_21 (29) = happyShift action_12
action_21 (4) = happyGoto action_44
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (21) = happyShift action_6
action_22 (24) = happyShift action_7
action_22 (25) = happyShift action_8
action_22 (26) = happyShift action_9
action_22 (27) = happyShift action_10
action_22 (28) = happyShift action_11
action_22 (29) = happyShift action_12
action_22 (4) = happyGoto action_43
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (21) = happyShift action_6
action_23 (24) = happyShift action_7
action_23 (25) = happyShift action_8
action_23 (26) = happyShift action_9
action_23 (27) = happyShift action_10
action_23 (28) = happyShift action_11
action_23 (29) = happyShift action_12
action_23 (4) = happyGoto action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (21) = happyShift action_6
action_24 (24) = happyShift action_7
action_24 (25) = happyShift action_8
action_24 (26) = happyShift action_9
action_24 (27) = happyShift action_10
action_24 (28) = happyShift action_11
action_24 (29) = happyShift action_12
action_24 (4) = happyGoto action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (21) = happyShift action_6
action_25 (24) = happyShift action_7
action_25 (25) = happyShift action_8
action_25 (26) = happyShift action_9
action_25 (27) = happyShift action_10
action_25 (28) = happyShift action_11
action_25 (29) = happyShift action_12
action_25 (4) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (21) = happyShift action_6
action_26 (24) = happyShift action_7
action_26 (25) = happyShift action_8
action_26 (26) = happyShift action_9
action_26 (27) = happyShift action_10
action_26 (28) = happyShift action_11
action_26 (29) = happyShift action_12
action_26 (4) = happyGoto action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (21) = happyShift action_6
action_27 (24) = happyShift action_7
action_27 (25) = happyShift action_8
action_27 (26) = happyShift action_9
action_27 (27) = happyShift action_10
action_27 (28) = happyShift action_11
action_27 (29) = happyShift action_12
action_27 (4) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (21) = happyShift action_6
action_28 (24) = happyShift action_7
action_28 (25) = happyShift action_8
action_28 (26) = happyShift action_9
action_28 (27) = happyShift action_10
action_28 (28) = happyShift action_11
action_28 (29) = happyShift action_12
action_28 (4) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (21) = happyShift action_6
action_29 (24) = happyShift action_7
action_29 (25) = happyShift action_8
action_29 (26) = happyShift action_9
action_29 (27) = happyShift action_10
action_29 (28) = happyShift action_11
action_29 (29) = happyShift action_12
action_29 (4) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (21) = happyShift action_6
action_30 (24) = happyShift action_7
action_30 (25) = happyShift action_8
action_30 (26) = happyShift action_9
action_30 (27) = happyShift action_10
action_30 (28) = happyShift action_11
action_30 (29) = happyShift action_12
action_30 (4) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (21) = happyShift action_6
action_31 (24) = happyShift action_7
action_31 (25) = happyShift action_8
action_31 (26) = happyShift action_9
action_31 (27) = happyShift action_10
action_31 (28) = happyShift action_11
action_31 (29) = happyShift action_12
action_31 (4) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (7) = happyShift action_4
action_32 (8) = happyShift action_5
action_32 (21) = happyShift action_6
action_32 (24) = happyShift action_7
action_32 (25) = happyShift action_8
action_32 (26) = happyShift action_9
action_32 (27) = happyShift action_10
action_32 (28) = happyShift action_11
action_32 (29) = happyShift action_12
action_32 (4) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (9) = happyShift action_21
action_33 (10) = happyShift action_22
action_33 (11) = happyShift action_23
action_33 (12) = happyShift action_24
action_33 (15) = happyFail []
action_33 (16) = happyFail []
action_33 (17) = happyFail []
action_33 (18) = happyFail []
action_33 (19) = happyFail []
action_33 (20) = happyFail []
action_33 _ = happyReduce_15

action_34 (9) = happyShift action_21
action_34 (10) = happyShift action_22
action_34 (11) = happyShift action_23
action_34 (12) = happyShift action_24
action_34 (15) = happyFail []
action_34 (16) = happyFail []
action_34 (17) = happyFail []
action_34 (18) = happyFail []
action_34 (19) = happyFail []
action_34 (20) = happyFail []
action_34 _ = happyReduce_14

action_35 (9) = happyShift action_21
action_35 (10) = happyShift action_22
action_35 (11) = happyShift action_23
action_35 (12) = happyShift action_24
action_35 (15) = happyFail []
action_35 (16) = happyFail []
action_35 (17) = happyFail []
action_35 (18) = happyFail []
action_35 (19) = happyFail []
action_35 (20) = happyFail []
action_35 _ = happyReduce_13

action_36 (9) = happyShift action_21
action_36 (10) = happyShift action_22
action_36 (11) = happyShift action_23
action_36 (12) = happyShift action_24
action_36 (15) = happyFail []
action_36 (16) = happyFail []
action_36 (17) = happyFail []
action_36 (18) = happyFail []
action_36 (19) = happyFail []
action_36 (20) = happyFail []
action_36 _ = happyReduce_12

action_37 (9) = happyShift action_21
action_37 (10) = happyShift action_22
action_37 (11) = happyShift action_23
action_37 (12) = happyShift action_24
action_37 (15) = happyFail []
action_37 (16) = happyFail []
action_37 (17) = happyFail []
action_37 (18) = happyFail []
action_37 (19) = happyFail []
action_37 (20) = happyFail []
action_37 _ = happyReduce_11

action_38 (9) = happyShift action_21
action_38 (10) = happyShift action_22
action_38 (11) = happyShift action_23
action_38 (12) = happyShift action_24
action_38 (15) = happyFail []
action_38 (16) = happyFail []
action_38 (17) = happyFail []
action_38 (18) = happyFail []
action_38 (19) = happyFail []
action_38 (20) = happyFail []
action_38 _ = happyReduce_10

action_39 (9) = happyShift action_21
action_39 (10) = happyShift action_22
action_39 (11) = happyShift action_23
action_39 (12) = happyShift action_24
action_39 (13) = happyShift action_25
action_39 (15) = happyShift action_27
action_39 (16) = happyShift action_28
action_39 (17) = happyShift action_29
action_39 (18) = happyShift action_30
action_39 (19) = happyShift action_31
action_39 (20) = happyShift action_32
action_39 _ = happyReduce_9

action_40 (9) = happyShift action_21
action_40 (10) = happyShift action_22
action_40 (11) = happyShift action_23
action_40 (12) = happyShift action_24
action_40 (15) = happyShift action_27
action_40 (16) = happyShift action_28
action_40 (17) = happyShift action_29
action_40 (18) = happyShift action_30
action_40 (19) = happyShift action_31
action_40 (20) = happyShift action_32
action_40 _ = happyReduce_8

action_41 _ = happyReduce_7

action_42 _ = happyReduce_6

action_43 (11) = happyShift action_23
action_43 (12) = happyShift action_24
action_43 _ = happyReduce_5

action_44 (11) = happyShift action_23
action_44 (12) = happyShift action_24
action_44 _ = happyReduce_4

action_45 (6) = happyShift action_2
action_45 (7) = happyShift action_4
action_45 (8) = happyShift action_5
action_45 (21) = happyShift action_6
action_45 (24) = happyShift action_7
action_45 (25) = happyShift action_8
action_45 (26) = happyShift action_9
action_45 (27) = happyShift action_10
action_45 (28) = happyShift action_11
action_45 (29) = happyShift action_12
action_45 (4) = happyGoto action_50
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (9) = happyShift action_21
action_46 (10) = happyShift action_22
action_46 (11) = happyShift action_23
action_46 (12) = happyShift action_24
action_46 (13) = happyShift action_25
action_46 (14) = happyShift action_26
action_46 (15) = happyShift action_27
action_46 (16) = happyShift action_28
action_46 (17) = happyShift action_29
action_46 (18) = happyShift action_30
action_46 (19) = happyShift action_31
action_46 (20) = happyShift action_32
action_46 _ = happyReduce_17

action_47 _ = happyReduce_23

action_48 (6) = happyShift action_2
action_48 (7) = happyShift action_4
action_48 (8) = happyShift action_5
action_48 (21) = happyShift action_6
action_48 (24) = happyShift action_7
action_48 (25) = happyShift action_8
action_48 (26) = happyShift action_9
action_48 (27) = happyShift action_10
action_48 (28) = happyShift action_11
action_48 (29) = happyShift action_12
action_48 (4) = happyGoto action_13
action_48 (5) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_25

action_50 (9) = happyShift action_21
action_50 (10) = happyShift action_22
action_50 (11) = happyShift action_23
action_50 (12) = happyShift action_24
action_50 (13) = happyShift action_25
action_50 (14) = happyShift action_26
action_50 (15) = happyShift action_27
action_50 (16) = happyShift action_28
action_50 (17) = happyShift action_29
action_50 (18) = happyShift action_30
action_50 (19) = happyShift action_31
action_50 (20) = happyShift action_32
action_50 (23) = happyShift action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (7) = happyShift action_4
action_51 (8) = happyShift action_5
action_51 (21) = happyShift action_6
action_51 (24) = happyShift action_7
action_51 (25) = happyShift action_8
action_51 (26) = happyShift action_9
action_51 (27) = happyShift action_10
action_51 (28) = happyShift action_11
action_51 (29) = happyShift action_12
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (9) = happyShift action_21
action_52 (10) = happyShift action_22
action_52 (11) = happyShift action_23
action_52 (12) = happyShift action_24
action_52 (13) = happyShift action_25
action_52 (14) = happyShift action_26
action_52 (15) = happyShift action_27
action_52 (16) = happyShift action_28
action_52 (17) = happyShift action_29
action_52 (18) = happyShift action_30
action_52 (19) = happyShift action_31
action_52 (20) = happyShift action_32
action_52 _ = happyReduce_16

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Div happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

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

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Dif happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LsT happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GrT happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LoE happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GoE happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Cons happy_var_2 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn4
		 (Nil
	)

happyReduce_19 = happySpecReduce_2  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (IsNil happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Head happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Tail happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 _
	_
	 =  HappyAbsSyn4
		 (Nil
	)

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 Nil
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (Cons happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTrue -> cont 6;
	TokenFalse -> cont 7;
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenDiv -> cont 12;
	TokenAnd -> cont 13;
	TokenOr -> cont 14;
	TokenEq -> cont 15;
	TokenDif -> cont 16;
	TokenLess -> cont 17;
	TokenGreater -> cont 18;
	TokenLsEq -> cont 19;
	TokenGrEq -> cont 20;
	TokenIf -> cont 21;
	TokenThen -> cont 22;
	TokenElse -> cont 23;
	TokenCons -> cont 24;
	TokenNil -> cont 25;
	TokenIsNil -> cont 26;
	TokenHead -> cont 27;
	TokenTail -> cont 28;
	TokenLBracket -> cont 29;
	TokenRBracket -> cont 30;
	TokenComma -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
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


parseError :: [Token] -> a 
parseError ts = error "Syntax error: sequência de instruções inválidas."
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































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









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

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
