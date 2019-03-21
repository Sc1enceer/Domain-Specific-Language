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
happyExpList = Happy_Data_Array.listArray (0,690) ([49024,5152,64865,2048,0,0,65024,20610,62852,64515,57653,64504,7,8192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16767,49704,506,0,16,0,1532,2209,2027,0,0,0,6128,8836,8108,12256,17672,16216,24512,35344,32432,0,32,0,256,0,0,65024,20610,62852,64515,41221,60168,63495,16907,54801,61455,33815,44066,57375,2095,22597,49215,4191,45194,32894,9919,32540,255,19839,65080,510,39438,64624,188,13340,63713,377,26680,61890,177,55280,58244,8175,32,0,0,0,512,0,33664,7206,2879,1792,14413,1596,65024,28826,65021,64515,58165,64504,7,128,0,28672,34004,59363,57375,2095,22597,63,0,0,32768,8383,24852,253,16767,49704,506,33534,33872,1013,1532,2209,2027,3064,4418,4054,6128,8836,8108,12256,17672,16216,24512,35344,32432,49024,7206,65407,0,0,0,0,8216,120,0,16432,0,0,32864,320,0,192,1,0,384,1282,0,0,0,0,0,8,0,0,16,0,0,0,0,1532,2209,2027,0,0,0,6128,8836,8108,0,4,0,24512,35344,32432,0,0,0,0,0,0,0,0,0,0,16432,4336,1536,0,0,61440,34007,61415,31,0,0,49152,4191,45194,126,16384,32768,0,0,0,0,0,0,0,1532,2209,2027,6,0,0,55280,62340,8175,0,0,0,0,0,0,0,2054,542,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","int","true","false","begin","end","getStream","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","'++'","splitAt","duplicate","head","last","map","listsArith","%eof"]
        bit_start = st * 49
        bit_end = (st + 1) * 49
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..48]
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
action_0 (16) = happyShift action_10
action_0 (22) = happyShift action_11
action_0 (27) = happyShift action_12
action_0 (29) = happyShift action_13
action_0 (33) = happyShift action_14
action_0 (38) = happyShift action_15
action_0 (39) = happyShift action_16
action_0 (41) = happyShift action_17
action_0 (43) = happyShift action_18
action_0 (44) = happyShift action_19
action_0 (45) = happyShift action_20
action_0 (46) = happyShift action_21
action_0 (47) = happyShift action_22
action_0 (48) = happyShift action_23
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
action_2 (16) = happyShift action_10
action_2 (22) = happyShift action_11
action_2 (27) = happyShift action_12
action_2 (29) = happyShift action_13
action_2 (33) = happyShift action_14
action_2 (38) = happyShift action_15
action_2 (39) = happyShift action_16
action_2 (41) = happyShift action_17
action_2 (43) = happyShift action_18
action_2 (44) = happyShift action_19
action_2 (45) = happyShift action_20
action_2 (46) = happyShift action_21
action_2 (47) = happyShift action_22
action_2 (48) = happyShift action_23
action_2 (4) = happyGoto action_48
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_6
action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_7
action_3 (13) = happyShift action_8
action_3 (14) = happyShift action_9
action_3 (16) = happyShift action_10
action_3 (18) = happyShift action_40
action_3 (19) = happyShift action_41
action_3 (22) = happyShift action_11
action_3 (27) = happyShift action_12
action_3 (28) = happyShift action_42
action_3 (29) = happyShift action_13
action_3 (33) = happyShift action_14
action_3 (34) = happyShift action_43
action_3 (35) = happyShift action_44
action_3 (36) = happyShift action_45
action_3 (37) = happyShift action_46
action_3 (38) = happyShift action_15
action_3 (39) = happyShift action_16
action_3 (41) = happyShift action_17
action_3 (42) = happyShift action_47
action_3 (43) = happyShift action_18
action_3 (44) = happyShift action_19
action_3 (45) = happyShift action_20
action_3 (46) = happyShift action_21
action_3 (47) = happyShift action_22
action_3 (48) = happyShift action_23
action_3 (49) = happyAccept
action_3 (4) = happyGoto action_39
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_38
action_4 _ = happyReduce_24

action_5 _ = happyReduce_26

action_6 _ = happyReduce_27

action_7 _ = happyReduce_30

action_8 _ = happyReduce_4

action_9 (8) = happyShift action_4
action_9 (9) = happyShift action_5
action_9 (10) = happyShift action_6
action_9 (11) = happyShift action_2
action_9 (12) = happyShift action_7
action_9 (13) = happyShift action_8
action_9 (14) = happyShift action_9
action_9 (16) = happyShift action_10
action_9 (22) = happyShift action_11
action_9 (27) = happyShift action_12
action_9 (29) = happyShift action_13
action_9 (33) = happyShift action_14
action_9 (38) = happyShift action_15
action_9 (39) = happyShift action_16
action_9 (41) = happyShift action_17
action_9 (43) = happyShift action_18
action_9 (44) = happyShift action_19
action_9 (45) = happyShift action_20
action_9 (46) = happyShift action_21
action_9 (47) = happyShift action_22
action_9 (48) = happyShift action_23
action_9 (4) = happyGoto action_37
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_36
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_4
action_11 (9) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (11) = happyShift action_2
action_11 (12) = happyShift action_7
action_11 (13) = happyShift action_8
action_11 (14) = happyShift action_9
action_11 (16) = happyShift action_10
action_11 (22) = happyShift action_11
action_11 (27) = happyShift action_12
action_11 (29) = happyShift action_13
action_11 (33) = happyShift action_14
action_11 (38) = happyShift action_15
action_11 (39) = happyShift action_16
action_11 (41) = happyShift action_17
action_11 (43) = happyShift action_18
action_11 (44) = happyShift action_19
action_11 (45) = happyShift action_20
action_11 (46) = happyShift action_21
action_11 (47) = happyShift action_22
action_11 (48) = happyShift action_23
action_11 (4) = happyGoto action_35
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_25

action_13 (8) = happyShift action_4
action_13 (9) = happyShift action_5
action_13 (10) = happyShift action_6
action_13 (11) = happyShift action_2
action_13 (12) = happyShift action_7
action_13 (13) = happyShift action_8
action_13 (14) = happyShift action_9
action_13 (16) = happyShift action_10
action_13 (22) = happyShift action_11
action_13 (27) = happyShift action_12
action_13 (29) = happyShift action_13
action_13 (33) = happyShift action_14
action_13 (38) = happyShift action_15
action_13 (39) = happyShift action_16
action_13 (41) = happyShift action_17
action_13 (43) = happyShift action_18
action_13 (44) = happyShift action_19
action_13 (45) = happyShift action_20
action_13 (46) = happyShift action_21
action_13 (47) = happyShift action_22
action_13 (48) = happyShift action_23
action_13 (4) = happyGoto action_34
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_4
action_14 (9) = happyShift action_5
action_14 (10) = happyShift action_6
action_14 (11) = happyShift action_2
action_14 (12) = happyShift action_7
action_14 (13) = happyShift action_8
action_14 (14) = happyShift action_9
action_14 (16) = happyShift action_10
action_14 (22) = happyShift action_11
action_14 (27) = happyShift action_12
action_14 (29) = happyShift action_13
action_14 (33) = happyShift action_14
action_14 (38) = happyShift action_15
action_14 (39) = happyShift action_16
action_14 (41) = happyShift action_17
action_14 (43) = happyShift action_18
action_14 (44) = happyShift action_19
action_14 (45) = happyShift action_20
action_14 (46) = happyShift action_21
action_14 (47) = happyShift action_22
action_14 (48) = happyShift action_23
action_14 (4) = happyGoto action_33
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_4
action_15 (9) = happyShift action_5
action_15 (10) = happyShift action_6
action_15 (11) = happyShift action_2
action_15 (12) = happyShift action_7
action_15 (13) = happyShift action_8
action_15 (14) = happyShift action_9
action_15 (16) = happyShift action_10
action_15 (22) = happyShift action_11
action_15 (27) = happyShift action_12
action_15 (29) = happyShift action_13
action_15 (33) = happyShift action_14
action_15 (38) = happyShift action_15
action_15 (39) = happyShift action_16
action_15 (41) = happyShift action_17
action_15 (43) = happyShift action_18
action_15 (44) = happyShift action_19
action_15 (45) = happyShift action_20
action_15 (46) = happyShift action_21
action_15 (47) = happyShift action_22
action_15 (48) = happyShift action_23
action_15 (4) = happyGoto action_32
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (22) = happyShift action_31
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_30
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_4
action_18 (9) = happyShift action_5
action_18 (10) = happyShift action_6
action_18 (11) = happyShift action_2
action_18 (12) = happyShift action_7
action_18 (13) = happyShift action_8
action_18 (14) = happyShift action_9
action_18 (16) = happyShift action_10
action_18 (22) = happyShift action_11
action_18 (27) = happyShift action_12
action_18 (29) = happyShift action_13
action_18 (33) = happyShift action_14
action_18 (38) = happyShift action_15
action_18 (39) = happyShift action_16
action_18 (41) = happyShift action_17
action_18 (43) = happyShift action_18
action_18 (44) = happyShift action_19
action_18 (45) = happyShift action_20
action_18 (46) = happyShift action_21
action_18 (47) = happyShift action_22
action_18 (48) = happyShift action_23
action_18 (4) = happyGoto action_29
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_4
action_19 (9) = happyShift action_5
action_19 (10) = happyShift action_6
action_19 (11) = happyShift action_2
action_19 (12) = happyShift action_7
action_19 (13) = happyShift action_8
action_19 (14) = happyShift action_9
action_19 (16) = happyShift action_10
action_19 (22) = happyShift action_11
action_19 (27) = happyShift action_12
action_19 (29) = happyShift action_13
action_19 (33) = happyShift action_14
action_19 (38) = happyShift action_15
action_19 (39) = happyShift action_16
action_19 (41) = happyShift action_17
action_19 (43) = happyShift action_18
action_19 (44) = happyShift action_19
action_19 (45) = happyShift action_20
action_19 (46) = happyShift action_21
action_19 (47) = happyShift action_22
action_19 (48) = happyShift action_23
action_19 (4) = happyGoto action_28
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_6
action_20 (11) = happyShift action_2
action_20 (12) = happyShift action_7
action_20 (13) = happyShift action_8
action_20 (14) = happyShift action_9
action_20 (16) = happyShift action_10
action_20 (22) = happyShift action_11
action_20 (27) = happyShift action_12
action_20 (29) = happyShift action_13
action_20 (33) = happyShift action_14
action_20 (38) = happyShift action_15
action_20 (39) = happyShift action_16
action_20 (41) = happyShift action_17
action_20 (43) = happyShift action_18
action_20 (44) = happyShift action_19
action_20 (45) = happyShift action_20
action_20 (46) = happyShift action_21
action_20 (47) = happyShift action_22
action_20 (48) = happyShift action_23
action_20 (4) = happyGoto action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (10) = happyShift action_6
action_21 (11) = happyShift action_2
action_21 (12) = happyShift action_7
action_21 (13) = happyShift action_8
action_21 (14) = happyShift action_9
action_21 (16) = happyShift action_10
action_21 (22) = happyShift action_11
action_21 (27) = happyShift action_12
action_21 (29) = happyShift action_13
action_21 (33) = happyShift action_14
action_21 (38) = happyShift action_15
action_21 (39) = happyShift action_16
action_21 (41) = happyShift action_17
action_21 (43) = happyShift action_18
action_21 (44) = happyShift action_19
action_21 (45) = happyShift action_20
action_21 (46) = happyShift action_21
action_21 (47) = happyShift action_22
action_21 (48) = happyShift action_23
action_21 (4) = happyGoto action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_4
action_22 (9) = happyShift action_5
action_22 (10) = happyShift action_6
action_22 (11) = happyShift action_2
action_22 (12) = happyShift action_7
action_22 (13) = happyShift action_8
action_22 (14) = happyShift action_9
action_22 (16) = happyShift action_10
action_22 (22) = happyShift action_11
action_22 (27) = happyShift action_12
action_22 (29) = happyShift action_13
action_22 (33) = happyShift action_14
action_22 (38) = happyShift action_15
action_22 (39) = happyShift action_16
action_22 (41) = happyShift action_17
action_22 (43) = happyShift action_18
action_22 (44) = happyShift action_19
action_22 (45) = happyShift action_20
action_22 (46) = happyShift action_21
action_22 (47) = happyShift action_22
action_22 (48) = happyShift action_23
action_22 (4) = happyGoto action_25
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_4
action_23 (9) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (11) = happyShift action_2
action_23 (12) = happyShift action_7
action_23 (13) = happyShift action_8
action_23 (14) = happyShift action_9
action_23 (16) = happyShift action_10
action_23 (22) = happyShift action_11
action_23 (27) = happyShift action_12
action_23 (29) = happyShift action_13
action_23 (33) = happyShift action_14
action_23 (38) = happyShift action_15
action_23 (39) = happyShift action_16
action_23 (41) = happyShift action_17
action_23 (43) = happyShift action_18
action_23 (44) = happyShift action_19
action_23 (45) = happyShift action_20
action_23 (46) = happyShift action_21
action_23 (47) = happyShift action_22
action_23 (48) = happyShift action_23
action_23 (4) = happyGoto action_24
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (11) = happyShift action_2
action_24 (12) = happyShift action_7
action_24 (13) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (16) = happyShift action_10
action_24 (18) = happyShift action_40
action_24 (19) = happyShift action_41
action_24 (22) = happyShift action_11
action_24 (27) = happyShift action_12
action_24 (28) = happyShift action_42
action_24 (29) = happyShift action_13
action_24 (33) = happyShift action_14
action_24 (34) = happyShift action_43
action_24 (35) = happyShift action_44
action_24 (36) = happyShift action_45
action_24 (37) = happyShift action_46
action_24 (38) = happyShift action_15
action_24 (39) = happyShift action_16
action_24 (41) = happyShift action_17
action_24 (42) = happyShift action_47
action_24 (43) = happyShift action_18
action_24 (44) = happyShift action_19
action_24 (45) = happyShift action_20
action_24 (46) = happyShift action_21
action_24 (47) = happyShift action_22
action_24 (48) = happyShift action_23
action_24 (4) = happyGoto action_66
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (11) = happyShift action_2
action_25 (12) = happyShift action_7
action_25 (13) = happyShift action_8
action_25 (14) = happyShift action_9
action_25 (16) = happyShift action_10
action_25 (18) = happyShift action_40
action_25 (19) = happyShift action_41
action_25 (22) = happyShift action_11
action_25 (27) = happyShift action_12
action_25 (28) = happyShift action_42
action_25 (29) = happyShift action_13
action_25 (33) = happyShift action_14
action_25 (34) = happyShift action_43
action_25 (35) = happyShift action_44
action_25 (36) = happyShift action_45
action_25 (37) = happyShift action_46
action_25 (38) = happyShift action_15
action_25 (39) = happyShift action_16
action_25 (41) = happyShift action_17
action_25 (42) = happyShift action_47
action_25 (43) = happyShift action_18
action_25 (44) = happyShift action_19
action_25 (45) = happyShift action_20
action_25 (46) = happyShift action_21
action_25 (47) = happyShift action_22
action_25 (48) = happyShift action_23
action_25 (4) = happyGoto action_65
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (13) = happyShift action_8
action_26 (16) = happyShift action_10
action_26 (18) = happyShift action_40
action_26 (19) = happyShift action_41
action_26 (22) = happyShift action_11
action_26 (27) = happyShift action_12
action_26 (28) = happyShift action_42
action_26 (29) = happyShift action_13
action_26 (33) = happyShift action_14
action_26 (34) = happyShift action_43
action_26 (35) = happyShift action_44
action_26 (36) = happyShift action_45
action_26 (37) = happyShift action_46
action_26 (38) = happyShift action_15
action_26 (39) = happyShift action_16
action_26 (41) = happyShift action_17
action_26 (42) = happyShift action_47
action_26 (43) = happyShift action_18
action_26 (44) = happyShift action_19
action_26 (46) = happyShift action_21
action_26 (4) = happyGoto action_39
action_26 _ = happyReduce_13

action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (13) = happyShift action_8
action_27 (16) = happyShift action_10
action_27 (18) = happyShift action_40
action_27 (19) = happyShift action_41
action_27 (22) = happyShift action_11
action_27 (27) = happyShift action_12
action_27 (28) = happyShift action_42
action_27 (29) = happyShift action_13
action_27 (33) = happyShift action_14
action_27 (34) = happyShift action_43
action_27 (35) = happyShift action_44
action_27 (36) = happyShift action_45
action_27 (37) = happyShift action_46
action_27 (38) = happyShift action_15
action_27 (39) = happyShift action_16
action_27 (41) = happyShift action_17
action_27 (42) = happyShift action_47
action_27 (43) = happyShift action_18
action_27 (44) = happyShift action_19
action_27 (46) = happyShift action_21
action_27 (4) = happyGoto action_39
action_27 _ = happyReduce_12

action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_6
action_28 (13) = happyShift action_8
action_28 (16) = happyShift action_10
action_28 (18) = happyShift action_40
action_28 (19) = happyShift action_41
action_28 (22) = happyShift action_11
action_28 (27) = happyShift action_12
action_28 (28) = happyShift action_42
action_28 (29) = happyShift action_13
action_28 (33) = happyShift action_14
action_28 (34) = happyShift action_43
action_28 (35) = happyShift action_44
action_28 (36) = happyShift action_45
action_28 (37) = happyShift action_46
action_28 (39) = happyShift action_16
action_28 (41) = happyShift action_17
action_28 (42) = happyShift action_47
action_28 (44) = happyShift action_19
action_28 (4) = happyGoto action_39
action_28 _ = happyReduce_5

action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (11) = happyShift action_2
action_29 (12) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (16) = happyShift action_10
action_29 (18) = happyShift action_40
action_29 (19) = happyShift action_41
action_29 (22) = happyShift action_11
action_29 (27) = happyShift action_12
action_29 (28) = happyShift action_42
action_29 (29) = happyShift action_13
action_29 (33) = happyShift action_14
action_29 (34) = happyShift action_43
action_29 (35) = happyShift action_44
action_29 (36) = happyShift action_45
action_29 (37) = happyShift action_46
action_29 (38) = happyShift action_15
action_29 (39) = happyShift action_16
action_29 (41) = happyShift action_17
action_29 (42) = happyShift action_47
action_29 (43) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (45) = happyShift action_20
action_29 (46) = happyShift action_21
action_29 (47) = happyShift action_22
action_29 (48) = happyShift action_23
action_29 (4) = happyGoto action_64
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (8) = happyShift action_63
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (27) = happyShift action_62
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (13) = happyShift action_8
action_32 (16) = happyShift action_10
action_32 (18) = happyShift action_40
action_32 (19) = happyShift action_41
action_32 (22) = happyShift action_11
action_32 (27) = happyShift action_12
action_32 (28) = happyShift action_42
action_32 (29) = happyShift action_13
action_32 (33) = happyShift action_14
action_32 (34) = happyShift action_43
action_32 (35) = happyShift action_44
action_32 (36) = happyShift action_45
action_32 (37) = happyShift action_46
action_32 (38) = happyShift action_15
action_32 (39) = happyShift action_16
action_32 (41) = happyShift action_17
action_32 (42) = happyShift action_47
action_32 (44) = happyShift action_19
action_32 (4) = happyGoto action_39
action_32 _ = happyReduce_11

action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (13) = happyShift action_8
action_33 (16) = happyShift action_10
action_33 (18) = happyShift action_40
action_33 (19) = happyShift action_41
action_33 (22) = happyShift action_11
action_33 (27) = happyShift action_12
action_33 (28) = happyShift action_42
action_33 (29) = happyShift action_13
action_33 (34) = happyShift action_43
action_33 (35) = happyShift action_44
action_33 (36) = happyShift action_45
action_33 (37) = happyShift action_46
action_33 (39) = happyShift action_16
action_33 (41) = happyShift action_17
action_33 (42) = happyShift action_47
action_33 (4) = happyGoto action_39
action_33 _ = happyReduce_10

action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (10) = happyShift action_6
action_34 (11) = happyShift action_2
action_34 (12) = happyShift action_7
action_34 (13) = happyShift action_8
action_34 (14) = happyShift action_9
action_34 (16) = happyShift action_10
action_34 (18) = happyShift action_40
action_34 (19) = happyShift action_41
action_34 (22) = happyShift action_11
action_34 (27) = happyShift action_12
action_34 (28) = happyShift action_42
action_34 (29) = happyShift action_13
action_34 (31) = happyShift action_61
action_34 (33) = happyShift action_14
action_34 (34) = happyShift action_43
action_34 (35) = happyShift action_44
action_34 (36) = happyShift action_45
action_34 (37) = happyShift action_46
action_34 (38) = happyShift action_15
action_34 (39) = happyShift action_16
action_34 (41) = happyShift action_17
action_34 (42) = happyShift action_47
action_34 (43) = happyShift action_18
action_34 (44) = happyShift action_19
action_34 (45) = happyShift action_20
action_34 (46) = happyShift action_21
action_34 (47) = happyShift action_22
action_34 (48) = happyShift action_23
action_34 (4) = happyGoto action_39
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (10) = happyShift action_6
action_35 (11) = happyShift action_2
action_35 (12) = happyShift action_7
action_35 (13) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (16) = happyShift action_10
action_35 (18) = happyShift action_40
action_35 (19) = happyShift action_41
action_35 (22) = happyShift action_11
action_35 (23) = happyShift action_60
action_35 (27) = happyShift action_12
action_35 (28) = happyShift action_42
action_35 (29) = happyShift action_13
action_35 (33) = happyShift action_14
action_35 (34) = happyShift action_43
action_35 (35) = happyShift action_44
action_35 (36) = happyShift action_45
action_35 (37) = happyShift action_46
action_35 (38) = happyShift action_15
action_35 (39) = happyShift action_16
action_35 (41) = happyShift action_17
action_35 (42) = happyShift action_47
action_35 (43) = happyShift action_18
action_35 (44) = happyShift action_19
action_35 (45) = happyShift action_20
action_35 (46) = happyShift action_21
action_35 (47) = happyShift action_22
action_35 (48) = happyShift action_23
action_35 (4) = happyGoto action_39
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (20) = happyShift action_59
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (13) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (16) = happyShift action_10
action_37 (18) = happyShift action_40
action_37 (19) = happyShift action_41
action_37 (22) = happyShift action_11
action_37 (27) = happyShift action_12
action_37 (28) = happyShift action_42
action_37 (29) = happyShift action_13
action_37 (33) = happyShift action_14
action_37 (34) = happyShift action_43
action_37 (35) = happyShift action_44
action_37 (36) = happyShift action_45
action_37 (37) = happyShift action_46
action_37 (38) = happyShift action_15
action_37 (39) = happyShift action_16
action_37 (41) = happyShift action_17
action_37 (42) = happyShift action_47
action_37 (43) = happyShift action_18
action_37 (44) = happyShift action_19
action_37 (45) = happyShift action_20
action_37 (46) = happyShift action_21
action_37 (47) = happyShift action_22
action_37 (48) = happyShift action_23
action_37 (4) = happyGoto action_39
action_37 _ = happyReduce_29

action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (10) = happyShift action_6
action_38 (11) = happyShift action_2
action_38 (12) = happyShift action_7
action_38 (13) = happyShift action_8
action_38 (14) = happyShift action_9
action_38 (16) = happyShift action_10
action_38 (22) = happyShift action_11
action_38 (27) = happyShift action_12
action_38 (29) = happyShift action_13
action_38 (33) = happyShift action_14
action_38 (38) = happyShift action_15
action_38 (39) = happyShift action_16
action_38 (41) = happyShift action_17
action_38 (43) = happyShift action_18
action_38 (44) = happyShift action_19
action_38 (45) = happyShift action_20
action_38 (46) = happyShift action_21
action_38 (47) = happyShift action_22
action_38 (48) = happyShift action_23
action_38 (4) = happyGoto action_58
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (13) = happyShift action_8
action_39 (39) = happyShift action_16
action_39 (4) = happyGoto action_39
action_39 _ = happyReduce_22

action_40 (8) = happyShift action_4
action_40 (9) = happyShift action_5
action_40 (10) = happyShift action_6
action_40 (11) = happyShift action_2
action_40 (12) = happyShift action_7
action_40 (13) = happyShift action_8
action_40 (14) = happyShift action_9
action_40 (16) = happyShift action_10
action_40 (22) = happyShift action_11
action_40 (27) = happyShift action_12
action_40 (29) = happyShift action_13
action_40 (33) = happyShift action_14
action_40 (38) = happyShift action_15
action_40 (39) = happyShift action_16
action_40 (41) = happyShift action_17
action_40 (43) = happyShift action_18
action_40 (44) = happyShift action_19
action_40 (45) = happyShift action_20
action_40 (46) = happyShift action_21
action_40 (47) = happyShift action_22
action_40 (48) = happyShift action_23
action_40 (4) = happyGoto action_57
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (10) = happyShift action_6
action_41 (11) = happyShift action_2
action_41 (12) = happyShift action_7
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (16) = happyShift action_10
action_41 (22) = happyShift action_11
action_41 (27) = happyShift action_12
action_41 (29) = happyShift action_13
action_41 (33) = happyShift action_14
action_41 (38) = happyShift action_15
action_41 (39) = happyShift action_16
action_41 (41) = happyShift action_17
action_41 (43) = happyShift action_18
action_41 (44) = happyShift action_19
action_41 (45) = happyShift action_20
action_41 (46) = happyShift action_21
action_41 (47) = happyShift action_22
action_41 (48) = happyShift action_23
action_41 (4) = happyGoto action_56
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (8) = happyShift action_4
action_42 (9) = happyShift action_5
action_42 (10) = happyShift action_6
action_42 (11) = happyShift action_2
action_42 (12) = happyShift action_7
action_42 (13) = happyShift action_8
action_42 (14) = happyShift action_9
action_42 (16) = happyShift action_10
action_42 (22) = happyShift action_11
action_42 (27) = happyShift action_12
action_42 (29) = happyShift action_13
action_42 (33) = happyShift action_14
action_42 (38) = happyShift action_15
action_42 (39) = happyShift action_16
action_42 (41) = happyShift action_17
action_42 (43) = happyShift action_18
action_42 (44) = happyShift action_19
action_42 (45) = happyShift action_20
action_42 (46) = happyShift action_21
action_42 (47) = happyShift action_22
action_42 (48) = happyShift action_23
action_42 (4) = happyGoto action_55
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (8) = happyShift action_4
action_43 (9) = happyShift action_5
action_43 (10) = happyShift action_6
action_43 (11) = happyShift action_2
action_43 (12) = happyShift action_7
action_43 (13) = happyShift action_8
action_43 (14) = happyShift action_9
action_43 (16) = happyShift action_10
action_43 (22) = happyShift action_11
action_43 (27) = happyShift action_12
action_43 (29) = happyShift action_13
action_43 (33) = happyShift action_14
action_43 (38) = happyShift action_15
action_43 (39) = happyShift action_16
action_43 (41) = happyShift action_17
action_43 (43) = happyShift action_18
action_43 (44) = happyShift action_19
action_43 (45) = happyShift action_20
action_43 (46) = happyShift action_21
action_43 (47) = happyShift action_22
action_43 (48) = happyShift action_23
action_43 (4) = happyGoto action_54
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (8) = happyShift action_4
action_44 (9) = happyShift action_5
action_44 (10) = happyShift action_6
action_44 (11) = happyShift action_2
action_44 (12) = happyShift action_7
action_44 (13) = happyShift action_8
action_44 (14) = happyShift action_9
action_44 (16) = happyShift action_10
action_44 (22) = happyShift action_11
action_44 (27) = happyShift action_12
action_44 (29) = happyShift action_13
action_44 (33) = happyShift action_14
action_44 (38) = happyShift action_15
action_44 (39) = happyShift action_16
action_44 (41) = happyShift action_17
action_44 (43) = happyShift action_18
action_44 (44) = happyShift action_19
action_44 (45) = happyShift action_20
action_44 (46) = happyShift action_21
action_44 (47) = happyShift action_22
action_44 (48) = happyShift action_23
action_44 (4) = happyGoto action_53
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (8) = happyShift action_4
action_45 (9) = happyShift action_5
action_45 (10) = happyShift action_6
action_45 (11) = happyShift action_2
action_45 (12) = happyShift action_7
action_45 (13) = happyShift action_8
action_45 (14) = happyShift action_9
action_45 (16) = happyShift action_10
action_45 (22) = happyShift action_11
action_45 (27) = happyShift action_12
action_45 (29) = happyShift action_13
action_45 (33) = happyShift action_14
action_45 (38) = happyShift action_15
action_45 (39) = happyShift action_16
action_45 (41) = happyShift action_17
action_45 (43) = happyShift action_18
action_45 (44) = happyShift action_19
action_45 (45) = happyShift action_20
action_45 (46) = happyShift action_21
action_45 (47) = happyShift action_22
action_45 (48) = happyShift action_23
action_45 (4) = happyGoto action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (8) = happyShift action_4
action_46 (9) = happyShift action_5
action_46 (10) = happyShift action_6
action_46 (11) = happyShift action_2
action_46 (12) = happyShift action_7
action_46 (13) = happyShift action_8
action_46 (14) = happyShift action_9
action_46 (16) = happyShift action_10
action_46 (22) = happyShift action_11
action_46 (27) = happyShift action_12
action_46 (29) = happyShift action_13
action_46 (33) = happyShift action_14
action_46 (38) = happyShift action_15
action_46 (39) = happyShift action_16
action_46 (41) = happyShift action_17
action_46 (43) = happyShift action_18
action_46 (44) = happyShift action_19
action_46 (45) = happyShift action_20
action_46 (46) = happyShift action_21
action_46 (47) = happyShift action_22
action_46 (48) = happyShift action_23
action_46 (4) = happyGoto action_51
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (8) = happyShift action_4
action_47 (9) = happyShift action_5
action_47 (10) = happyShift action_6
action_47 (11) = happyShift action_2
action_47 (12) = happyShift action_7
action_47 (13) = happyShift action_8
action_47 (14) = happyShift action_9
action_47 (16) = happyShift action_10
action_47 (22) = happyShift action_11
action_47 (27) = happyShift action_12
action_47 (29) = happyShift action_13
action_47 (33) = happyShift action_14
action_47 (38) = happyShift action_15
action_47 (39) = happyShift action_16
action_47 (41) = happyShift action_17
action_47 (43) = happyShift action_18
action_47 (44) = happyShift action_19
action_47 (45) = happyShift action_20
action_47 (46) = happyShift action_21
action_47 (47) = happyShift action_22
action_47 (48) = happyShift action_23
action_47 (4) = happyGoto action_50
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (10) = happyShift action_6
action_48 (11) = happyShift action_2
action_48 (12) = happyShift action_49
action_48 (13) = happyShift action_8
action_48 (14) = happyShift action_9
action_48 (16) = happyShift action_10
action_48 (18) = happyShift action_40
action_48 (19) = happyShift action_41
action_48 (22) = happyShift action_11
action_48 (27) = happyShift action_12
action_48 (28) = happyShift action_42
action_48 (29) = happyShift action_13
action_48 (33) = happyShift action_14
action_48 (34) = happyShift action_43
action_48 (35) = happyShift action_44
action_48 (36) = happyShift action_45
action_48 (37) = happyShift action_46
action_48 (38) = happyShift action_15
action_48 (39) = happyShift action_16
action_48 (41) = happyShift action_17
action_48 (42) = happyShift action_47
action_48 (43) = happyShift action_18
action_48 (44) = happyShift action_19
action_48 (45) = happyShift action_20
action_48 (46) = happyShift action_21
action_48 (47) = happyShift action_22
action_48 (48) = happyShift action_23
action_48 (4) = happyGoto action_39
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (8) = happyReduce_1
action_49 (9) = happyReduce_1
action_49 (10) = happyReduce_1
action_49 (11) = happyReduce_1
action_49 (12) = happyReduce_1
action_49 (13) = happyReduce_1
action_49 (14) = happyReduce_1
action_49 (16) = happyReduce_1
action_49 (18) = happyReduce_1
action_49 (19) = happyReduce_1
action_49 (22) = happyReduce_1
action_49 (27) = happyReduce_1
action_49 (28) = happyReduce_1
action_49 (29) = happyReduce_1
action_49 (33) = happyReduce_1
action_49 (34) = happyReduce_1
action_49 (35) = happyReduce_1
action_49 (36) = happyReduce_1
action_49 (37) = happyReduce_1
action_49 (38) = happyReduce_1
action_49 (39) = happyReduce_1
action_49 (41) = happyReduce_1
action_49 (42) = happyReduce_1
action_49 (43) = happyReduce_1
action_49 (44) = happyReduce_1
action_49 (45) = happyReduce_1
action_49 (46) = happyReduce_1
action_49 (47) = happyReduce_1
action_49 (48) = happyReduce_1
action_49 _ = happyReduce_1

action_50 (13) = happyShift action_8
action_50 (18) = happyShift action_40
action_50 (19) = happyShift action_41
action_50 (28) = happyShift action_42
action_50 (34) = happyShift action_43
action_50 (35) = happyShift action_44
action_50 (36) = happyShift action_45
action_50 (37) = happyShift action_46
action_50 (39) = happyShift action_16
action_50 (4) = happyGoto action_39
action_50 _ = happyReduce_6

action_51 (13) = happyShift action_8
action_51 (18) = happyShift action_40
action_51 (19) = happyShift action_41
action_51 (28) = happyShift action_42
action_51 (39) = happyShift action_16
action_51 (4) = happyGoto action_39
action_51 _ = happyReduce_18

action_52 (13) = happyShift action_8
action_52 (18) = happyShift action_40
action_52 (19) = happyShift action_41
action_52 (28) = happyShift action_42
action_52 (35) = happyShift action_44
action_52 (37) = happyShift action_46
action_52 (39) = happyShift action_16
action_52 (4) = happyGoto action_39
action_52 _ = happyReduce_16

action_53 (13) = happyShift action_8
action_53 (18) = happyShift action_40
action_53 (19) = happyShift action_41
action_53 (28) = happyShift action_42
action_53 (39) = happyShift action_16
action_53 (4) = happyGoto action_39
action_53 _ = happyReduce_17

action_54 (13) = happyShift action_8
action_54 (18) = happyShift action_40
action_54 (19) = happyShift action_41
action_54 (28) = happyShift action_42
action_54 (35) = happyShift action_44
action_54 (37) = happyShift action_46
action_54 (39) = happyShift action_16
action_54 (4) = happyGoto action_39
action_54 _ = happyReduce_15

action_55 (13) = happyShift action_8
action_55 (39) = happyShift action_16
action_55 (4) = happyGoto action_39
action_55 _ = happyReduce_21

action_56 (13) = happyShift action_8
action_56 (28) = happyShift action_42
action_56 (39) = happyShift action_16
action_56 (4) = happyGoto action_39
action_56 _ = happyReduce_20

action_57 (13) = happyShift action_8
action_57 (28) = happyShift action_42
action_57 (39) = happyShift action_16
action_57 (4) = happyGoto action_39
action_57 _ = happyReduce_19

action_58 (13) = happyShift action_8
action_58 (39) = happyShift action_16
action_58 (4) = happyGoto action_39
action_58 _ = happyReduce_23

action_59 (8) = happyShift action_4
action_59 (9) = happyShift action_5
action_59 (10) = happyShift action_6
action_59 (11) = happyShift action_2
action_59 (12) = happyShift action_7
action_59 (13) = happyShift action_8
action_59 (14) = happyShift action_9
action_59 (16) = happyShift action_10
action_59 (22) = happyShift action_11
action_59 (27) = happyShift action_12
action_59 (29) = happyShift action_13
action_59 (33) = happyShift action_14
action_59 (38) = happyShift action_15
action_59 (39) = happyShift action_16
action_59 (41) = happyShift action_17
action_59 (43) = happyShift action_18
action_59 (44) = happyShift action_19
action_59 (45) = happyShift action_20
action_59 (46) = happyShift action_21
action_59 (47) = happyShift action_22
action_59 (48) = happyShift action_23
action_59 (4) = happyGoto action_70
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_31

action_61 (8) = happyShift action_4
action_61 (9) = happyShift action_5
action_61 (10) = happyShift action_6
action_61 (11) = happyShift action_2
action_61 (12) = happyShift action_7
action_61 (13) = happyShift action_8
action_61 (14) = happyShift action_9
action_61 (16) = happyShift action_10
action_61 (22) = happyShift action_11
action_61 (27) = happyShift action_12
action_61 (29) = happyShift action_13
action_61 (33) = happyShift action_14
action_61 (38) = happyShift action_15
action_61 (39) = happyShift action_16
action_61 (41) = happyShift action_17
action_61 (43) = happyShift action_18
action_61 (44) = happyShift action_19
action_61 (45) = happyShift action_20
action_61 (46) = happyShift action_21
action_61 (47) = happyShift action_22
action_61 (48) = happyShift action_23
action_61 (4) = happyGoto action_69
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (21) = happyShift action_68
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (8) = happyShift action_4
action_63 (9) = happyShift action_5
action_63 (10) = happyShift action_6
action_63 (11) = happyShift action_2
action_63 (12) = happyShift action_7
action_63 (13) = happyShift action_8
action_63 (14) = happyShift action_9
action_63 (16) = happyShift action_10
action_63 (22) = happyShift action_11
action_63 (27) = happyShift action_12
action_63 (29) = happyShift action_13
action_63 (33) = happyShift action_14
action_63 (38) = happyShift action_15
action_63 (39) = happyShift action_16
action_63 (41) = happyShift action_17
action_63 (43) = happyShift action_18
action_63 (44) = happyShift action_19
action_63 (45) = happyShift action_20
action_63 (46) = happyShift action_21
action_63 (47) = happyShift action_22
action_63 (48) = happyShift action_23
action_63 (4) = happyGoto action_67
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (13) = happyShift action_8
action_64 (23) = happyReduce_9
action_64 (30) = happyReduce_9
action_64 (31) = happyReduce_9
action_64 (32) = happyReduce_9
action_64 (39) = happyShift action_16
action_64 (49) = happyReduce_9
action_64 (4) = happyGoto action_39
action_64 _ = happyReduce_22

action_65 (13) = happyShift action_8
action_65 (23) = happyReduce_7
action_65 (30) = happyReduce_7
action_65 (31) = happyReduce_7
action_65 (32) = happyReduce_7
action_65 (39) = happyShift action_16
action_65 (49) = happyReduce_7
action_65 (4) = happyGoto action_39
action_65 _ = happyReduce_22

action_66 (13) = happyShift action_8
action_66 (23) = happyReduce_14
action_66 (30) = happyReduce_14
action_66 (31) = happyReduce_14
action_66 (32) = happyReduce_14
action_66 (39) = happyShift action_16
action_66 (49) = happyReduce_14
action_66 (4) = happyGoto action_39
action_66 _ = happyReduce_22

action_67 (8) = happyFail []
action_67 (9) = happyFail []
action_67 (10) = happyFail []
action_67 (13) = happyShift action_8
action_67 (18) = happyShift action_40
action_67 (19) = happyShift action_41
action_67 (22) = happyFail []
action_67 (27) = happyFail []
action_67 (28) = happyShift action_42
action_67 (34) = happyShift action_43
action_67 (35) = happyShift action_44
action_67 (36) = happyShift action_45
action_67 (37) = happyShift action_46
action_67 (39) = happyShift action_16
action_67 (42) = happyShift action_47
action_67 (4) = happyGoto action_39
action_67 _ = happyReduce_3

action_68 (6) = happyShift action_73
action_68 (7) = happyShift action_74
action_68 (5) = happyGoto action_72
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (8) = happyShift action_4
action_69 (9) = happyShift action_5
action_69 (10) = happyShift action_6
action_69 (11) = happyShift action_2
action_69 (12) = happyShift action_7
action_69 (13) = happyShift action_8
action_69 (14) = happyShift action_9
action_69 (16) = happyShift action_10
action_69 (18) = happyShift action_40
action_69 (19) = happyShift action_41
action_69 (22) = happyShift action_11
action_69 (27) = happyShift action_12
action_69 (28) = happyShift action_42
action_69 (29) = happyShift action_13
action_69 (30) = happyShift action_71
action_69 (33) = happyShift action_14
action_69 (34) = happyShift action_43
action_69 (35) = happyShift action_44
action_69 (36) = happyShift action_45
action_69 (37) = happyShift action_46
action_69 (38) = happyShift action_15
action_69 (39) = happyShift action_16
action_69 (41) = happyShift action_17
action_69 (42) = happyShift action_47
action_69 (43) = happyShift action_18
action_69 (44) = happyShift action_19
action_69 (45) = happyShift action_20
action_69 (46) = happyShift action_21
action_69 (47) = happyShift action_22
action_69 (48) = happyShift action_23
action_69 (4) = happyGoto action_39
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (8) = happyShift action_4
action_70 (9) = happyShift action_5
action_70 (10) = happyShift action_6
action_70 (11) = happyShift action_2
action_70 (12) = happyShift action_7
action_70 (13) = happyShift action_8
action_70 (14) = happyShift action_9
action_70 (16) = happyShift action_10
action_70 (18) = happyShift action_40
action_70 (19) = happyShift action_41
action_70 (22) = happyShift action_11
action_70 (27) = happyShift action_12
action_70 (28) = happyShift action_42
action_70 (29) = happyShift action_13
action_70 (33) = happyShift action_14
action_70 (34) = happyShift action_43
action_70 (35) = happyShift action_44
action_70 (36) = happyShift action_45
action_70 (37) = happyShift action_46
action_70 (38) = happyShift action_15
action_70 (39) = happyShift action_16
action_70 (41) = happyShift action_17
action_70 (42) = happyShift action_47
action_70 (43) = happyShift action_18
action_70 (44) = happyShift action_19
action_70 (45) = happyShift action_20
action_70 (46) = happyShift action_21
action_70 (47) = happyShift action_22
action_70 (48) = happyShift action_23
action_70 (4) = happyGoto action_39
action_70 _ = happyReduce_28

action_71 (8) = happyShift action_4
action_71 (9) = happyShift action_5
action_71 (10) = happyShift action_6
action_71 (11) = happyShift action_2
action_71 (12) = happyShift action_7
action_71 (13) = happyShift action_8
action_71 (14) = happyShift action_9
action_71 (16) = happyShift action_10
action_71 (22) = happyShift action_11
action_71 (27) = happyShift action_12
action_71 (29) = happyShift action_13
action_71 (33) = happyShift action_14
action_71 (38) = happyShift action_15
action_71 (39) = happyShift action_16
action_71 (41) = happyShift action_17
action_71 (43) = happyShift action_18
action_71 (44) = happyShift action_19
action_71 (45) = happyShift action_20
action_71 (46) = happyShift action_21
action_71 (47) = happyShift action_22
action_71 (48) = happyShift action_23
action_71 (4) = happyGoto action_77
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (23) = happyShift action_75
action_72 (40) = happyShift action_76
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_32

action_74 _ = happyReduce_33

action_75 (8) = happyShift action_4
action_75 (9) = happyShift action_5
action_75 (10) = happyShift action_6
action_75 (11) = happyShift action_2
action_75 (12) = happyShift action_7
action_75 (13) = happyShift action_8
action_75 (14) = happyShift action_9
action_75 (16) = happyShift action_10
action_75 (22) = happyShift action_11
action_75 (27) = happyShift action_12
action_75 (29) = happyShift action_13
action_75 (33) = happyShift action_14
action_75 (38) = happyShift action_15
action_75 (39) = happyShift action_16
action_75 (41) = happyShift action_17
action_75 (43) = happyShift action_18
action_75 (44) = happyShift action_19
action_75 (45) = happyShift action_20
action_75 (46) = happyShift action_21
action_75 (47) = happyShift action_22
action_75 (48) = happyShift action_23
action_75 (4) = happyGoto action_80
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (6) = happyShift action_73
action_76 (7) = happyShift action_74
action_76 (5) = happyGoto action_79
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (8) = happyShift action_4
action_77 (9) = happyShift action_5
action_77 (10) = happyShift action_6
action_77 (11) = happyShift action_2
action_77 (12) = happyShift action_7
action_77 (13) = happyShift action_8
action_77 (14) = happyShift action_9
action_77 (16) = happyShift action_10
action_77 (18) = happyShift action_40
action_77 (19) = happyShift action_41
action_77 (22) = happyShift action_11
action_77 (27) = happyShift action_12
action_77 (28) = happyShift action_42
action_77 (29) = happyShift action_13
action_77 (32) = happyShift action_78
action_77 (33) = happyShift action_14
action_77 (34) = happyShift action_43
action_77 (35) = happyShift action_44
action_77 (36) = happyShift action_45
action_77 (37) = happyShift action_46
action_77 (38) = happyShift action_15
action_77 (39) = happyShift action_16
action_77 (41) = happyShift action_17
action_77 (42) = happyShift action_47
action_77 (43) = happyShift action_18
action_77 (44) = happyShift action_19
action_77 (45) = happyShift action_20
action_77 (46) = happyShift action_21
action_77 (47) = happyShift action_22
action_77 (48) = happyShift action_23
action_77 (4) = happyGoto action_39
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_2

action_79 _ = happyReduce_34

action_80 (8) = happyFail []
action_80 (9) = happyFail []
action_80 (10) = happyFail []
action_80 (13) = happyShift action_8
action_80 (18) = happyShift action_40
action_80 (19) = happyShift action_41
action_80 (22) = happyFail []
action_80 (27) = happyFail []
action_80 (28) = happyShift action_42
action_80 (34) = happyShift action_43
action_80 (35) = happyShift action_44
action_80 (36) = happyShift action_45
action_80 (37) = happyShift action_46
action_80 (39) = happyShift action_16
action_80 (42) = happyShift action_47
action_80 (4) = happyGoto action_39
action_80 _ = happyReduce_8

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
		 (TmDuplicate happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMerge happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmMap happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happyReduce 7 4 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLambda happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSplitAt happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReverse happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmHead happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLast happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmListsArith happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLine happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  4 happyReduction_24
happyReduction_24 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  4 happyReduction_25
happyReduction_25 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  4 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_27 = happySpecReduce_1  4 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_28 = happyReduce 4 4 happyReduction_28
happyReduction_28 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_2  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_29 _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  4 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn4
		 (TmEnd
	)

happyReduce_31 = happySpecReduce_3  4 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  5 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_33 = happySpecReduce_1  5 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_34 = happySpecReduce_3  5 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 49 49 notHappyAtAll (HappyState action) sts stk []

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
	TokenPrint _ -> cont 14;
	TokenEOL _ -> cont 15;
	TokenLet _ -> cont 16;
	TokenIn _ -> cont 17;
	TokenLT _ -> cont 18;
	TokenGT _ -> cont 19;
	TokenEq _ -> cont 20;
	TokenCol _ -> cont 21;
	TokenLParen _ -> cont 22;
	TokenRParen _ -> cont 23;
	TokenLBrckt _ -> cont 24;
	TokenRBrckt _ -> cont 25;
	TokenComma _ -> cont 26;
	TokenVar _ happy_dollar_dollar -> cont 27;
	TokenSemiCol _ -> cont 28;
	TokenIf _ -> cont 29;
	TokenElse _ -> cont 30;
	TokenThen _ -> cont 31;
	TokenFi _ -> cont 32;
	TokenReverse _ -> cont 33;
	TokenAdd _ -> cont 34;
	TokenMult _ -> cont 35;
	TokenSub _ -> cont 36;
	TokenDiv _ -> cont 37;
	TokenLength _ -> cont 38;
	TokenLambda _ -> cont 39;
	TokenArr _ -> cont 40;
	TokenPush _ -> cont 41;
	TokenMerge _ -> cont 42;
	TokenSplitAt _ -> cont 43;
	TokenDuplicate _ -> cont 44;
	TokenHead _ -> cont 45;
	TokenLast _ -> cont 46;
	TokenMap _ -> cont 47;
	TokenListsArith _ -> cont 48;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 49 tk tks = happyError' (tks, explist)
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

-- data Function = TmLambda String DataType Expr
--              deriving(Show, Eq)

type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data Expr = TmBody Expr |TmIf Expr Expr Expr | TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr
            | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr | TmLine Expr Expr
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInt Int | TmComma  | TmTrue | TmFalse
            | TmPush Int Int Expr | TmHead Expr | TmLast Expr | TmApp Expr Expr | TmLambda String DataType Expr
            | TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr
            | TmMap Expr Expr |TmListsArith Expr Expr | TmLet String Expr | Cl String DataType Expr Environment

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

