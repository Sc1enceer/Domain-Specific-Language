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
happyExpList = Happy_Data_Array.listArray (0,670) ([49024,5152,3425,128,0,0,33534,33872,49205,4959,49034,7,8192,0,0,0,0,0,0,0,0,0,0,0,0,61440,33815,44066,1,128,0,24512,35344,1712,0,0,0,16767,49704,57370,2095,22597,64515,41221,27400,0,32,0,16,0,0,33534,33872,49205,4191,45194,14342,17000,13297,1792,10317,5758,32,0,0,1532,2209,32875,9859,7700,28675,34000,26562,65024,20634,15869,24512,35379,1983,0,64,0,19783,32296,57374,2095,22597,7171,41264,6384,49024,5152,3425,6128,8836,428,33534,33872,49205,4191,45194,63494,16907,54801,32512,10305,6850,12256,17672,856,13820,63649,123,0,0,0,192,960,0,24,0,0,3,10,24576,0,0,3072,10240,0,0,0,0,0,0,0,0,0,0,2,0,0,0,49152,4191,45194,63494,17259,63473,32512,10305,6850,32768,32769,135,1532,2209,32875,9919,32564,3087,0,0,0,256,512,0,0,0,0,0,0,16767,49704,57370,6575,57285,64515,41221,27400,49024,37926,3967,0,1,32768,1,0,0,0,0,63488,16907,54801,0,0,0,32768,32769,135,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","int","true","false","begin","end","getStream","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","'++'","splitAt","duplicate","%eof"]
        bit_start = st * 45
        bit_end = (st + 1) * 45
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..44]
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
action_2 (4) = happyGoto action_39
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (8) = happyShift action_4
action_3 (9) = happyShift action_5
action_3 (10) = happyShift action_6
action_3 (11) = happyShift action_2
action_3 (12) = happyShift action_7
action_3 (13) = happyShift action_8
action_3 (14) = happyShift action_9
action_3 (16) = happyShift action_10
action_3 (18) = happyShift action_32
action_3 (19) = happyShift action_33
action_3 (22) = happyShift action_11
action_3 (27) = happyShift action_12
action_3 (29) = happyShift action_13
action_3 (33) = happyShift action_14
action_3 (34) = happyShift action_34
action_3 (35) = happyShift action_35
action_3 (36) = happyShift action_36
action_3 (37) = happyShift action_37
action_3 (38) = happyShift action_15
action_3 (39) = happyShift action_16
action_3 (41) = happyShift action_17
action_3 (42) = happyShift action_38
action_3 (43) = happyShift action_18
action_3 (44) = happyShift action_19
action_3 (45) = happyAccept
action_3 (4) = happyGoto action_31
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (26) = happyShift action_30
action_4 _ = happyReduce_19

action_5 _ = happyReduce_21

action_6 _ = happyReduce_22

action_7 _ = happyReduce_25

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
action_9 (4) = happyGoto action_29
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (22) = happyShift action_28
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
action_11 (4) = happyGoto action_27
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_20

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
action_13 (4) = happyGoto action_26
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
action_14 (4) = happyGoto action_25
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
action_15 (4) = happyGoto action_24
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (22) = happyShift action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_22
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
action_18 (4) = happyGoto action_21
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
action_19 (4) = happyGoto action_20
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_4
action_20 (9) = happyShift action_5
action_20 (10) = happyShift action_6
action_20 (13) = happyShift action_8
action_20 (16) = happyShift action_10
action_20 (18) = happyShift action_32
action_20 (19) = happyShift action_33
action_20 (22) = happyShift action_11
action_20 (27) = happyShift action_12
action_20 (29) = happyShift action_13
action_20 (33) = happyShift action_14
action_20 (34) = happyShift action_34
action_20 (35) = happyShift action_35
action_20 (36) = happyShift action_36
action_20 (37) = happyShift action_37
action_20 (38) = happyShift action_15
action_20 (39) = happyShift action_16
action_20 (41) = happyShift action_17
action_20 (42) = happyShift action_38
action_20 (4) = happyGoto action_31
action_20 _ = happyReduce_5

action_21 (8) = happyShift action_4
action_21 (9) = happyShift action_5
action_21 (10) = happyShift action_6
action_21 (13) = happyShift action_8
action_21 (16) = happyShift action_10
action_21 (18) = happyShift action_32
action_21 (19) = happyShift action_33
action_21 (22) = happyShift action_11
action_21 (27) = happyShift action_12
action_21 (29) = happyShift action_13
action_21 (33) = happyShift action_14
action_21 (34) = happyShift action_34
action_21 (35) = happyShift action_35
action_21 (36) = happyShift action_36
action_21 (37) = happyShift action_37
action_21 (38) = happyShift action_15
action_21 (39) = happyShift action_16
action_21 (41) = happyShift action_17
action_21 (42) = happyShift action_38
action_21 (44) = happyShift action_19
action_21 (4) = happyGoto action_31
action_21 _ = happyReduce_7

action_22 (8) = happyShift action_53
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
action_23 (4) = happyGoto action_52
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_4
action_24 (9) = happyShift action_5
action_24 (10) = happyShift action_6
action_24 (13) = happyShift action_8
action_24 (16) = happyShift action_10
action_24 (18) = happyShift action_32
action_24 (19) = happyShift action_33
action_24 (22) = happyShift action_11
action_24 (27) = happyShift action_12
action_24 (29) = happyShift action_13
action_24 (34) = happyShift action_34
action_24 (35) = happyShift action_35
action_24 (36) = happyShift action_36
action_24 (37) = happyShift action_37
action_24 (39) = happyShift action_16
action_24 (41) = happyShift action_17
action_24 (42) = happyShift action_38
action_24 (4) = happyGoto action_31
action_24 _ = happyReduce_9

action_25 (8) = happyShift action_4
action_25 (9) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (13) = happyShift action_8
action_25 (16) = happyShift action_10
action_25 (18) = happyShift action_32
action_25 (19) = happyShift action_33
action_25 (22) = happyShift action_11
action_25 (27) = happyShift action_12
action_25 (29) = happyShift action_13
action_25 (34) = happyShift action_34
action_25 (35) = happyShift action_35
action_25 (36) = happyShift action_36
action_25 (37) = happyShift action_37
action_25 (38) = happyShift action_15
action_25 (39) = happyShift action_16
action_25 (41) = happyShift action_17
action_25 (42) = happyShift action_38
action_25 (4) = happyGoto action_31
action_25 _ = happyReduce_8

action_26 (8) = happyShift action_4
action_26 (9) = happyShift action_5
action_26 (10) = happyShift action_6
action_26 (11) = happyShift action_2
action_26 (12) = happyShift action_7
action_26 (13) = happyShift action_8
action_26 (14) = happyShift action_9
action_26 (16) = happyShift action_10
action_26 (18) = happyShift action_32
action_26 (19) = happyShift action_33
action_26 (22) = happyShift action_11
action_26 (27) = happyShift action_12
action_26 (29) = happyShift action_13
action_26 (31) = happyShift action_51
action_26 (33) = happyShift action_14
action_26 (34) = happyShift action_34
action_26 (35) = happyShift action_35
action_26 (36) = happyShift action_36
action_26 (37) = happyShift action_37
action_26 (38) = happyShift action_15
action_26 (39) = happyShift action_16
action_26 (41) = happyShift action_17
action_26 (42) = happyShift action_38
action_26 (43) = happyShift action_18
action_26 (44) = happyShift action_19
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_4
action_27 (9) = happyShift action_5
action_27 (10) = happyShift action_6
action_27 (11) = happyShift action_2
action_27 (12) = happyShift action_7
action_27 (13) = happyShift action_8
action_27 (14) = happyShift action_9
action_27 (16) = happyShift action_10
action_27 (18) = happyShift action_32
action_27 (19) = happyShift action_33
action_27 (22) = happyShift action_11
action_27 (23) = happyShift action_50
action_27 (27) = happyShift action_12
action_27 (29) = happyShift action_13
action_27 (33) = happyShift action_14
action_27 (34) = happyShift action_34
action_27 (35) = happyShift action_35
action_27 (36) = happyShift action_36
action_27 (37) = happyShift action_37
action_27 (38) = happyShift action_15
action_27 (39) = happyShift action_16
action_27 (41) = happyShift action_17
action_27 (42) = happyShift action_38
action_27 (43) = happyShift action_18
action_27 (44) = happyShift action_19
action_27 (4) = happyGoto action_31
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (27) = happyShift action_49
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (8) = happyShift action_4
action_29 (9) = happyShift action_5
action_29 (10) = happyShift action_6
action_29 (13) = happyShift action_8
action_29 (14) = happyShift action_9
action_29 (16) = happyShift action_10
action_29 (18) = happyShift action_32
action_29 (19) = happyShift action_33
action_29 (22) = happyShift action_11
action_29 (27) = happyShift action_12
action_29 (29) = happyShift action_13
action_29 (33) = happyShift action_14
action_29 (34) = happyShift action_34
action_29 (35) = happyShift action_35
action_29 (36) = happyShift action_36
action_29 (37) = happyShift action_37
action_29 (38) = happyShift action_15
action_29 (39) = happyShift action_16
action_29 (41) = happyShift action_17
action_29 (42) = happyShift action_38
action_29 (43) = happyShift action_18
action_29 (44) = happyShift action_19
action_29 (4) = happyGoto action_31
action_29 _ = happyReduce_24

action_30 (8) = happyShift action_4
action_30 (9) = happyShift action_5
action_30 (10) = happyShift action_6
action_30 (11) = happyShift action_2
action_30 (12) = happyShift action_7
action_30 (13) = happyShift action_8
action_30 (14) = happyShift action_9
action_30 (16) = happyShift action_10
action_30 (22) = happyShift action_11
action_30 (27) = happyShift action_12
action_30 (29) = happyShift action_13
action_30 (33) = happyShift action_14
action_30 (38) = happyShift action_15
action_30 (39) = happyShift action_16
action_30 (41) = happyShift action_17
action_30 (43) = happyShift action_18
action_30 (44) = happyShift action_19
action_30 (4) = happyGoto action_48
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (8) = happyShift action_4
action_31 (9) = happyShift action_5
action_31 (10) = happyShift action_6
action_31 (13) = happyShift action_8
action_31 (18) = happyShift action_32
action_31 (19) = happyShift action_33
action_31 (22) = happyShift action_11
action_31 (27) = happyShift action_12
action_31 (29) = happyShift action_13
action_31 (34) = happyShift action_34
action_31 (35) = happyShift action_35
action_31 (36) = happyShift action_36
action_31 (37) = happyShift action_37
action_31 (39) = happyShift action_16
action_31 (41) = happyShift action_17
action_31 (42) = happyShift action_38
action_31 (4) = happyGoto action_31
action_31 _ = happyReduce_17

action_32 (8) = happyShift action_4
action_32 (9) = happyShift action_5
action_32 (10) = happyShift action_6
action_32 (11) = happyShift action_2
action_32 (12) = happyShift action_7
action_32 (13) = happyShift action_8
action_32 (14) = happyShift action_9
action_32 (16) = happyShift action_10
action_32 (22) = happyShift action_11
action_32 (27) = happyShift action_12
action_32 (29) = happyShift action_13
action_32 (33) = happyShift action_14
action_32 (38) = happyShift action_15
action_32 (39) = happyShift action_16
action_32 (41) = happyShift action_17
action_32 (43) = happyShift action_18
action_32 (44) = happyShift action_19
action_32 (4) = happyGoto action_47
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (8) = happyShift action_4
action_33 (9) = happyShift action_5
action_33 (10) = happyShift action_6
action_33 (11) = happyShift action_2
action_33 (12) = happyShift action_7
action_33 (13) = happyShift action_8
action_33 (14) = happyShift action_9
action_33 (16) = happyShift action_10
action_33 (22) = happyShift action_11
action_33 (27) = happyShift action_12
action_33 (29) = happyShift action_13
action_33 (33) = happyShift action_14
action_33 (38) = happyShift action_15
action_33 (39) = happyShift action_16
action_33 (41) = happyShift action_17
action_33 (43) = happyShift action_18
action_33 (44) = happyShift action_19
action_33 (4) = happyGoto action_46
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (8) = happyShift action_4
action_34 (9) = happyShift action_5
action_34 (10) = happyShift action_6
action_34 (11) = happyShift action_2
action_34 (12) = happyShift action_7
action_34 (13) = happyShift action_8
action_34 (14) = happyShift action_9
action_34 (16) = happyShift action_10
action_34 (22) = happyShift action_11
action_34 (27) = happyShift action_12
action_34 (29) = happyShift action_13
action_34 (33) = happyShift action_14
action_34 (38) = happyShift action_15
action_34 (39) = happyShift action_16
action_34 (41) = happyShift action_17
action_34 (43) = happyShift action_18
action_34 (44) = happyShift action_19
action_34 (4) = happyGoto action_45
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (8) = happyShift action_4
action_35 (9) = happyShift action_5
action_35 (10) = happyShift action_6
action_35 (11) = happyShift action_2
action_35 (12) = happyShift action_7
action_35 (13) = happyShift action_8
action_35 (14) = happyShift action_9
action_35 (16) = happyShift action_10
action_35 (22) = happyShift action_11
action_35 (27) = happyShift action_12
action_35 (29) = happyShift action_13
action_35 (33) = happyShift action_14
action_35 (38) = happyShift action_15
action_35 (39) = happyShift action_16
action_35 (41) = happyShift action_17
action_35 (43) = happyShift action_18
action_35 (44) = happyShift action_19
action_35 (4) = happyGoto action_44
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (8) = happyShift action_4
action_36 (9) = happyShift action_5
action_36 (10) = happyShift action_6
action_36 (11) = happyShift action_2
action_36 (12) = happyShift action_7
action_36 (13) = happyShift action_8
action_36 (14) = happyShift action_9
action_36 (16) = happyShift action_10
action_36 (22) = happyShift action_11
action_36 (27) = happyShift action_12
action_36 (29) = happyShift action_13
action_36 (33) = happyShift action_14
action_36 (38) = happyShift action_15
action_36 (39) = happyShift action_16
action_36 (41) = happyShift action_17
action_36 (43) = happyShift action_18
action_36 (44) = happyShift action_19
action_36 (4) = happyGoto action_43
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (8) = happyShift action_4
action_37 (9) = happyShift action_5
action_37 (10) = happyShift action_6
action_37 (11) = happyShift action_2
action_37 (12) = happyShift action_7
action_37 (13) = happyShift action_8
action_37 (14) = happyShift action_9
action_37 (16) = happyShift action_10
action_37 (22) = happyShift action_11
action_37 (27) = happyShift action_12
action_37 (29) = happyShift action_13
action_37 (33) = happyShift action_14
action_37 (38) = happyShift action_15
action_37 (39) = happyShift action_16
action_37 (41) = happyShift action_17
action_37 (43) = happyShift action_18
action_37 (44) = happyShift action_19
action_37 (4) = happyGoto action_42
action_37 _ = happyFail (happyExpListPerState 37)

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
action_38 (4) = happyGoto action_41
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (8) = happyShift action_4
action_39 (9) = happyShift action_5
action_39 (10) = happyShift action_6
action_39 (11) = happyShift action_2
action_39 (12) = happyShift action_40
action_39 (13) = happyShift action_8
action_39 (14) = happyShift action_9
action_39 (16) = happyShift action_10
action_39 (18) = happyShift action_32
action_39 (19) = happyShift action_33
action_39 (22) = happyShift action_11
action_39 (27) = happyShift action_12
action_39 (29) = happyShift action_13
action_39 (33) = happyShift action_14
action_39 (34) = happyShift action_34
action_39 (35) = happyShift action_35
action_39 (36) = happyShift action_36
action_39 (37) = happyShift action_37
action_39 (38) = happyShift action_15
action_39 (39) = happyShift action_16
action_39 (41) = happyShift action_17
action_39 (42) = happyShift action_38
action_39 (43) = happyShift action_18
action_39 (44) = happyShift action_19
action_39 (4) = happyGoto action_31
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (8) = happyReduce_1
action_40 (9) = happyReduce_1
action_40 (10) = happyReduce_1
action_40 (11) = happyReduce_1
action_40 (12) = happyReduce_1
action_40 (13) = happyReduce_1
action_40 (14) = happyReduce_1
action_40 (16) = happyReduce_1
action_40 (18) = happyReduce_1
action_40 (19) = happyReduce_1
action_40 (22) = happyReduce_1
action_40 (27) = happyReduce_1
action_40 (29) = happyReduce_1
action_40 (33) = happyReduce_1
action_40 (34) = happyReduce_1
action_40 (35) = happyReduce_1
action_40 (36) = happyReduce_1
action_40 (37) = happyReduce_1
action_40 (38) = happyReduce_1
action_40 (39) = happyReduce_1
action_40 (41) = happyReduce_1
action_40 (42) = happyReduce_1
action_40 (43) = happyReduce_1
action_40 (44) = happyReduce_1
action_40 _ = happyReduce_1

action_41 (13) = happyShift action_8
action_41 (18) = happyShift action_32
action_41 (19) = happyShift action_33
action_41 (34) = happyShift action_34
action_41 (35) = happyShift action_35
action_41 (36) = happyShift action_36
action_41 (37) = happyShift action_37
action_41 (39) = happyShift action_16
action_41 (4) = happyGoto action_31
action_41 _ = happyReduce_6

action_42 (13) = happyShift action_8
action_42 (18) = happyShift action_32
action_42 (19) = happyShift action_33
action_42 (39) = happyShift action_16
action_42 (4) = happyGoto action_31
action_42 _ = happyReduce_13

action_43 (13) = happyShift action_8
action_43 (18) = happyShift action_32
action_43 (19) = happyShift action_33
action_43 (35) = happyShift action_35
action_43 (37) = happyShift action_37
action_43 (39) = happyShift action_16
action_43 (4) = happyGoto action_31
action_43 _ = happyReduce_11

action_44 (13) = happyShift action_8
action_44 (18) = happyShift action_32
action_44 (19) = happyShift action_33
action_44 (39) = happyShift action_16
action_44 (4) = happyGoto action_31
action_44 _ = happyReduce_12

action_45 (13) = happyShift action_8
action_45 (18) = happyShift action_32
action_45 (19) = happyShift action_33
action_45 (35) = happyShift action_35
action_45 (37) = happyShift action_37
action_45 (39) = happyShift action_16
action_45 (4) = happyGoto action_31
action_45 _ = happyReduce_10

action_46 (13) = happyShift action_8
action_46 (39) = happyShift action_16
action_46 (4) = happyGoto action_31
action_46 _ = happyReduce_15

action_47 (13) = happyShift action_8
action_47 (39) = happyShift action_16
action_47 (4) = happyGoto action_31
action_47 _ = happyReduce_14

action_48 (13) = happyShift action_8
action_48 (39) = happyShift action_16
action_48 (4) = happyGoto action_31
action_48 _ = happyReduce_18

action_49 (21) = happyShift action_57
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_26

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
action_51 (4) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_4
action_52 (9) = happyShift action_5
action_52 (10) = happyShift action_6
action_52 (11) = happyShift action_2
action_52 (12) = happyShift action_7
action_52 (13) = happyShift action_8
action_52 (14) = happyShift action_9
action_52 (16) = happyShift action_10
action_52 (18) = happyShift action_32
action_52 (19) = happyShift action_33
action_52 (21) = happyShift action_55
action_52 (22) = happyShift action_11
action_52 (27) = happyShift action_12
action_52 (29) = happyShift action_13
action_52 (33) = happyShift action_14
action_52 (34) = happyShift action_34
action_52 (35) = happyShift action_35
action_52 (36) = happyShift action_36
action_52 (37) = happyShift action_37
action_52 (38) = happyShift action_15
action_52 (39) = happyShift action_16
action_52 (41) = happyShift action_17
action_52 (42) = happyShift action_38
action_52 (43) = happyShift action_18
action_52 (44) = happyShift action_19
action_52 (4) = happyGoto action_31
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (8) = happyShift action_4
action_53 (9) = happyShift action_5
action_53 (10) = happyShift action_6
action_53 (11) = happyShift action_2
action_53 (12) = happyShift action_7
action_53 (13) = happyShift action_8
action_53 (14) = happyShift action_9
action_53 (16) = happyShift action_10
action_53 (22) = happyShift action_11
action_53 (27) = happyShift action_12
action_53 (29) = happyShift action_13
action_53 (33) = happyShift action_14
action_53 (38) = happyShift action_15
action_53 (39) = happyShift action_16
action_53 (41) = happyShift action_17
action_53 (43) = happyShift action_18
action_53 (44) = happyShift action_19
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (8) = happyFail []
action_54 (9) = happyFail []
action_54 (10) = happyFail []
action_54 (13) = happyShift action_8
action_54 (18) = happyShift action_32
action_54 (19) = happyShift action_33
action_54 (22) = happyFail []
action_54 (27) = happyFail []
action_54 (34) = happyShift action_34
action_54 (35) = happyShift action_35
action_54 (36) = happyShift action_36
action_54 (37) = happyShift action_37
action_54 (39) = happyShift action_16
action_54 (42) = happyShift action_38
action_54 (4) = happyGoto action_31
action_54 _ = happyReduce_3

action_55 (8) = happyShift action_4
action_55 (9) = happyShift action_5
action_55 (10) = happyShift action_6
action_55 (11) = happyShift action_2
action_55 (12) = happyShift action_7
action_55 (13) = happyShift action_8
action_55 (14) = happyShift action_9
action_55 (16) = happyShift action_10
action_55 (22) = happyShift action_11
action_55 (27) = happyShift action_12
action_55 (29) = happyShift action_13
action_55 (33) = happyShift action_14
action_55 (38) = happyShift action_15
action_55 (39) = happyShift action_16
action_55 (41) = happyShift action_17
action_55 (43) = happyShift action_18
action_55 (44) = happyShift action_19
action_55 (4) = happyGoto action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_4
action_56 (9) = happyShift action_5
action_56 (10) = happyShift action_6
action_56 (11) = happyShift action_2
action_56 (12) = happyShift action_7
action_56 (13) = happyShift action_8
action_56 (14) = happyShift action_9
action_56 (16) = happyShift action_10
action_56 (18) = happyShift action_32
action_56 (19) = happyShift action_33
action_56 (22) = happyShift action_11
action_56 (27) = happyShift action_12
action_56 (29) = happyShift action_13
action_56 (30) = happyShift action_61
action_56 (33) = happyShift action_14
action_56 (34) = happyShift action_34
action_56 (35) = happyShift action_35
action_56 (36) = happyShift action_36
action_56 (37) = happyShift action_37
action_56 (38) = happyShift action_15
action_56 (39) = happyShift action_16
action_56 (41) = happyShift action_17
action_56 (42) = happyShift action_38
action_56 (43) = happyShift action_18
action_56 (44) = happyShift action_19
action_56 (4) = happyGoto action_31
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (6) = happyShift action_59
action_57 (7) = happyShift action_60
action_57 (5) = happyGoto action_58
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (23) = happyShift action_65
action_58 (40) = happyShift action_66
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_27

action_60 _ = happyReduce_28

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
action_61 (4) = happyGoto action_64
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (8) = happyShift action_4
action_62 (9) = happyShift action_5
action_62 (10) = happyShift action_6
action_62 (11) = happyShift action_2
action_62 (12) = happyShift action_7
action_62 (13) = happyShift action_8
action_62 (14) = happyShift action_9
action_62 (16) = happyShift action_10
action_62 (18) = happyShift action_32
action_62 (19) = happyShift action_33
action_62 (22) = happyShift action_11
action_62 (23) = happyShift action_63
action_62 (27) = happyShift action_12
action_62 (29) = happyShift action_13
action_62 (33) = happyShift action_14
action_62 (34) = happyShift action_34
action_62 (35) = happyShift action_35
action_62 (36) = happyShift action_36
action_62 (37) = happyShift action_37
action_62 (38) = happyShift action_15
action_62 (39) = happyShift action_16
action_62 (41) = happyShift action_17
action_62 (42) = happyShift action_38
action_62 (43) = happyShift action_18
action_62 (44) = happyShift action_19
action_62 (4) = happyGoto action_31
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
action_63 (4) = happyGoto action_70
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (8) = happyShift action_4
action_64 (9) = happyShift action_5
action_64 (10) = happyShift action_6
action_64 (11) = happyShift action_2
action_64 (12) = happyShift action_7
action_64 (13) = happyShift action_8
action_64 (14) = happyShift action_9
action_64 (16) = happyShift action_10
action_64 (18) = happyShift action_32
action_64 (19) = happyShift action_33
action_64 (22) = happyShift action_11
action_64 (27) = happyShift action_12
action_64 (29) = happyShift action_13
action_64 (32) = happyShift action_69
action_64 (33) = happyShift action_14
action_64 (34) = happyShift action_34
action_64 (35) = happyShift action_35
action_64 (36) = happyShift action_36
action_64 (37) = happyShift action_37
action_64 (38) = happyShift action_15
action_64 (39) = happyShift action_16
action_64 (41) = happyShift action_17
action_64 (42) = happyShift action_38
action_64 (43) = happyShift action_18
action_64 (44) = happyShift action_19
action_64 (4) = happyGoto action_31
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (20) = happyShift action_68
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_59
action_66 (7) = happyShift action_60
action_66 (5) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_29

action_68 (8) = happyShift action_4
action_68 (9) = happyShift action_5
action_68 (10) = happyShift action_6
action_68 (11) = happyShift action_2
action_68 (12) = happyShift action_7
action_68 (13) = happyShift action_8
action_68 (14) = happyShift action_9
action_68 (16) = happyShift action_10
action_68 (22) = happyShift action_11
action_68 (27) = happyShift action_12
action_68 (29) = happyShift action_13
action_68 (33) = happyShift action_14
action_68 (38) = happyShift action_15
action_68 (39) = happyShift action_16
action_68 (41) = happyShift action_17
action_68 (43) = happyShift action_18
action_68 (44) = happyShift action_19
action_68 (4) = happyGoto action_71
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_2

action_70 (8) = happyFail []
action_70 (9) = happyFail []
action_70 (10) = happyFail []
action_70 (13) = happyShift action_8
action_70 (18) = happyShift action_32
action_70 (19) = happyShift action_33
action_70 (22) = happyFail []
action_70 (27) = happyFail []
action_70 (34) = happyShift action_34
action_70 (35) = happyShift action_35
action_70 (36) = happyShift action_36
action_70 (37) = happyShift action_37
action_70 (39) = happyShift action_16
action_70 (42) = happyShift action_38
action_70 (4) = happyGoto action_31
action_70 _ = happyReduce_16

action_71 (8) = happyShift action_4
action_71 (9) = happyShift action_5
action_71 (10) = happyShift action_6
action_71 (11) = happyShift action_2
action_71 (12) = happyShift action_7
action_71 (13) = happyShift action_8
action_71 (14) = happyShift action_9
action_71 (16) = happyShift action_10
action_71 (18) = happyShift action_32
action_71 (19) = happyShift action_33
action_71 (22) = happyShift action_11
action_71 (27) = happyShift action_12
action_71 (29) = happyShift action_13
action_71 (33) = happyShift action_14
action_71 (34) = happyShift action_34
action_71 (35) = happyShift action_35
action_71 (36) = happyShift action_36
action_71 (37) = happyShift action_37
action_71 (38) = happyShift action_15
action_71 (39) = happyShift action_16
action_71 (41) = happyShift action_17
action_71 (42) = happyShift action_38
action_71 (43) = happyShift action_18
action_71 (44) = happyShift action_19
action_71 (4) = happyGoto action_31
action_71 _ = happyReduce_23

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

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSplitAt happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReverse happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 7 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  4 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_23 = happyReduce 8 4 happyReduction_23
happyReduction_23 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_3 happy_var_5 happy_var_8
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  4 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn4
		 (TmEnd
	)

happyReduce_26 = happySpecReduce_3  4 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 45 45 notHappyAtAll (HappyState action) sts stk []

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
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 45 tk tks = happyError' (tks, explist)
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


data Expr = TmBody Expr | TmIf Expr Expr Expr | TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr
            | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInt Int | TmComma  | TmTrue | TmFalse
            | TmPush Int Int Expr | TmApp Expr Expr | TmLambda Expr Expr Expr
            | TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr | TmDuplicate Expr
            | TmLet String DataType Expr | Cl Expr Expr Expr Environment

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

