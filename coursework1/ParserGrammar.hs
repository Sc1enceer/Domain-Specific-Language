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
happyExpList = Happy_Data_Array.listArray (0,766) ([49024,5152,64865,8195,0,0,57344,2095,22597,255,19839,65080,2046,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1532,2209,8171,0,256,0,32512,10305,64194,7,0,0,49152,4191,45194,510,33534,33872,4085,6128,8836,32684,0,32,0,1024,0,0,57344,2095,22597,255,16767,49704,2042,3064,4418,16342,24512,35344,65200,65025,20610,62852,61455,33815,44066,32895,8383,24852,1021,1532,2209,8171,45024,50953,65503,32512,14413,65278,14343,49768,62449,49156,4959,49038,511,39438,64624,956,53360,58244,7655,33664,7206,2847,64512,57653,64504,8223,0,0,0,0,8,0,26680,61890,179,16832,3603,399,65024,28826,65021,61455,36055,61411,127,2048,0,0,13596,63713,8185,12256,17672,65368,0,0,0,63488,16907,54801,49215,4191,45194,510,33534,33872,4085,6128,8836,32684,49024,5152,64865,64515,41221,60168,57375,2095,22597,255,16767,49704,2042,27640,61890,16375,0,0,0,0,8216,120,0,192,1,0,1536,5128,0,12288,64,0,32768,513,5,0,0,0,0,32768,0,0,0,4,0,0,0,0,6128,8836,32684,0,0,0,64512,41221,60168,31,1024,0,0,16767,49704,2042,0,0,0,0,0,0,0,0,0,0,0,0,0,1536,7688,2,3,0,0,45024,53001,65503,0,0,0,63488,16907,54801,63,8192,16384,0,0,0,0,0,0,0,49024,5152,64865,771,0,0,57344,2479,57319,255,0,0,0,0,0,0,0,1027,271,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","int","true","false","begin","end","getStream","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","'++'","splitAt","duplicate","head","last","take","sum","map","listsArith","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
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
action_0 (49) = happyShift action_24
action_0 (50) = happyShift action_25
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
action_2 (49) = happyShift action_24
action_2 (50) = happyShift action_25
action_2 (4) = happyGoto action_52
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_6
action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_7
action_3 (13) = happyShift action_8
action_3 (14) = happyShift action_9
action_3 (16) = happyShift action_10
action_3 (18) = happyShift action_44
action_3 (19) = happyShift action_45
action_3 (22) = happyShift action_11
action_3 (27) = happyShift action_12
action_3 (28) = happyShift action_46
action_3 (29) = happyShift action_13
action_3 (33) = happyShift action_14
action_3 (34) = happyShift action_47
action_3 (35) = happyShift action_48
action_3 (36) = happyShift action_49
action_3 (37) = happyShift action_50
action_3 (38) = happyShift action_15
action_3 (39) = happyShift action_16
action_3 (41) = happyShift action_17
action_3 (42) = happyShift action_51
action_3 (43) = happyShift action_18
action_3 (44) = happyShift action_19
action_3 (45) = happyShift action_20
action_3 (46) = happyShift action_21
action_3 (47) = happyShift action_22
action_3 (48) = happyShift action_23
action_3 (49) = happyShift action_24
action_3 (50) = happyShift action_25
action_3 (51) = happyAccept
action_3 (4) = happyGoto action_43
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_42
action_4 _ = happyReduce_26

action_5 _ = happyReduce_28

action_6 _ = happyReduce_29

action_7 _ = happyReduce_32

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
action_9 (49) = happyShift action_24
action_9 (50) = happyShift action_25
action_9 (4) = happyGoto action_41
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (27) = happyShift action_40
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
action_11 (49) = happyShift action_24
action_11 (50) = happyShift action_25
action_11 (4) = happyGoto action_39
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_27

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
action_13 (49) = happyShift action_24
action_13 (50) = happyShift action_25
action_13 (4) = happyGoto action_38
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
action_14 (49) = happyShift action_24
action_14 (50) = happyShift action_25
action_14 (4) = happyGoto action_37
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
action_15 (49) = happyShift action_24
action_15 (50) = happyShift action_25
action_15 (4) = happyGoto action_36
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (22) = happyShift action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_34
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
action_18 (49) = happyShift action_24
action_18 (50) = happyShift action_25
action_18 (4) = happyGoto action_33
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
action_19 (49) = happyShift action_24
action_19 (50) = happyShift action_25
action_19 (4) = happyGoto action_32
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
action_20 (49) = happyShift action_24
action_20 (50) = happyShift action_25
action_20 (4) = happyGoto action_31
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
action_21 (49) = happyShift action_24
action_21 (50) = happyShift action_25
action_21 (4) = happyGoto action_30
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
action_22 (49) = happyShift action_24
action_22 (50) = happyShift action_25
action_22 (4) = happyGoto action_29
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
action_23 (49) = happyShift action_24
action_23 (50) = happyShift action_25
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (11) = happyShift action_2
action_24 (12) = happyShift action_7
action_24 (13) = happyShift action_8
action_24 (14) = happyShift action_9
action_24 (16) = happyShift action_10
action_24 (22) = happyShift action_11
action_24 (27) = happyShift action_12
action_24 (29) = happyShift action_13
action_24 (33) = happyShift action_14
action_24 (38) = happyShift action_15
action_24 (39) = happyShift action_16
action_24 (41) = happyShift action_17
action_24 (43) = happyShift action_18
action_24 (44) = happyShift action_19
action_24 (45) = happyShift action_20
action_24 (46) = happyShift action_21
action_24 (47) = happyShift action_22
action_24 (48) = happyShift action_23
action_24 (49) = happyShift action_24
action_24 (50) = happyShift action_25
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (11) = happyShift action_2
action_25 (12) = happyShift action_7
action_25 (13) = happyShift action_8
action_25 (14) = happyShift action_9
action_25 (16) = happyShift action_10
action_25 (22) = happyShift action_11
action_25 (27) = happyShift action_12
action_25 (29) = happyShift action_13
action_25 (33) = happyShift action_14
action_25 (38) = happyShift action_15
action_25 (39) = happyShift action_16
action_25 (41) = happyShift action_17
action_25 (43) = happyShift action_18
action_25 (44) = happyShift action_19
action_25 (45) = happyShift action_20
action_25 (46) = happyShift action_21
action_25 (47) = happyShift action_22
action_25 (48) = happyShift action_23
action_25 (49) = happyShift action_24
action_25 (50) = happyShift action_25
action_25 (4) = happyGoto action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (11) = happyShift action_2
action_26 (12) = happyShift action_7
action_26 (13) = happyShift action_8
action_26 (14) = happyShift action_9
action_26 (16) = happyShift action_10
action_26 (18) = happyShift action_44
action_26 (19) = happyShift action_45
action_26 (22) = happyShift action_11
action_26 (27) = happyShift action_12
action_26 (28) = happyShift action_46
action_26 (29) = happyShift action_13
action_26 (33) = happyShift action_14
action_26 (34) = happyShift action_47
action_26 (35) = happyShift action_48
action_26 (36) = happyShift action_49
action_26 (37) = happyShift action_50
action_26 (38) = happyShift action_15
action_26 (39) = happyShift action_16
action_26 (41) = happyShift action_17
action_26 (42) = happyShift action_51
action_26 (43) = happyShift action_18
action_26 (44) = happyShift action_19
action_26 (45) = happyShift action_20
action_26 (46) = happyShift action_21
action_26 (47) = happyShift action_22
action_26 (48) = happyShift action_23
action_26 (49) = happyShift action_24
action_26 (50) = happyShift action_25
action_26 (4) = happyGoto action_71
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (11) = happyShift action_2
action_27 (12) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (14) = happyShift action_9
action_27 (16) = happyShift action_10
action_27 (18) = happyShift action_44
action_27 (19) = happyShift action_45
action_27 (22) = happyShift action_11
action_27 (27) = happyShift action_12
action_27 (28) = happyShift action_46
action_27 (29) = happyShift action_13
action_27 (33) = happyShift action_14
action_27 (34) = happyShift action_47
action_27 (35) = happyShift action_48
action_27 (36) = happyShift action_49
action_27 (37) = happyShift action_50
action_27 (38) = happyShift action_15
action_27 (39) = happyShift action_16
action_27 (41) = happyShift action_17
action_27 (42) = happyShift action_51
action_27 (43) = happyShift action_18
action_27 (44) = happyShift action_19
action_27 (45) = happyShift action_20
action_27 (46) = happyShift action_21
action_27 (47) = happyShift action_22
action_27 (48) = happyShift action_23
action_27 (49) = happyShift action_24
action_27 (50) = happyShift action_25
action_27 (4) = happyGoto action_70
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_4
action_28 (9) = happyShift action_5
action_28 (10) = happyShift action_6
action_28 (13) = happyShift action_8
action_28 (16) = happyShift action_10
action_28 (18) = happyShift action_44
action_28 (19) = happyShift action_45
action_28 (22) = happyShift action_11
action_28 (27) = happyShift action_12
action_28 (28) = happyShift action_46
action_28 (29) = happyShift action_13
action_28 (33) = happyShift action_14
action_28 (34) = happyShift action_47
action_28 (35) = happyShift action_48
action_28 (36) = happyShift action_49
action_28 (37) = happyShift action_50
action_28 (38) = happyShift action_15
action_28 (39) = happyShift action_16
action_28 (41) = happyShift action_17
action_28 (42) = happyShift action_51
action_28 (43) = happyShift action_18
action_28 (44) = happyShift action_19
action_28 (47) = happyShift action_22
action_28 (4) = happyGoto action_43
action_28 _ = happyReduce_15

action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (11) = happyShift action_2
action_29 (12) = happyShift action_7
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (16) = happyShift action_10
action_29 (18) = happyShift action_44
action_29 (19) = happyShift action_45
action_29 (22) = happyShift action_11
action_29 (27) = happyShift action_12
action_29 (28) = happyShift action_46
action_29 (29) = happyShift action_13
action_29 (33) = happyShift action_14
action_29 (34) = happyShift action_47
action_29 (35) = happyShift action_48
action_29 (36) = happyShift action_49
action_29 (37) = happyShift action_50
action_29 (38) = happyShift action_15
action_29 (39) = happyShift action_16
action_29 (41) = happyShift action_17
action_29 (42) = happyShift action_51
action_29 (43) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (45) = happyShift action_20
action_29 (46) = happyShift action_21
action_29 (47) = happyShift action_22
action_29 (48) = happyShift action_23
action_29 (49) = happyShift action_24
action_29 (50) = happyShift action_25
action_29 (4) = happyGoto action_69
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (10) = happyShift action_6
action_30 (13) = happyShift action_8
action_30 (16) = happyShift action_10
action_30 (18) = happyShift action_44
action_30 (19) = happyShift action_45
action_30 (22) = happyShift action_11
action_30 (27) = happyShift action_12
action_30 (28) = happyShift action_46
action_30 (29) = happyShift action_13
action_30 (33) = happyShift action_14
action_30 (34) = happyShift action_47
action_30 (35) = happyShift action_48
action_30 (36) = happyShift action_49
action_30 (37) = happyShift action_50
action_30 (38) = happyShift action_15
action_30 (39) = happyShift action_16
action_30 (41) = happyShift action_17
action_30 (42) = happyShift action_51
action_30 (43) = happyShift action_18
action_30 (44) = happyShift action_19
action_30 (46) = happyShift action_21
action_30 (47) = happyShift action_22
action_30 (48) = happyShift action_23
action_30 (4) = happyGoto action_43
action_30 _ = happyReduce_13

action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_6
action_31 (13) = happyShift action_8
action_31 (16) = happyShift action_10
action_31 (18) = happyShift action_44
action_31 (19) = happyShift action_45
action_31 (22) = happyShift action_11
action_31 (27) = happyShift action_12
action_31 (28) = happyShift action_46
action_31 (29) = happyShift action_13
action_31 (33) = happyShift action_14
action_31 (34) = happyShift action_47
action_31 (35) = happyShift action_48
action_31 (36) = happyShift action_49
action_31 (37) = happyShift action_50
action_31 (38) = happyShift action_15
action_31 (39) = happyShift action_16
action_31 (41) = happyShift action_17
action_31 (42) = happyShift action_51
action_31 (43) = happyShift action_18
action_31 (44) = happyShift action_19
action_31 (46) = happyShift action_21
action_31 (47) = happyShift action_22
action_31 (48) = happyShift action_23
action_31 (4) = happyGoto action_43
action_31 _ = happyReduce_12

action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (13) = happyShift action_8
action_32 (16) = happyShift action_10
action_32 (18) = happyShift action_44
action_32 (19) = happyShift action_45
action_32 (22) = happyShift action_11
action_32 (27) = happyShift action_12
action_32 (28) = happyShift action_46
action_32 (29) = happyShift action_13
action_32 (33) = happyShift action_14
action_32 (34) = happyShift action_47
action_32 (35) = happyShift action_48
action_32 (36) = happyShift action_49
action_32 (37) = happyShift action_50
action_32 (39) = happyShift action_16
action_32 (41) = happyShift action_17
action_32 (42) = happyShift action_51
action_32 (44) = happyShift action_19
action_32 (4) = happyGoto action_43
action_32 _ = happyReduce_5

action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (11) = happyShift action_2
action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (16) = happyShift action_10
action_33 (18) = happyShift action_44
action_33 (19) = happyShift action_45
action_33 (22) = happyShift action_11
action_33 (27) = happyShift action_12
action_33 (28) = happyShift action_46
action_33 (29) = happyShift action_13
action_33 (33) = happyShift action_14
action_33 (34) = happyShift action_47
action_33 (35) = happyShift action_48
action_33 (36) = happyShift action_49
action_33 (37) = happyShift action_50
action_33 (38) = happyShift action_15
action_33 (39) = happyShift action_16
action_33 (41) = happyShift action_17
action_33 (42) = happyShift action_51
action_33 (43) = happyShift action_18
action_33 (44) = happyShift action_19
action_33 (45) = happyShift action_20
action_33 (46) = happyShift action_21
action_33 (47) = happyShift action_22
action_33 (48) = happyShift action_23
action_33 (49) = happyShift action_24
action_33 (50) = happyShift action_25
action_33 (4) = happyGoto action_68
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_67
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (27) = happyShift action_66
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_6
action_36 (13) = happyShift action_8
action_36 (16) = happyShift action_10
action_36 (18) = happyShift action_44
action_36 (19) = happyShift action_45
action_36 (22) = happyShift action_11
action_36 (27) = happyShift action_12
action_36 (28) = happyShift action_46
action_36 (29) = happyShift action_13
action_36 (33) = happyShift action_14
action_36 (34) = happyShift action_47
action_36 (35) = happyShift action_48
action_36 (36) = happyShift action_49
action_36 (37) = happyShift action_50
action_36 (38) = happyShift action_15
action_36 (39) = happyShift action_16
action_36 (41) = happyShift action_17
action_36 (42) = happyShift action_51
action_36 (44) = happyShift action_19
action_36 (4) = happyGoto action_43
action_36 _ = happyReduce_11

action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (13) = happyShift action_8
action_37 (16) = happyShift action_10
action_37 (18) = happyShift action_44
action_37 (19) = happyShift action_45
action_37 (22) = happyShift action_11
action_37 (27) = happyShift action_12
action_37 (28) = happyShift action_46
action_37 (29) = happyShift action_13
action_37 (34) = happyShift action_47
action_37 (35) = happyShift action_48
action_37 (36) = happyShift action_49
action_37 (37) = happyShift action_50
action_37 (39) = happyShift action_16
action_37 (41) = happyShift action_17
action_37 (42) = happyShift action_51
action_37 (4) = happyGoto action_43
action_37 _ = happyReduce_10

action_38 (8) = happyShift action_4
action_38 (9) = happyShift action_5
action_38 (10) = happyShift action_6
action_38 (11) = happyShift action_2
action_38 (12) = happyShift action_7
action_38 (13) = happyShift action_8
action_38 (14) = happyShift action_9
action_38 (16) = happyShift action_10
action_38 (18) = happyShift action_44
action_38 (19) = happyShift action_45
action_38 (22) = happyShift action_11
action_38 (27) = happyShift action_12
action_38 (28) = happyShift action_46
action_38 (29) = happyShift action_13
action_38 (31) = happyShift action_65
action_38 (33) = happyShift action_14
action_38 (34) = happyShift action_47
action_38 (35) = happyShift action_48
action_38 (36) = happyShift action_49
action_38 (37) = happyShift action_50
action_38 (38) = happyShift action_15
action_38 (39) = happyShift action_16
action_38 (41) = happyShift action_17
action_38 (42) = happyShift action_51
action_38 (43) = happyShift action_18
action_38 (44) = happyShift action_19
action_38 (45) = happyShift action_20
action_38 (46) = happyShift action_21
action_38 (47) = happyShift action_22
action_38 (48) = happyShift action_23
action_38 (49) = happyShift action_24
action_38 (50) = happyShift action_25
action_38 (4) = happyGoto action_43
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (10) = happyShift action_6
action_39 (11) = happyShift action_2
action_39 (12) = happyShift action_7
action_39 (13) = happyShift action_8
action_39 (14) = happyShift action_9
action_39 (16) = happyShift action_10
action_39 (18) = happyShift action_44
action_39 (19) = happyShift action_45
action_39 (22) = happyShift action_11
action_39 (23) = happyShift action_64
action_39 (27) = happyShift action_12
action_39 (28) = happyShift action_46
action_39 (29) = happyShift action_13
action_39 (33) = happyShift action_14
action_39 (34) = happyShift action_47
action_39 (35) = happyShift action_48
action_39 (36) = happyShift action_49
action_39 (37) = happyShift action_50
action_39 (38) = happyShift action_15
action_39 (39) = happyShift action_16
action_39 (41) = happyShift action_17
action_39 (42) = happyShift action_51
action_39 (43) = happyShift action_18
action_39 (44) = happyShift action_19
action_39 (45) = happyShift action_20
action_39 (46) = happyShift action_21
action_39 (47) = happyShift action_22
action_39 (48) = happyShift action_23
action_39 (49) = happyShift action_24
action_39 (50) = happyShift action_25
action_39 (4) = happyGoto action_43
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (20) = happyShift action_63
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (8) = happyShift action_4
action_41 (9) = happyShift action_5
action_41 (10) = happyShift action_6
action_41 (13) = happyShift action_8
action_41 (14) = happyShift action_9
action_41 (16) = happyShift action_10
action_41 (18) = happyShift action_44
action_41 (19) = happyShift action_45
action_41 (22) = happyShift action_11
action_41 (27) = happyShift action_12
action_41 (28) = happyShift action_46
action_41 (29) = happyShift action_13
action_41 (33) = happyShift action_14
action_41 (34) = happyShift action_47
action_41 (35) = happyShift action_48
action_41 (36) = happyShift action_49
action_41 (37) = happyShift action_50
action_41 (38) = happyShift action_15
action_41 (39) = happyShift action_16
action_41 (41) = happyShift action_17
action_41 (42) = happyShift action_51
action_41 (43) = happyShift action_18
action_41 (44) = happyShift action_19
action_41 (45) = happyShift action_20
action_41 (46) = happyShift action_21
action_41 (47) = happyShift action_22
action_41 (48) = happyShift action_23
action_41 (49) = happyShift action_24
action_41 (50) = happyShift action_25
action_41 (4) = happyGoto action_43
action_41 _ = happyReduce_31

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
action_42 (49) = happyShift action_24
action_42 (50) = happyShift action_25
action_42 (4) = happyGoto action_62
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (13) = happyShift action_8
action_43 (39) = happyShift action_16
action_43 (4) = happyGoto action_43
action_43 _ = happyReduce_24

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
action_44 (49) = happyShift action_24
action_44 (50) = happyShift action_25
action_44 (4) = happyGoto action_61
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
action_45 (49) = happyShift action_24
action_45 (50) = happyShift action_25
action_45 (4) = happyGoto action_60
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
action_46 (49) = happyShift action_24
action_46 (50) = happyShift action_25
action_46 (4) = happyGoto action_59
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
action_47 (49) = happyShift action_24
action_47 (50) = happyShift action_25
action_47 (4) = happyGoto action_58
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (8) = happyShift action_4
action_48 (9) = happyShift action_5
action_48 (10) = happyShift action_6
action_48 (11) = happyShift action_2
action_48 (12) = happyShift action_7
action_48 (13) = happyShift action_8
action_48 (14) = happyShift action_9
action_48 (16) = happyShift action_10
action_48 (22) = happyShift action_11
action_48 (27) = happyShift action_12
action_48 (29) = happyShift action_13
action_48 (33) = happyShift action_14
action_48 (38) = happyShift action_15
action_48 (39) = happyShift action_16
action_48 (41) = happyShift action_17
action_48 (43) = happyShift action_18
action_48 (44) = happyShift action_19
action_48 (45) = happyShift action_20
action_48 (46) = happyShift action_21
action_48 (47) = happyShift action_22
action_48 (48) = happyShift action_23
action_48 (49) = happyShift action_24
action_48 (50) = happyShift action_25
action_48 (4) = happyGoto action_57
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (8) = happyShift action_4
action_49 (9) = happyShift action_5
action_49 (10) = happyShift action_6
action_49 (11) = happyShift action_2
action_49 (12) = happyShift action_7
action_49 (13) = happyShift action_8
action_49 (14) = happyShift action_9
action_49 (16) = happyShift action_10
action_49 (22) = happyShift action_11
action_49 (27) = happyShift action_12
action_49 (29) = happyShift action_13
action_49 (33) = happyShift action_14
action_49 (38) = happyShift action_15
action_49 (39) = happyShift action_16
action_49 (41) = happyShift action_17
action_49 (43) = happyShift action_18
action_49 (44) = happyShift action_19
action_49 (45) = happyShift action_20
action_49 (46) = happyShift action_21
action_49 (47) = happyShift action_22
action_49 (48) = happyShift action_23
action_49 (49) = happyShift action_24
action_49 (50) = happyShift action_25
action_49 (4) = happyGoto action_56
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (8) = happyShift action_4
action_50 (9) = happyShift action_5
action_50 (10) = happyShift action_6
action_50 (11) = happyShift action_2
action_50 (12) = happyShift action_7
action_50 (13) = happyShift action_8
action_50 (14) = happyShift action_9
action_50 (16) = happyShift action_10
action_50 (22) = happyShift action_11
action_50 (27) = happyShift action_12
action_50 (29) = happyShift action_13
action_50 (33) = happyShift action_14
action_50 (38) = happyShift action_15
action_50 (39) = happyShift action_16
action_50 (41) = happyShift action_17
action_50 (43) = happyShift action_18
action_50 (44) = happyShift action_19
action_50 (45) = happyShift action_20
action_50 (46) = happyShift action_21
action_50 (47) = happyShift action_22
action_50 (48) = happyShift action_23
action_50 (49) = happyShift action_24
action_50 (50) = happyShift action_25
action_50 (4) = happyGoto action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (8) = happyShift action_4
action_51 (9) = happyShift action_5
action_51 (10) = happyShift action_6
action_51 (11) = happyShift action_2
action_51 (12) = happyShift action_7
action_51 (13) = happyShift action_8
action_51 (14) = happyShift action_9
action_51 (16) = happyShift action_10
action_51 (22) = happyShift action_11
action_51 (27) = happyShift action_12
action_51 (29) = happyShift action_13
action_51 (33) = happyShift action_14
action_51 (38) = happyShift action_15
action_51 (39) = happyShift action_16
action_51 (41) = happyShift action_17
action_51 (43) = happyShift action_18
action_51 (44) = happyShift action_19
action_51 (45) = happyShift action_20
action_51 (46) = happyShift action_21
action_51 (47) = happyShift action_22
action_51 (48) = happyShift action_23
action_51 (49) = happyShift action_24
action_51 (50) = happyShift action_25
action_51 (4) = happyGoto action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_4
action_52 (9) = happyShift action_5
action_52 (10) = happyShift action_6
action_52 (11) = happyShift action_2
action_52 (12) = happyShift action_53
action_52 (13) = happyShift action_8
action_52 (14) = happyShift action_9
action_52 (16) = happyShift action_10
action_52 (18) = happyShift action_44
action_52 (19) = happyShift action_45
action_52 (22) = happyShift action_11
action_52 (27) = happyShift action_12
action_52 (28) = happyShift action_46
action_52 (29) = happyShift action_13
action_52 (33) = happyShift action_14
action_52 (34) = happyShift action_47
action_52 (35) = happyShift action_48
action_52 (36) = happyShift action_49
action_52 (37) = happyShift action_50
action_52 (38) = happyShift action_15
action_52 (39) = happyShift action_16
action_52 (41) = happyShift action_17
action_52 (42) = happyShift action_51
action_52 (43) = happyShift action_18
action_52 (44) = happyShift action_19
action_52 (45) = happyShift action_20
action_52 (46) = happyShift action_21
action_52 (47) = happyShift action_22
action_52 (48) = happyShift action_23
action_52 (49) = happyShift action_24
action_52 (50) = happyShift action_25
action_52 (4) = happyGoto action_43
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyReduce_1
action_53 (9) = happyReduce_1
action_53 (10) = happyReduce_1
action_53 (11) = happyReduce_1
action_53 (12) = happyReduce_1
action_53 (13) = happyReduce_1
action_53 (14) = happyReduce_1
action_53 (16) = happyReduce_1
action_53 (18) = happyReduce_1
action_53 (19) = happyReduce_1
action_53 (22) = happyReduce_1
action_53 (27) = happyReduce_1
action_53 (28) = happyReduce_1
action_53 (29) = happyReduce_1
action_53 (33) = happyReduce_1
action_53 (34) = happyReduce_1
action_53 (35) = happyReduce_1
action_53 (36) = happyReduce_1
action_53 (37) = happyReduce_1
action_53 (38) = happyReduce_1
action_53 (39) = happyReduce_1
action_53 (41) = happyReduce_1
action_53 (42) = happyReduce_1
action_53 (43) = happyReduce_1
action_53 (44) = happyReduce_1
action_53 (45) = happyReduce_1
action_53 (46) = happyReduce_1
action_53 (47) = happyReduce_1
action_53 (48) = happyReduce_1
action_53 (49) = happyReduce_1
action_53 (50) = happyReduce_1
action_53 _ = happyReduce_1

action_54 (13) = happyShift action_8
action_54 (18) = happyShift action_44
action_54 (19) = happyShift action_45
action_54 (28) = happyShift action_46
action_54 (34) = happyShift action_47
action_54 (35) = happyShift action_48
action_54 (36) = happyShift action_49
action_54 (37) = happyShift action_50
action_54 (39) = happyShift action_16
action_54 (4) = happyGoto action_43
action_54 _ = happyReduce_6

action_55 (13) = happyShift action_8
action_55 (18) = happyShift action_44
action_55 (19) = happyShift action_45
action_55 (28) = happyShift action_46
action_55 (39) = happyShift action_16
action_55 (4) = happyGoto action_43
action_55 _ = happyReduce_20

action_56 (13) = happyShift action_8
action_56 (18) = happyShift action_44
action_56 (19) = happyShift action_45
action_56 (28) = happyShift action_46
action_56 (35) = happyShift action_48
action_56 (37) = happyShift action_50
action_56 (39) = happyShift action_16
action_56 (4) = happyGoto action_43
action_56 _ = happyReduce_18

action_57 (13) = happyShift action_8
action_57 (18) = happyShift action_44
action_57 (19) = happyShift action_45
action_57 (28) = happyShift action_46
action_57 (39) = happyShift action_16
action_57 (4) = happyGoto action_43
action_57 _ = happyReduce_19

action_58 (13) = happyShift action_8
action_58 (18) = happyShift action_44
action_58 (19) = happyShift action_45
action_58 (28) = happyShift action_46
action_58 (35) = happyShift action_48
action_58 (37) = happyShift action_50
action_58 (39) = happyShift action_16
action_58 (4) = happyGoto action_43
action_58 _ = happyReduce_17

action_59 (13) = happyShift action_8
action_59 (39) = happyShift action_16
action_59 (4) = happyGoto action_43
action_59 _ = happyReduce_23

action_60 (13) = happyShift action_8
action_60 (28) = happyShift action_46
action_60 (39) = happyShift action_16
action_60 (4) = happyGoto action_43
action_60 _ = happyReduce_22

action_61 (13) = happyShift action_8
action_61 (28) = happyShift action_46
action_61 (39) = happyShift action_16
action_61 (4) = happyGoto action_43
action_61 _ = happyReduce_21

action_62 (13) = happyShift action_8
action_62 (39) = happyShift action_16
action_62 (4) = happyGoto action_43
action_62 _ = happyReduce_25

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
action_63 (49) = happyShift action_24
action_63 (50) = happyShift action_25
action_63 (4) = happyGoto action_75
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_33

action_65 (8) = happyShift action_4
action_65 (9) = happyShift action_5
action_65 (10) = happyShift action_6
action_65 (11) = happyShift action_2
action_65 (12) = happyShift action_7
action_65 (13) = happyShift action_8
action_65 (14) = happyShift action_9
action_65 (16) = happyShift action_10
action_65 (22) = happyShift action_11
action_65 (27) = happyShift action_12
action_65 (29) = happyShift action_13
action_65 (33) = happyShift action_14
action_65 (38) = happyShift action_15
action_65 (39) = happyShift action_16
action_65 (41) = happyShift action_17
action_65 (43) = happyShift action_18
action_65 (44) = happyShift action_19
action_65 (45) = happyShift action_20
action_65 (46) = happyShift action_21
action_65 (47) = happyShift action_22
action_65 (48) = happyShift action_23
action_65 (49) = happyShift action_24
action_65 (50) = happyShift action_25
action_65 (4) = happyGoto action_74
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (21) = happyShift action_73
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (8) = happyShift action_4
action_67 (9) = happyShift action_5
action_67 (10) = happyShift action_6
action_67 (11) = happyShift action_2
action_67 (12) = happyShift action_7
action_67 (13) = happyShift action_8
action_67 (14) = happyShift action_9
action_67 (16) = happyShift action_10
action_67 (22) = happyShift action_11
action_67 (27) = happyShift action_12
action_67 (29) = happyShift action_13
action_67 (33) = happyShift action_14
action_67 (38) = happyShift action_15
action_67 (39) = happyShift action_16
action_67 (41) = happyShift action_17
action_67 (43) = happyShift action_18
action_67 (44) = happyShift action_19
action_67 (45) = happyShift action_20
action_67 (46) = happyShift action_21
action_67 (47) = happyShift action_22
action_67 (48) = happyShift action_23
action_67 (49) = happyShift action_24
action_67 (50) = happyShift action_25
action_67 (4) = happyGoto action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (13) = happyShift action_8
action_68 (23) = happyReduce_9
action_68 (30) = happyReduce_9
action_68 (31) = happyReduce_9
action_68 (32) = happyReduce_9
action_68 (39) = happyShift action_16
action_68 (51) = happyReduce_9
action_68 (4) = happyGoto action_43
action_68 _ = happyReduce_24

action_69 (13) = happyShift action_8
action_69 (23) = happyReduce_14
action_69 (30) = happyReduce_14
action_69 (31) = happyReduce_14
action_69 (32) = happyReduce_14
action_69 (39) = happyShift action_16
action_69 (51) = happyReduce_14
action_69 (4) = happyGoto action_43
action_69 _ = happyReduce_24

action_70 (13) = happyShift action_8
action_70 (23) = happyReduce_7
action_70 (30) = happyReduce_7
action_70 (31) = happyReduce_7
action_70 (32) = happyReduce_7
action_70 (39) = happyShift action_16
action_70 (51) = happyReduce_7
action_70 (4) = happyGoto action_43
action_70 _ = happyReduce_24

action_71 (13) = happyShift action_8
action_71 (23) = happyReduce_16
action_71 (30) = happyReduce_16
action_71 (31) = happyReduce_16
action_71 (32) = happyReduce_16
action_71 (39) = happyShift action_16
action_71 (51) = happyReduce_16
action_71 (4) = happyGoto action_43
action_71 _ = happyReduce_24

action_72 (8) = happyFail []
action_72 (9) = happyFail []
action_72 (10) = happyFail []
action_72 (13) = happyShift action_8
action_72 (18) = happyShift action_44
action_72 (19) = happyShift action_45
action_72 (22) = happyFail []
action_72 (27) = happyFail []
action_72 (28) = happyShift action_46
action_72 (34) = happyShift action_47
action_72 (35) = happyShift action_48
action_72 (36) = happyShift action_49
action_72 (37) = happyShift action_50
action_72 (39) = happyShift action_16
action_72 (42) = happyShift action_51
action_72 (4) = happyGoto action_43
action_72 _ = happyReduce_3

action_73 (6) = happyShift action_78
action_73 (7) = happyShift action_79
action_73 (5) = happyGoto action_77
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (8) = happyShift action_4
action_74 (9) = happyShift action_5
action_74 (10) = happyShift action_6
action_74 (11) = happyShift action_2
action_74 (12) = happyShift action_7
action_74 (13) = happyShift action_8
action_74 (14) = happyShift action_9
action_74 (16) = happyShift action_10
action_74 (18) = happyShift action_44
action_74 (19) = happyShift action_45
action_74 (22) = happyShift action_11
action_74 (27) = happyShift action_12
action_74 (28) = happyShift action_46
action_74 (29) = happyShift action_13
action_74 (30) = happyShift action_76
action_74 (33) = happyShift action_14
action_74 (34) = happyShift action_47
action_74 (35) = happyShift action_48
action_74 (36) = happyShift action_49
action_74 (37) = happyShift action_50
action_74 (38) = happyShift action_15
action_74 (39) = happyShift action_16
action_74 (41) = happyShift action_17
action_74 (42) = happyShift action_51
action_74 (43) = happyShift action_18
action_74 (44) = happyShift action_19
action_74 (45) = happyShift action_20
action_74 (46) = happyShift action_21
action_74 (47) = happyShift action_22
action_74 (48) = happyShift action_23
action_74 (49) = happyShift action_24
action_74 (50) = happyShift action_25
action_74 (4) = happyGoto action_43
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (8) = happyShift action_4
action_75 (9) = happyShift action_5
action_75 (10) = happyShift action_6
action_75 (11) = happyShift action_2
action_75 (12) = happyShift action_7
action_75 (13) = happyShift action_8
action_75 (14) = happyShift action_9
action_75 (16) = happyShift action_10
action_75 (18) = happyShift action_44
action_75 (19) = happyShift action_45
action_75 (22) = happyShift action_11
action_75 (27) = happyShift action_12
action_75 (28) = happyShift action_46
action_75 (29) = happyShift action_13
action_75 (33) = happyShift action_14
action_75 (34) = happyShift action_47
action_75 (35) = happyShift action_48
action_75 (36) = happyShift action_49
action_75 (37) = happyShift action_50
action_75 (38) = happyShift action_15
action_75 (39) = happyShift action_16
action_75 (41) = happyShift action_17
action_75 (42) = happyShift action_51
action_75 (43) = happyShift action_18
action_75 (44) = happyShift action_19
action_75 (45) = happyShift action_20
action_75 (46) = happyShift action_21
action_75 (47) = happyShift action_22
action_75 (48) = happyShift action_23
action_75 (49) = happyShift action_24
action_75 (50) = happyShift action_25
action_75 (4) = happyGoto action_43
action_75 _ = happyReduce_30

action_76 (8) = happyShift action_4
action_76 (9) = happyShift action_5
action_76 (10) = happyShift action_6
action_76 (11) = happyShift action_2
action_76 (12) = happyShift action_7
action_76 (13) = happyShift action_8
action_76 (14) = happyShift action_9
action_76 (16) = happyShift action_10
action_76 (22) = happyShift action_11
action_76 (27) = happyShift action_12
action_76 (29) = happyShift action_13
action_76 (33) = happyShift action_14
action_76 (38) = happyShift action_15
action_76 (39) = happyShift action_16
action_76 (41) = happyShift action_17
action_76 (43) = happyShift action_18
action_76 (44) = happyShift action_19
action_76 (45) = happyShift action_20
action_76 (46) = happyShift action_21
action_76 (47) = happyShift action_22
action_76 (48) = happyShift action_23
action_76 (49) = happyShift action_24
action_76 (50) = happyShift action_25
action_76 (4) = happyGoto action_82
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (23) = happyShift action_80
action_77 (40) = happyShift action_81
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_34

action_79 _ = happyReduce_35

action_80 (8) = happyShift action_4
action_80 (9) = happyShift action_5
action_80 (10) = happyShift action_6
action_80 (11) = happyShift action_2
action_80 (12) = happyShift action_7
action_80 (13) = happyShift action_8
action_80 (14) = happyShift action_9
action_80 (16) = happyShift action_10
action_80 (22) = happyShift action_11
action_80 (27) = happyShift action_12
action_80 (29) = happyShift action_13
action_80 (33) = happyShift action_14
action_80 (38) = happyShift action_15
action_80 (39) = happyShift action_16
action_80 (41) = happyShift action_17
action_80 (43) = happyShift action_18
action_80 (44) = happyShift action_19
action_80 (45) = happyShift action_20
action_80 (46) = happyShift action_21
action_80 (47) = happyShift action_22
action_80 (48) = happyShift action_23
action_80 (49) = happyShift action_24
action_80 (50) = happyShift action_25
action_80 (4) = happyGoto action_85
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (6) = happyShift action_78
action_81 (7) = happyShift action_79
action_81 (5) = happyGoto action_84
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (8) = happyShift action_4
action_82 (9) = happyShift action_5
action_82 (10) = happyShift action_6
action_82 (11) = happyShift action_2
action_82 (12) = happyShift action_7
action_82 (13) = happyShift action_8
action_82 (14) = happyShift action_9
action_82 (16) = happyShift action_10
action_82 (18) = happyShift action_44
action_82 (19) = happyShift action_45
action_82 (22) = happyShift action_11
action_82 (27) = happyShift action_12
action_82 (28) = happyShift action_46
action_82 (29) = happyShift action_13
action_82 (32) = happyShift action_83
action_82 (33) = happyShift action_14
action_82 (34) = happyShift action_47
action_82 (35) = happyShift action_48
action_82 (36) = happyShift action_49
action_82 (37) = happyShift action_50
action_82 (38) = happyShift action_15
action_82 (39) = happyShift action_16
action_82 (41) = happyShift action_17
action_82 (42) = happyShift action_51
action_82 (43) = happyShift action_18
action_82 (44) = happyShift action_19
action_82 (45) = happyShift action_20
action_82 (46) = happyShift action_21
action_82 (47) = happyShift action_22
action_82 (48) = happyShift action_23
action_82 (49) = happyShift action_24
action_82 (50) = happyShift action_25
action_82 (4) = happyGoto action_43
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_2

action_84 _ = happyReduce_36

action_85 (8) = happyFail []
action_85 (9) = happyFail []
action_85 (10) = happyFail []
action_85 (13) = happyShift action_8
action_85 (18) = happyShift action_44
action_85 (19) = happyShift action_45
action_85 (22) = happyFail []
action_85 (27) = happyFail []
action_85 (28) = happyShift action_46
action_85 (34) = happyShift action_47
action_85 (35) = happyShift action_48
action_85 (36) = happyShift action_49
action_85 (37) = happyShift action_50
action_85 (39) = happyShift action_16
action_85 (42) = happyShift action_51
action_85 (4) = happyGoto action_43
action_85 _ = happyReduce_8

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
		 (TmTake happy_var_2 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSum happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmListsArith happy_var_2 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLine happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  4 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  4 happyReduction_27
happyReduction_27 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  4 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_29 = happySpecReduce_1  4 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_30 = happyReduce 4 4 happyReduction_30
happyReduction_30 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happySpecReduce_2  4 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  4 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn4
		 (TmEnd
	)

happyReduce_33 = happySpecReduce_3  4 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  5 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_35 = happySpecReduce_1  5 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_36 = happySpecReduce_3  5 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

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
	TokenTake _ -> cont 47;
	TokenSum _ -> cont 48;
	TokenMap _ -> cont 49;
	TokenListsArith _ -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
            | TmPush Int Int Expr | TmHead Expr | TmLast Expr | TmSum Expr | TmTake Expr Expr | TmApp Expr Expr | TmLambda String DataType Expr
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

