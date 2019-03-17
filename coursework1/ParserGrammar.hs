{-# OPTIONS_GHC -w #-}
module ParserGrammar where
import LexerTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5
	= HappyTerminal (LexerToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,642) ([65408,33799,11298,512,0,0,65504,41217,2824,65520,20632,1532,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,1023,4418,57366,511,2209,61451,33023,33872,63493,16511,49704,64514,8255,24852,65025,4127,45194,65280,2063,22597,0,0,0,65472,16899,5649,65504,41217,2824,65520,20608,1412,0,64,0,4,0,0,2,0,0,4095,17672,32856,49155,49668,49187,24577,57602,57363,12799,64161,61451,39167,64593,14341,19520,32288,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48,240,112,16536,1144,32760,10304,706,16380,5152,353,8190,35344,176,4095,17672,32856,2047,8836,49196,1023,4418,57366,12799,63649,11,0,0,0,3072,0,0,1536,5120,0,768,0,0,384,1280,0,0,0,0,0,0,0,0,0,65520,20608,1412,32760,10348,766,16380,5152,353,0,3,15,4095,17672,32856,51199,59012,49199,1023,4418,57366,12799,63651,61451,33023,33872,63493,19583,65320,2,0,0,0,768,3840,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","int","true","false","begin","end","getStream","PREFIX","StrmArith","COPY","ACCUM","FIB","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","%eof"]
        bit_start = st * 47
        bit_end = (st + 1) * 47
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..46]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (8) = happyShift action_4
action_0 (9) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (11) = happyShift action_2
action_0 (12) = happyShift action_7
action_0 (13) = happyShift action_8
action_0 (14) = happyShift action_9
action_0 (15) = happyShift action_10
action_0 (16) = happyShift action_11
action_0 (17) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (27) = happyShift action_15
action_0 (32) = happyShift action_16
action_0 (34) = happyShift action_17
action_0 (38) = happyShift action_18
action_0 (43) = happyShift action_19
action_0 (44) = happyShift action_20
action_0 (46) = happyShift action_21
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_4
action_2 (9) = happyShift action_5
action_2 (10) = happyShift action_6
action_2 (11) = happyShift action_2
action_2 (12) = happyShift action_7
action_2 (13) = happyShift action_8
action_2 (14) = happyShift action_9
action_2 (15) = happyShift action_10
action_2 (16) = happyShift action_11
action_2 (17) = happyShift action_12
action_2 (18) = happyShift action_13
action_2 (19) = happyShift action_14
action_2 (27) = happyShift action_15
action_2 (32) = happyShift action_16
action_2 (34) = happyShift action_17
action_2 (38) = happyShift action_18
action_2 (43) = happyShift action_19
action_2 (44) = happyShift action_20
action_2 (46) = happyShift action_21
action_2 (4) = happyGoto action_42
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_6
action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_7
action_3 (13) = happyShift action_8
action_3 (14) = happyShift action_9
action_3 (15) = happyShift action_10
action_3 (16) = happyShift action_11
action_3 (17) = happyShift action_12
action_3 (18) = happyShift action_13
action_3 (19) = happyShift action_14
action_3 (23) = happyShift action_36
action_3 (24) = happyShift action_37
action_3 (27) = happyShift action_15
action_3 (32) = happyShift action_16
action_3 (34) = happyShift action_17
action_3 (38) = happyShift action_18
action_3 (39) = happyShift action_38
action_3 (40) = happyShift action_39
action_3 (41) = happyShift action_40
action_3 (42) = happyShift action_41
action_3 (43) = happyShift action_19
action_3 (44) = happyShift action_20
action_3 (46) = happyShift action_21
action_3 (47) = happyAccept
action_3 (4) = happyGoto action_35
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (8) = happyFail []
action_4 (9) = happyFail []
action_4 (10) = happyFail []
action_4 (13) = happyShift action_8
action_4 (14) = happyShift action_9
action_4 (15) = happyShift action_10
action_4 (16) = happyShift action_11
action_4 (17) = happyShift action_12
action_4 (18) = happyShift action_13
action_4 (27) = happyFail []
action_4 (32) = happyShift action_16
action_4 (44) = happyShift action_20
action_4 (4) = happyGoto action_34
action_4 _ = happyReduce_16

action_5 _ = happyReduce_18

action_6 _ = happyReduce_19

action_7 _ = happyReduce_26

action_8 _ = happyReduce_4

action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_2
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (14) = happyShift action_9
action_9 (15) = happyShift action_10
action_9 (16) = happyShift action_11
action_9 (17) = happyShift action_12
action_9 (18) = happyShift action_13
action_9 (19) = happyShift action_14
action_9 (27) = happyShift action_15
action_9 (32) = happyShift action_16
action_9 (34) = happyShift action_17
action_9 (38) = happyShift action_18
action_9 (43) = happyShift action_19
action_9 (44) = happyShift action_20
action_9 (46) = happyShift action_21
action_9 (4) = happyGoto action_33
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_4
action_10 (9) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (11) = happyShift action_2
action_10 (12) = happyShift action_7
action_10 (13) = happyShift action_8
action_10 (14) = happyShift action_9
action_10 (15) = happyShift action_10
action_10 (16) = happyShift action_11
action_10 (17) = happyShift action_12
action_10 (18) = happyShift action_13
action_10 (19) = happyShift action_14
action_10 (27) = happyShift action_15
action_10 (32) = happyShift action_16
action_10 (34) = happyShift action_17
action_10 (38) = happyShift action_18
action_10 (43) = happyShift action_19
action_10 (44) = happyShift action_20
action_10 (46) = happyShift action_21
action_10 (4) = happyGoto action_32
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_2
action_11 (12) = happyShift action_7
action_11 (13) = happyShift action_8
action_11 (14) = happyShift action_9
action_11 (15) = happyShift action_10
action_11 (16) = happyShift action_11
action_11 (17) = happyShift action_12
action_11 (18) = happyShift action_13
action_11 (19) = happyShift action_14
action_11 (27) = happyShift action_15
action_11 (32) = happyShift action_16
action_11 (34) = happyShift action_17
action_11 (38) = happyShift action_18
action_11 (43) = happyShift action_19
action_11 (44) = happyShift action_20
action_11 (46) = happyShift action_21
action_11 (4) = happyGoto action_31
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_4
action_12 (9) = happyShift action_5
action_12 (10) = happyShift action_6
action_12 (11) = happyShift action_2
action_12 (12) = happyShift action_7
action_12 (13) = happyShift action_8
action_12 (14) = happyShift action_9
action_12 (15) = happyShift action_10
action_12 (16) = happyShift action_11
action_12 (17) = happyShift action_12
action_12 (18) = happyShift action_13
action_12 (19) = happyShift action_14
action_12 (27) = happyShift action_15
action_12 (32) = happyShift action_16
action_12 (34) = happyShift action_17
action_12 (38) = happyShift action_18
action_12 (43) = happyShift action_19
action_12 (44) = happyShift action_20
action_12 (46) = happyShift action_21
action_12 (4) = happyGoto action_30
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_6
action_13 (11) = happyShift action_2
action_13 (12) = happyShift action_7
action_13 (13) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (15) = happyShift action_10
action_13 (16) = happyShift action_11
action_13 (17) = happyShift action_12
action_13 (18) = happyShift action_13
action_13 (19) = happyShift action_14
action_13 (27) = happyShift action_15
action_13 (32) = happyShift action_16
action_13 (34) = happyShift action_17
action_13 (38) = happyShift action_18
action_13 (43) = happyShift action_19
action_13 (44) = happyShift action_20
action_13 (46) = happyShift action_21
action_13 (4) = happyGoto action_29
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (10) = happyShift action_6
action_14 (11) = happyShift action_2
action_14 (12) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (14) = happyShift action_9
action_14 (15) = happyShift action_10
action_14 (16) = happyShift action_11
action_14 (17) = happyShift action_12
action_14 (18) = happyShift action_13
action_14 (19) = happyShift action_14
action_14 (27) = happyShift action_15
action_14 (32) = happyShift action_16
action_14 (34) = happyShift action_17
action_14 (38) = happyShift action_18
action_14 (43) = happyShift action_19
action_14 (44) = happyShift action_20
action_14 (46) = happyShift action_21
action_14 (4) = happyGoto action_28
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_6
action_15 (11) = happyShift action_2
action_15 (12) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (14) = happyShift action_9
action_15 (15) = happyShift action_10
action_15 (16) = happyShift action_11
action_15 (17) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (27) = happyShift action_15
action_15 (32) = happyShift action_16
action_15 (34) = happyShift action_17
action_15 (38) = happyShift action_18
action_15 (43) = happyShift action_19
action_15 (44) = happyShift action_20
action_15 (46) = happyShift action_21
action_15 (4) = happyGoto action_27
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_17

action_17 (8) = happyShift action_4
action_17 (9) = happyShift action_5
action_17 (10) = happyShift action_6
action_17 (11) = happyShift action_2
action_17 (12) = happyShift action_7
action_17 (13) = happyShift action_8
action_17 (14) = happyShift action_9
action_17 (15) = happyShift action_10
action_17 (16) = happyShift action_11
action_17 (17) = happyShift action_12
action_17 (18) = happyShift action_13
action_17 (19) = happyShift action_14
action_17 (27) = happyShift action_15
action_17 (32) = happyShift action_16
action_17 (34) = happyShift action_17
action_17 (38) = happyShift action_18
action_17 (43) = happyShift action_19
action_17 (44) = happyShift action_20
action_17 (46) = happyShift action_21
action_17 (4) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (10) = happyShift action_6
action_18 (11) = happyShift action_2
action_18 (12) = happyShift action_7
action_18 (13) = happyShift action_8
action_18 (14) = happyShift action_9
action_18 (15) = happyShift action_10
action_18 (16) = happyShift action_11
action_18 (17) = happyShift action_12
action_18 (18) = happyShift action_13
action_18 (19) = happyShift action_14
action_18 (27) = happyShift action_15
action_18 (32) = happyShift action_16
action_18 (34) = happyShift action_17
action_18 (38) = happyShift action_18
action_18 (43) = happyShift action_19
action_18 (44) = happyShift action_20
action_18 (46) = happyShift action_21
action_18 (4) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_6
action_19 (11) = happyShift action_2
action_19 (12) = happyShift action_7
action_19 (13) = happyShift action_8
action_19 (14) = happyShift action_9
action_19 (15) = happyShift action_10
action_19 (16) = happyShift action_11
action_19 (17) = happyShift action_12
action_19 (18) = happyShift action_13
action_19 (19) = happyShift action_14
action_19 (27) = happyShift action_15
action_19 (32) = happyShift action_16
action_19 (34) = happyShift action_17
action_19 (38) = happyShift action_18
action_19 (43) = happyShift action_19
action_19 (44) = happyShift action_20
action_19 (46) = happyShift action_21
action_19 (4) = happyGoto action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (27) = happyShift action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_53
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (11) = happyShift action_2
action_23 (12) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (15) = happyShift action_10
action_23 (16) = happyShift action_11
action_23 (17) = happyShift action_12
action_23 (18) = happyShift action_13
action_23 (19) = happyShift action_14
action_23 (27) = happyShift action_15
action_23 (32) = happyShift action_16
action_23 (34) = happyShift action_17
action_23 (38) = happyShift action_18
action_23 (43) = happyShift action_19
action_23 (44) = happyShift action_20
action_23 (46) = happyShift action_21
action_23 (4) = happyGoto action_52
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (13) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (15) = happyShift action_10
action_24 (16) = happyShift action_11
action_24 (17) = happyShift action_12
action_24 (18) = happyShift action_13
action_24 (23) = happyShift action_36
action_24 (24) = happyShift action_37
action_24 (27) = happyShift action_15
action_24 (32) = happyShift action_16
action_24 (34) = happyShift action_17
action_24 (39) = happyShift action_38
action_24 (40) = happyShift action_39
action_24 (41) = happyShift action_40
action_24 (42) = happyShift action_41
action_24 (44) = happyShift action_20
action_24 (46) = happyShift action_21
action_24 (4) = happyGoto action_35
action_24 _ = happyReduce_6

action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (13) = happyShift action_8
action_25 (14) = happyShift action_9
action_25 (15) = happyShift action_10
action_25 (16) = happyShift action_11
action_25 (17) = happyShift action_12
action_25 (18) = happyShift action_13
action_25 (23) = happyShift action_36
action_25 (24) = happyShift action_37
action_25 (27) = happyShift action_15
action_25 (32) = happyShift action_16
action_25 (34) = happyShift action_17
action_25 (39) = happyShift action_38
action_25 (40) = happyShift action_39
action_25 (41) = happyShift action_40
action_25 (42) = happyShift action_41
action_25 (43) = happyShift action_19
action_25 (44) = happyShift action_20
action_25 (46) = happyShift action_21
action_25 (4) = happyGoto action_35
action_25 _ = happyReduce_5

action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (11) = happyShift action_2
action_26 (12) = happyShift action_7
action_26 (13) = happyShift action_8
action_26 (14) = happyShift action_9
action_26 (15) = happyShift action_10
action_26 (16) = happyShift action_11
action_26 (17) = happyShift action_12
action_26 (18) = happyShift action_13
action_26 (19) = happyShift action_14
action_26 (23) = happyShift action_36
action_26 (24) = happyShift action_37
action_26 (27) = happyShift action_15
action_26 (32) = happyShift action_16
action_26 (34) = happyShift action_17
action_26 (36) = happyShift action_51
action_26 (38) = happyShift action_18
action_26 (39) = happyShift action_38
action_26 (40) = happyShift action_39
action_26 (41) = happyShift action_40
action_26 (42) = happyShift action_41
action_26 (43) = happyShift action_19
action_26 (44) = happyShift action_20
action_26 (46) = happyShift action_21
action_26 (4) = happyGoto action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (11) = happyShift action_2
action_27 (12) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (14) = happyShift action_9
action_27 (15) = happyShift action_10
action_27 (16) = happyShift action_11
action_27 (17) = happyShift action_12
action_27 (18) = happyShift action_13
action_27 (19) = happyShift action_14
action_27 (23) = happyShift action_36
action_27 (24) = happyShift action_37
action_27 (27) = happyShift action_15
action_27 (28) = happyShift action_50
action_27 (32) = happyShift action_16
action_27 (34) = happyShift action_17
action_27 (38) = happyShift action_18
action_27 (39) = happyShift action_38
action_27 (40) = happyShift action_39
action_27 (41) = happyShift action_40
action_27 (42) = happyShift action_41
action_27 (43) = happyShift action_19
action_27 (44) = happyShift action_20
action_27 (46) = happyShift action_21
action_27 (4) = happyGoto action_35
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_6
action_28 (13) = happyShift action_8
action_28 (14) = happyShift action_9
action_28 (15) = happyShift action_10
action_28 (16) = happyShift action_11
action_28 (17) = happyShift action_12
action_28 (18) = happyShift action_13
action_28 (19) = happyShift action_14
action_28 (23) = happyShift action_36
action_28 (24) = happyShift action_37
action_28 (27) = happyShift action_15
action_28 (32) = happyShift action_16
action_28 (34) = happyShift action_17
action_28 (38) = happyShift action_18
action_28 (39) = happyShift action_38
action_28 (40) = happyShift action_39
action_28 (41) = happyShift action_40
action_28 (42) = happyShift action_41
action_28 (43) = happyShift action_19
action_28 (44) = happyShift action_20
action_28 (46) = happyShift action_21
action_28 (4) = happyGoto action_35
action_28 _ = happyReduce_20

action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (11) = happyShift action_2
action_29 (12) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (15) = happyShift action_10
action_29 (16) = happyShift action_11
action_29 (17) = happyShift action_12
action_29 (18) = happyShift action_13
action_29 (19) = happyShift action_14
action_29 (23) = happyShift action_36
action_29 (24) = happyShift action_37
action_29 (27) = happyShift action_15
action_29 (32) = happyShift action_16
action_29 (34) = happyShift action_17
action_29 (38) = happyShift action_18
action_29 (39) = happyShift action_38
action_29 (40) = happyShift action_39
action_29 (41) = happyShift action_40
action_29 (42) = happyShift action_41
action_29 (43) = happyShift action_19
action_29 (44) = happyShift action_20
action_29 (46) = happyShift action_21
action_29 (4) = happyGoto action_35
action_29 _ = happyReduce_25

action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (10) = happyShift action_6
action_30 (11) = happyShift action_2
action_30 (12) = happyShift action_7
action_30 (13) = happyShift action_8
action_30 (14) = happyShift action_9
action_30 (15) = happyShift action_10
action_30 (16) = happyShift action_11
action_30 (17) = happyShift action_12
action_30 (18) = happyShift action_13
action_30 (19) = happyShift action_14
action_30 (23) = happyShift action_36
action_30 (24) = happyShift action_37
action_30 (27) = happyShift action_15
action_30 (32) = happyShift action_16
action_30 (34) = happyShift action_17
action_30 (38) = happyShift action_18
action_30 (39) = happyShift action_38
action_30 (40) = happyShift action_39
action_30 (41) = happyShift action_40
action_30 (42) = happyShift action_41
action_30 (43) = happyShift action_19
action_30 (44) = happyShift action_20
action_30 (46) = happyShift action_21
action_30 (4) = happyGoto action_35
action_30 _ = happyReduce_24

action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_6
action_31 (11) = happyShift action_2
action_31 (12) = happyShift action_7
action_31 (13) = happyShift action_8
action_31 (14) = happyShift action_9
action_31 (15) = happyShift action_10
action_31 (16) = happyShift action_11
action_31 (17) = happyShift action_12
action_31 (18) = happyShift action_13
action_31 (19) = happyShift action_14
action_31 (23) = happyShift action_36
action_31 (24) = happyShift action_37
action_31 (27) = happyShift action_15
action_31 (32) = happyShift action_16
action_31 (34) = happyShift action_17
action_31 (38) = happyShift action_18
action_31 (39) = happyShift action_38
action_31 (40) = happyShift action_39
action_31 (41) = happyShift action_40
action_31 (42) = happyShift action_41
action_31 (43) = happyShift action_19
action_31 (44) = happyShift action_20
action_31 (46) = happyShift action_21
action_31 (4) = happyGoto action_35
action_31 _ = happyReduce_23

action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (11) = happyShift action_2
action_32 (12) = happyShift action_7
action_32 (13) = happyShift action_8
action_32 (14) = happyShift action_9
action_32 (15) = happyShift action_10
action_32 (16) = happyShift action_11
action_32 (17) = happyShift action_12
action_32 (18) = happyShift action_13
action_32 (19) = happyShift action_14
action_32 (23) = happyShift action_36
action_32 (24) = happyShift action_37
action_32 (27) = happyShift action_15
action_32 (32) = happyShift action_16
action_32 (34) = happyShift action_17
action_32 (38) = happyShift action_18
action_32 (39) = happyShift action_38
action_32 (40) = happyShift action_39
action_32 (41) = happyShift action_40
action_32 (42) = happyShift action_41
action_32 (43) = happyShift action_19
action_32 (44) = happyShift action_20
action_32 (46) = happyShift action_21
action_32 (4) = happyGoto action_35
action_32 _ = happyReduce_22

action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (11) = happyShift action_2
action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (15) = happyShift action_10
action_33 (16) = happyShift action_11
action_33 (17) = happyShift action_12
action_33 (18) = happyShift action_13
action_33 (19) = happyShift action_14
action_33 (23) = happyShift action_36
action_33 (24) = happyShift action_37
action_33 (27) = happyShift action_15
action_33 (32) = happyShift action_16
action_33 (34) = happyShift action_17
action_33 (38) = happyShift action_18
action_33 (39) = happyShift action_38
action_33 (40) = happyShift action_39
action_33 (41) = happyShift action_40
action_33 (42) = happyShift action_41
action_33 (43) = happyShift action_19
action_33 (44) = happyShift action_20
action_33 (46) = happyShift action_21
action_33 (4) = happyGoto action_35
action_33 _ = happyReduce_21

action_34 (8) = happyFail []
action_34 (9) = happyFail []
action_34 (10) = happyFail []
action_34 (13) = happyShift action_8
action_34 (14) = happyShift action_9
action_34 (15) = happyShift action_10
action_34 (16) = happyShift action_11
action_34 (17) = happyShift action_12
action_34 (18) = happyShift action_13
action_34 (23) = happyShift action_36
action_34 (24) = happyShift action_37
action_34 (27) = happyFail []
action_34 (32) = happyShift action_16
action_34 (39) = happyShift action_38
action_34 (40) = happyShift action_39
action_34 (41) = happyShift action_40
action_34 (42) = happyShift action_41
action_34 (44) = happyShift action_20
action_34 (4) = happyGoto action_35
action_34 _ = happyReduce_15

action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (10) = happyShift action_6
action_35 (13) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (15) = happyShift action_10
action_35 (16) = happyShift action_11
action_35 (17) = happyShift action_12
action_35 (18) = happyShift action_13
action_35 (23) = happyShift action_36
action_35 (24) = happyShift action_37
action_35 (27) = happyShift action_15
action_35 (32) = happyShift action_16
action_35 (34) = happyShift action_17
action_35 (39) = happyShift action_38
action_35 (40) = happyShift action_39
action_35 (41) = happyShift action_40
action_35 (42) = happyShift action_41
action_35 (44) = happyShift action_20
action_35 (46) = happyShift action_21
action_35 (4) = happyGoto action_35
action_35 _ = happyReduce_14

action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_6
action_36 (11) = happyShift action_2
action_36 (12) = happyShift action_7
action_36 (13) = happyShift action_8
action_36 (14) = happyShift action_9
action_36 (15) = happyShift action_10
action_36 (16) = happyShift action_11
action_36 (17) = happyShift action_12
action_36 (18) = happyShift action_13
action_36 (19) = happyShift action_14
action_36 (27) = happyShift action_15
action_36 (32) = happyShift action_16
action_36 (34) = happyShift action_17
action_36 (38) = happyShift action_18
action_36 (43) = happyShift action_19
action_36 (44) = happyShift action_20
action_36 (46) = happyShift action_21
action_36 (4) = happyGoto action_49
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (11) = happyShift action_2
action_37 (12) = happyShift action_7
action_37 (13) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (15) = happyShift action_10
action_37 (16) = happyShift action_11
action_37 (17) = happyShift action_12
action_37 (18) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (27) = happyShift action_15
action_37 (32) = happyShift action_16
action_37 (34) = happyShift action_17
action_37 (38) = happyShift action_18
action_37 (43) = happyShift action_19
action_37 (44) = happyShift action_20
action_37 (46) = happyShift action_21
action_37 (4) = happyGoto action_48
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (10) = happyShift action_6
action_38 (11) = happyShift action_2
action_38 (12) = happyShift action_7
action_38 (13) = happyShift action_8
action_38 (14) = happyShift action_9
action_38 (15) = happyShift action_10
action_38 (16) = happyShift action_11
action_38 (17) = happyShift action_12
action_38 (18) = happyShift action_13
action_38 (19) = happyShift action_14
action_38 (27) = happyShift action_15
action_38 (32) = happyShift action_16
action_38 (34) = happyShift action_17
action_38 (38) = happyShift action_18
action_38 (43) = happyShift action_19
action_38 (44) = happyShift action_20
action_38 (46) = happyShift action_21
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (10) = happyShift action_6
action_39 (11) = happyShift action_2
action_39 (12) = happyShift action_7
action_39 (13) = happyShift action_8
action_39 (14) = happyShift action_9
action_39 (15) = happyShift action_10
action_39 (16) = happyShift action_11
action_39 (17) = happyShift action_12
action_39 (18) = happyShift action_13
action_39 (19) = happyShift action_14
action_39 (27) = happyShift action_15
action_39 (32) = happyShift action_16
action_39 (34) = happyShift action_17
action_39 (38) = happyShift action_18
action_39 (43) = happyShift action_19
action_39 (44) = happyShift action_20
action_39 (46) = happyShift action_21
action_39 (4) = happyGoto action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_5
action_40 (10) = happyShift action_6
action_40 (11) = happyShift action_2
action_40 (12) = happyShift action_7
action_40 (13) = happyShift action_8
action_40 (14) = happyShift action_9
action_40 (15) = happyShift action_10
action_40 (16) = happyShift action_11
action_40 (17) = happyShift action_12
action_40 (18) = happyShift action_13
action_40 (19) = happyShift action_14
action_40 (27) = happyShift action_15
action_40 (32) = happyShift action_16
action_40 (34) = happyShift action_17
action_40 (38) = happyShift action_18
action_40 (43) = happyShift action_19
action_40 (44) = happyShift action_20
action_40 (46) = happyShift action_21
action_40 (4) = happyGoto action_45
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (10) = happyShift action_6
action_41 (11) = happyShift action_2
action_41 (12) = happyShift action_7
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (15) = happyShift action_10
action_41 (16) = happyShift action_11
action_41 (17) = happyShift action_12
action_41 (18) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (27) = happyShift action_15
action_41 (32) = happyShift action_16
action_41 (34) = happyShift action_17
action_41 (38) = happyShift action_18
action_41 (43) = happyShift action_19
action_41 (44) = happyShift action_20
action_41 (46) = happyShift action_21
action_41 (4) = happyGoto action_44
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (10) = happyShift action_6
action_42 (11) = happyShift action_2
action_42 (12) = happyShift action_43
action_42 (13) = happyShift action_8
action_42 (14) = happyShift action_9
action_42 (15) = happyShift action_10
action_42 (16) = happyShift action_11
action_42 (17) = happyShift action_12
action_42 (18) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (23) = happyShift action_36
action_42 (24) = happyShift action_37
action_42 (27) = happyShift action_15
action_42 (32) = happyShift action_16
action_42 (34) = happyShift action_17
action_42 (38) = happyShift action_18
action_42 (39) = happyShift action_38
action_42 (40) = happyShift action_39
action_42 (41) = happyShift action_40
action_42 (42) = happyShift action_41
action_42 (43) = happyShift action_19
action_42 (44) = happyShift action_20
action_42 (46) = happyShift action_21
action_42 (4) = happyGoto action_35
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (8) = happyReduce_1
action_43 (9) = happyReduce_1
action_43 (10) = happyReduce_1
action_43 (11) = happyReduce_1
action_43 (12) = happyReduce_1
action_43 (13) = happyReduce_1
action_43 (14) = happyReduce_1
action_43 (15) = happyReduce_1
action_43 (16) = happyReduce_1
action_43 (17) = happyReduce_1
action_43 (18) = happyReduce_1
action_43 (19) = happyReduce_1
action_43 (23) = happyReduce_1
action_43 (24) = happyReduce_1
action_43 (27) = happyReduce_1
action_43 (32) = happyReduce_1
action_43 (34) = happyReduce_1
action_43 (38) = happyReduce_1
action_43 (39) = happyReduce_1
action_43 (40) = happyReduce_1
action_43 (41) = happyReduce_1
action_43 (42) = happyReduce_1
action_43 (43) = happyReduce_1
action_43 (44) = happyReduce_1
action_43 (46) = happyReduce_1
action_43 _ = happyReduce_1

action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (15) = happyShift action_10
action_44 (16) = happyShift action_11
action_44 (17) = happyShift action_12
action_44 (18) = happyShift action_13
action_44 (23) = happyShift action_36
action_44 (24) = happyShift action_37
action_44 (32) = happyShift action_16
action_44 (44) = happyShift action_20
action_44 (4) = happyGoto action_35
action_44 _ = happyReduce_10

action_45 (13) = happyShift action_8
action_45 (14) = happyShift action_9
action_45 (15) = happyShift action_10
action_45 (16) = happyShift action_11
action_45 (17) = happyShift action_12
action_45 (18) = happyShift action_13
action_45 (23) = happyShift action_36
action_45 (24) = happyShift action_37
action_45 (32) = happyShift action_16
action_45 (40) = happyShift action_39
action_45 (42) = happyShift action_41
action_45 (44) = happyShift action_20
action_45 (4) = happyGoto action_35
action_45 _ = happyReduce_8

action_46 (13) = happyShift action_8
action_46 (14) = happyShift action_9
action_46 (15) = happyShift action_10
action_46 (16) = happyShift action_11
action_46 (17) = happyShift action_12
action_46 (18) = happyShift action_13
action_46 (23) = happyShift action_36
action_46 (24) = happyShift action_37
action_46 (32) = happyShift action_16
action_46 (44) = happyShift action_20
action_46 (4) = happyGoto action_35
action_46 _ = happyReduce_9

action_47 (13) = happyShift action_8
action_47 (14) = happyShift action_9
action_47 (15) = happyShift action_10
action_47 (16) = happyShift action_11
action_47 (17) = happyShift action_12
action_47 (18) = happyShift action_13
action_47 (23) = happyShift action_36
action_47 (24) = happyShift action_37
action_47 (32) = happyShift action_16
action_47 (40) = happyShift action_39
action_47 (42) = happyShift action_41
action_47 (44) = happyShift action_20
action_47 (4) = happyGoto action_35
action_47 _ = happyReduce_7

action_48 (13) = happyShift action_8
action_48 (14) = happyShift action_9
action_48 (15) = happyShift action_10
action_48 (16) = happyShift action_11
action_48 (17) = happyShift action_12
action_48 (18) = happyShift action_13
action_48 (32) = happyShift action_16
action_48 (44) = happyShift action_20
action_48 (4) = happyGoto action_35
action_48 _ = happyReduce_12

action_49 (13) = happyShift action_8
action_49 (14) = happyShift action_9
action_49 (15) = happyShift action_10
action_49 (16) = happyShift action_11
action_49 (17) = happyShift action_12
action_49 (18) = happyShift action_13
action_49 (32) = happyShift action_16
action_49 (44) = happyShift action_20
action_49 (4) = happyGoto action_35
action_49 _ = happyReduce_11

action_50 _ = happyReduce_27

action_51 (8) = happyShift action_4
action_51 (9) = happyShift action_5
action_51 (10) = happyShift action_6
action_51 (11) = happyShift action_2
action_51 (12) = happyShift action_7
action_51 (13) = happyShift action_8
action_51 (14) = happyShift action_9
action_51 (15) = happyShift action_10
action_51 (16) = happyShift action_11
action_51 (17) = happyShift action_12
action_51 (18) = happyShift action_13
action_51 (19) = happyShift action_14
action_51 (27) = happyShift action_15
action_51 (32) = happyShift action_16
action_51 (34) = happyShift action_17
action_51 (38) = happyShift action_18
action_51 (43) = happyShift action_19
action_51 (44) = happyShift action_20
action_51 (46) = happyShift action_21
action_51 (4) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_4
action_52 (9) = happyShift action_5
action_52 (10) = happyShift action_6
action_52 (11) = happyShift action_2
action_52 (12) = happyShift action_7
action_52 (13) = happyShift action_8
action_52 (14) = happyShift action_9
action_52 (15) = happyShift action_10
action_52 (16) = happyShift action_11
action_52 (17) = happyShift action_12
action_52 (18) = happyShift action_13
action_52 (19) = happyShift action_14
action_52 (23) = happyShift action_36
action_52 (24) = happyShift action_37
action_52 (26) = happyShift action_55
action_52 (27) = happyShift action_15
action_52 (32) = happyShift action_16
action_52 (34) = happyShift action_17
action_52 (38) = happyShift action_18
action_52 (39) = happyShift action_38
action_52 (40) = happyShift action_39
action_52 (41) = happyShift action_40
action_52 (42) = happyShift action_41
action_52 (43) = happyShift action_19
action_52 (44) = happyShift action_20
action_52 (46) = happyShift action_21
action_52 (4) = happyGoto action_35
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_4
action_53 (9) = happyShift action_5
action_53 (10) = happyShift action_6
action_53 (11) = happyShift action_2
action_53 (12) = happyShift action_7
action_53 (13) = happyShift action_8
action_53 (14) = happyShift action_9
action_53 (15) = happyShift action_10
action_53 (16) = happyShift action_11
action_53 (17) = happyShift action_12
action_53 (18) = happyShift action_13
action_53 (19) = happyShift action_14
action_53 (27) = happyShift action_15
action_53 (32) = happyShift action_16
action_53 (34) = happyShift action_17
action_53 (38) = happyShift action_18
action_53 (43) = happyShift action_19
action_53 (44) = happyShift action_20
action_53 (46) = happyShift action_21
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (8) = happyFail []
action_54 (9) = happyFail []
action_54 (10) = happyFail []
action_54 (13) = happyShift action_8
action_54 (14) = happyShift action_9
action_54 (15) = happyShift action_10
action_54 (16) = happyShift action_11
action_54 (17) = happyShift action_12
action_54 (18) = happyShift action_13
action_54 (23) = happyShift action_36
action_54 (24) = happyShift action_37
action_54 (27) = happyFail []
action_54 (32) = happyShift action_16
action_54 (39) = happyShift action_38
action_54 (40) = happyShift action_39
action_54 (41) = happyShift action_40
action_54 (42) = happyShift action_41
action_54 (44) = happyShift action_20
action_54 (4) = happyGoto action_35
action_54 _ = happyReduce_3

action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_5
action_55 (10) = happyShift action_6
action_55 (11) = happyShift action_2
action_55 (12) = happyShift action_7
action_55 (13) = happyShift action_8
action_55 (14) = happyShift action_9
action_55 (15) = happyShift action_10
action_55 (16) = happyShift action_11
action_55 (17) = happyShift action_12
action_55 (18) = happyShift action_13
action_55 (19) = happyShift action_14
action_55 (27) = happyShift action_15
action_55 (32) = happyShift action_16
action_55 (34) = happyShift action_17
action_55 (38) = happyShift action_18
action_55 (43) = happyShift action_19
action_55 (44) = happyShift action_20
action_55 (46) = happyShift action_21
action_55 (4) = happyGoto action_58
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_4
action_56 (9) = happyShift action_5
action_56 (10) = happyShift action_6
action_56 (11) = happyShift action_2
action_56 (12) = happyShift action_7
action_56 (13) = happyShift action_8
action_56 (14) = happyShift action_9
action_56 (15) = happyShift action_10
action_56 (16) = happyShift action_11
action_56 (17) = happyShift action_12
action_56 (18) = happyShift action_13
action_56 (19) = happyShift action_14
action_56 (23) = happyShift action_36
action_56 (24) = happyShift action_37
action_56 (27) = happyShift action_15
action_56 (32) = happyShift action_16
action_56 (34) = happyShift action_17
action_56 (35) = happyShift action_57
action_56 (38) = happyShift action_18
action_56 (39) = happyShift action_38
action_56 (40) = happyShift action_39
action_56 (41) = happyShift action_40
action_56 (42) = happyShift action_41
action_56 (43) = happyShift action_19
action_56 (44) = happyShift action_20
action_56 (46) = happyShift action_21
action_56 (4) = happyGoto action_35
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (8) = happyShift action_4
action_57 (9) = happyShift action_5
action_57 (10) = happyShift action_6
action_57 (11) = happyShift action_2
action_57 (12) = happyShift action_7
action_57 (13) = happyShift action_8
action_57 (14) = happyShift action_9
action_57 (15) = happyShift action_10
action_57 (16) = happyShift action_11
action_57 (17) = happyShift action_12
action_57 (18) = happyShift action_13
action_57 (19) = happyShift action_14
action_57 (27) = happyShift action_15
action_57 (32) = happyShift action_16
action_57 (34) = happyShift action_17
action_57 (38) = happyShift action_18
action_57 (43) = happyShift action_19
action_57 (44) = happyShift action_20
action_57 (46) = happyShift action_21
action_57 (4) = happyGoto action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (8) = happyShift action_4
action_58 (9) = happyShift action_5
action_58 (10) = happyShift action_6
action_58 (11) = happyShift action_2
action_58 (12) = happyShift action_7
action_58 (13) = happyShift action_8
action_58 (14) = happyShift action_9
action_58 (15) = happyShift action_10
action_58 (16) = happyShift action_11
action_58 (17) = happyShift action_12
action_58 (18) = happyShift action_13
action_58 (19) = happyShift action_14
action_58 (23) = happyShift action_36
action_58 (24) = happyShift action_37
action_58 (27) = happyShift action_15
action_58 (28) = happyShift action_59
action_58 (32) = happyShift action_16
action_58 (34) = happyShift action_17
action_58 (38) = happyShift action_18
action_58 (39) = happyShift action_38
action_58 (40) = happyShift action_39
action_58 (41) = happyShift action_40
action_58 (42) = happyShift action_41
action_58 (43) = happyShift action_19
action_58 (44) = happyShift action_20
action_58 (46) = happyShift action_21
action_58 (4) = happyGoto action_35
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (8) = happyShift action_4
action_59 (9) = happyShift action_5
action_59 (10) = happyShift action_6
action_59 (11) = happyShift action_2
action_59 (12) = happyShift action_7
action_59 (13) = happyShift action_8
action_59 (14) = happyShift action_9
action_59 (15) = happyShift action_10
action_59 (16) = happyShift action_11
action_59 (17) = happyShift action_12
action_59 (18) = happyShift action_13
action_59 (19) = happyShift action_14
action_59 (27) = happyShift action_15
action_59 (32) = happyShift action_16
action_59 (34) = happyShift action_17
action_59 (38) = happyShift action_18
action_59 (43) = happyShift action_19
action_59 (44) = happyShift action_20
action_59 (46) = happyShift action_21
action_59 (4) = happyGoto action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (8) = happyShift action_4
action_60 (9) = happyShift action_5
action_60 (10) = happyShift action_6
action_60 (11) = happyShift action_2
action_60 (12) = happyShift action_7
action_60 (13) = happyShift action_8
action_60 (14) = happyShift action_9
action_60 (15) = happyShift action_10
action_60 (16) = happyShift action_11
action_60 (17) = happyShift action_12
action_60 (18) = happyShift action_13
action_60 (19) = happyShift action_14
action_60 (23) = happyShift action_36
action_60 (24) = happyShift action_37
action_60 (27) = happyShift action_15
action_60 (32) = happyShift action_16
action_60 (34) = happyShift action_17
action_60 (37) = happyShift action_61
action_60 (38) = happyShift action_18
action_60 (39) = happyShift action_38
action_60 (40) = happyShift action_39
action_60 (41) = happyShift action_40
action_60 (42) = happyShift action_41
action_60 (43) = happyShift action_19
action_60 (44) = happyShift action_20
action_60 (46) = happyShift action_21
action_60 (4) = happyGoto action_35
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_2

action_62 (8) = happyFail []
action_62 (9) = happyFail []
action_62 (10) = happyFail []
action_62 (13) = happyShift action_8
action_62 (14) = happyShift action_9
action_62 (15) = happyShift action_10
action_62 (16) = happyShift action_11
action_62 (17) = happyShift action_12
action_62 (18) = happyShift action_13
action_62 (23) = happyShift action_36
action_62 (24) = happyShift action_37
action_62 (27) = happyFail []
action_62 (32) = happyShift action_16
action_62 (39) = happyShift action_38
action_62 (40) = happyShift action_39
action_62 (41) = happyShift action_40
action_62 (42) = happyShift action_41
action_62 (44) = happyShift action_20
action_62 (4) = happyGoto action_35
action_62 _ = happyReduce_13

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBody happy_var_2
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 7 4 happyReduction_2
happyReduction_2 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmIf happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happyReduce 4 4 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmPush happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (TmGetStream
	)

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReverse happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLambda happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  4 happyReduction_16
happyReduction_16 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrefix happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmStrmArith happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmCopy happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmAccum happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_2  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmFib happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  4 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn4
		 (TmEnd
	)

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeBool _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenInt _ happy_dollar_dollar -> cont 8;
	TokenTrue _ -> cont 9;
	TokenFalse _ -> cont 10;
	TokenBegin _ -> cont 11;
	TokenEnd _ -> cont 12;
	TokenGetStream _ -> cont 13;
	TokenPrefix _ -> cont 14;
	TokenStrmArith _ -> cont 15;
	TokenCopy _ -> cont 16;
	TokenAccum _ -> cont 17;
	TokenFIB _ -> cont 18;
	TokenPrint _ -> cont 19;
	TokenEOL _ -> cont 20;
	TokenLet _ -> cont 21;
	TokenIn _ -> cont 22;
	TokenLT _ -> cont 23;
	TokenGT _ -> cont 24;
	TokenEq _ -> cont 25;
	TokenCol _ -> cont 26;
	TokenLParen _ -> cont 27;
	TokenRParen _ -> cont 28;
	TokenLBrckt _ -> cont 29;
	TokenRBrckt _ -> cont 30;
	TokenComma _ -> cont 31;
	TokenVar _ happy_dollar_dollar -> cont 32;
	TokenSemiCol _ -> cont 33;
	TokenIf _ -> cont 34;
	TokenElse _ -> cont 35;
	TokenThen _ -> cont 36;
	TokenFi _ -> cont 37;
	TokenReverse _ -> cont 38;
	TokenAdd _ -> cont 39;
	TokenMult _ -> cont 40;
	TokenSub _ -> cont 41;
	TokenDiv _ -> cont 42;
	TokenLength _ -> cont 43;
	TokenLambda _ -> cont 44;
	TokenArr _ -> cont 45;
	TokenPush _ -> cont 46;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 47 tk tks = happyError' (tks, explist)
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
happyError' :: () => ([(LexerToken)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [LexerToken] -> a
parseError [] = error "Unknown Parse Error"
parse (t:ts) = error ("Parse error at line:column" ++ (tokenPosn t))

-- data BoolValue = TmTrue | TmFalse
--              deriving(Show, Eq)


data DataType =TyBool | TyInt | TyFun DataType DataType
              deriving(Show, Eq)


type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data Expr = TmBody Expr | TmIf Expr Expr Expr | TmGt Expr Expr | TmLt Expr Expr
            | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInts Int Expr | TmInt Int | TmComma  | TmTrue | TmFalse
            | TmPush Int Int Expr | TmApp Expr Expr | TmLambda Expr Expr Expr
            | TmPrint Expr | TmEnd | TmVar String
            | TmReadL Expr | TmPrefix Expr | TmStrmArith Expr
            | TmCopy Expr | TmAccum Expr | TmFib Expr
            | Cl Expr Expr Expr Environment

            deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}





































































































































































































-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 











data Happy_IntList = HappyCons Int Happy_IntList




















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

