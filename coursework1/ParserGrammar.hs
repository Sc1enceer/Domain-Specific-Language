{-# OPTIONS_GHC -w #-}
module ParserGrammar where
import LexerTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn 
	= HappyTerminal (LexerToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 (Expr)
	| HappyAbsSyn5 (DataType)

{- to allow type-synonyms as our monads (likely
 - with explicitly-specified bind and return)
 - in Haskell98, it seems that with
 - /type M a = .../, then /(HappyReduction M)/
 - is not allowed.  But Happy is a
 - code-generator that can just substitute it.
type HappyReduction m = 
	   Int 
	-> (LexerToken)
	-> HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> m HappyAbsSyn)
	-> [HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> m HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(LexerToken)] -> m HappyAbsSyn
-}

action_0,
 action_1,
 action_2,
 action_3,
 action_4,
 action_5,
 action_6,
 action_7,
 action_8,
 action_9,
 action_10,
 action_11,
 action_12,
 action_13,
 action_14,
 action_15,
 action_16,
 action_17,
 action_18,
 action_19,
 action_20,
 action_21,
 action_22,
 action_23,
 action_24,
 action_25,
 action_26,
 action_27,
 action_28,
 action_29,
 action_30,
 action_31,
 action_32,
 action_33,
 action_34,
 action_35,
 action_36,
 action_37,
 action_38,
 action_39,
 action_40,
 action_41,
 action_42,
 action_43,
 action_44,
 action_45,
 action_46,
 action_47,
 action_48,
 action_49,
 action_50,
 action_51,
 action_52,
 action_53,
 action_54,
 action_55,
 action_56,
 action_57,
 action_58,
 action_59,
 action_60,
 action_61,
 action_62,
 action_63,
 action_64,
 action_65,
 action_66,
 action_67,
 action_68,
 action_69,
 action_70,
 action_71,
 action_72,
 action_73,
 action_74,
 action_75,
 action_76,
 action_77,
 action_78,
 action_79,
 action_80,
 action_81,
 action_82,
 action_83,
 action_84,
 action_85,
 action_86,
 action_87,
 action_88,
 action_89,
 action_90,
 action_91,
 action_92,
 action_93,
 action_94,
 action_95,
 action_96,
 action_97,
 action_98,
 action_99,
 action_100,
 action_101,
 action_102,
 action_103,
 action_104,
 action_105,
 action_106,
 action_107,
 action_108,
 action_109,
 action_110 :: () => Int -> ({-HappyReduction (HappyIdentity) = -}
	   Int 
	-> (LexerToken)
	-> HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)
	-> [HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)

happyReduce_1,
 happyReduce_2,
 happyReduce_3,
 happyReduce_4,
 happyReduce_5,
 happyReduce_6,
 happyReduce_7,
 happyReduce_8,
 happyReduce_9,
 happyReduce_10,
 happyReduce_11,
 happyReduce_12,
 happyReduce_13,
 happyReduce_14,
 happyReduce_15,
 happyReduce_16,
 happyReduce_17,
 happyReduce_18,
 happyReduce_19,
 happyReduce_20,
 happyReduce_21,
 happyReduce_22,
 happyReduce_23,
 happyReduce_24,
 happyReduce_25,
 happyReduce_26,
 happyReduce_27,
 happyReduce_28,
 happyReduce_29,
 happyReduce_30,
 happyReduce_31,
 happyReduce_32,
 happyReduce_33,
 happyReduce_34,
 happyReduce_35,
 happyReduce_36,
 happyReduce_37,
 happyReduce_38,
 happyReduce_39,
 happyReduce_40,
 happyReduce_41,
 happyReduce_42,
 happyReduce_43,
 happyReduce_44,
 happyReduce_45 :: () => ({-HappyReduction (HappyIdentity) = -}
	   Int 
	-> (LexerToken)
	-> HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)
	-> [HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,1087) ([48128,41221,60232,2047,512,0,0,0,1468,18593,65515,49159,4955,49038,32767,0,4096,0,0,0,0,0,0,0,0,0,0,0,0,0,48128,41221,60232,2047,0,16,0,0,1468,18593,65515,7,0,0,0,48128,41221,60232,2047,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,0,256,0,0,64,0,0,0,1468,18593,65515,49159,4187,46218,32766,48128,41221,60232,2047,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,48128,41221,60232,2047,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,48128,41221,60232,2047,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,48128,57653,64504,2047,16832,36371,1951,64,13756,63713,65531,49159,4929,40846,24583,7168,57652,31224,1682,23488,36371,65471,127,13756,63713,65531,49159,4955,49038,32767,7168,57652,31224,1746,23488,36371,65471,127,13340,63713,55161,49158,4929,40846,28023,7168,57652,22776,0,23488,36371,65471,127,4,0,0,0,0,2,0,7168,57652,23032,1024,16832,36371,1951,64,13340,61665,24,49152,4955,49070,32767,48128,58165,64504,2047,0,512,0,0,13596,63713,65529,49159,4187,46218,32766,0,0,0,0,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,48128,41221,60232,2047,23488,35344,65204,127,1468,18593,65515,49159,4187,46218,32766,48128,41221,60232,2047,24512,36371,65471,127,0,0,0,0,768,3844,0,0,16432,0,0,0,1027,10,0,12288,64,0,0,768,2564,0,0,16384,0,0,0,1024,0,0,0,64,0,0,0,0,0,0,128,0,0,0,0,0,0,1468,18593,65515,7,2048,0,0,48128,41221,60232,2047,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16432,4336,0,62,0,0,0,13756,63969,65531,15879,0,0,0,0,512,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1468,18593,65515,7,8192,16384,0,48128,41221,60232,2047,62,0,0,0,13756,64737,65531,7,1024,0,0,48128,41221,60232,2047,0,0,0,0,0,0,0,0,768,3844,1,48128,57661,64504,2047,23488,35344,65204,127,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","Ints","Line","Lam","int","true","false","begin","end","getStream","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","'++'","splitAt","duplicate","head","last","take","sum","map","takeRepeat","listsArith","sumLists","fibSequence","zipLines","reverseLists","while","%eof"]
        bit_start = st * 60
        bit_end = (st + 1) * 60
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..59]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_2
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (25) = happyShift action_10
action_0 (30) = happyShift action_11
action_0 (32) = happyShift action_12
action_0 (36) = happyShift action_13
action_0 (39) = happyShift action_14
action_0 (41) = happyShift action_15
action_0 (42) = happyShift action_16
action_0 (44) = happyShift action_17
action_0 (46) = happyShift action_18
action_0 (47) = happyShift action_19
action_0 (48) = happyShift action_20
action_0 (49) = happyShift action_21
action_0 (50) = happyShift action_22
action_0 (51) = happyShift action_23
action_0 (52) = happyShift action_24
action_0 (53) = happyShift action_25
action_0 (54) = happyShift action_26
action_0 (55) = happyShift action_27
action_0 (56) = happyShift action_28
action_0 (57) = happyShift action_29
action_0 (58) = happyShift action_30
action_0 (59) = happyShift action_31
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (11) = happyShift action_4
action_2 (12) = happyShift action_5
action_2 (13) = happyShift action_6
action_2 (14) = happyShift action_2
action_2 (16) = happyShift action_7
action_2 (17) = happyShift action_8
action_2 (19) = happyShift action_9
action_2 (25) = happyShift action_10
action_2 (30) = happyShift action_11
action_2 (32) = happyShift action_12
action_2 (36) = happyShift action_13
action_2 (39) = happyShift action_14
action_2 (41) = happyShift action_15
action_2 (42) = happyShift action_16
action_2 (44) = happyShift action_17
action_2 (46) = happyShift action_18
action_2 (47) = happyShift action_19
action_2 (48) = happyShift action_20
action_2 (49) = happyShift action_21
action_2 (50) = happyShift action_22
action_2 (51) = happyShift action_23
action_2 (52) = happyShift action_24
action_2 (53) = happyShift action_25
action_2 (54) = happyShift action_26
action_2 (55) = happyShift action_27
action_2 (56) = happyShift action_28
action_2 (57) = happyShift action_29
action_2 (58) = happyShift action_30
action_2 (59) = happyShift action_31
action_2 (4) = happyGoto action_65
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_4
action_3 (12) = happyShift action_5
action_3 (13) = happyShift action_6
action_3 (14) = happyShift action_2
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (19) = happyShift action_9
action_3 (21) = happyShift action_57
action_3 (22) = happyShift action_58
action_3 (25) = happyShift action_10
action_3 (30) = happyShift action_11
action_3 (31) = happyShift action_59
action_3 (32) = happyShift action_12
action_3 (36) = happyShift action_13
action_3 (37) = happyShift action_60
action_3 (38) = happyShift action_61
action_3 (39) = happyShift action_62
action_3 (40) = happyShift action_63
action_3 (41) = happyShift action_15
action_3 (42) = happyShift action_16
action_3 (44) = happyShift action_17
action_3 (45) = happyShift action_64
action_3 (46) = happyShift action_18
action_3 (47) = happyShift action_19
action_3 (48) = happyShift action_20
action_3 (49) = happyShift action_21
action_3 (50) = happyShift action_22
action_3 (51) = happyShift action_23
action_3 (52) = happyShift action_24
action_3 (53) = happyShift action_25
action_3 (54) = happyShift action_26
action_3 (55) = happyShift action_27
action_3 (56) = happyShift action_28
action_3 (57) = happyShift action_29
action_3 (58) = happyShift action_30
action_3 (59) = happyShift action_31
action_3 (60) = happyAccept
action_3 (4) = happyGoto action_56
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (29) = happyShift action_55
action_4 _ = happyReduce_35

action_5 _ = happyReduce_37

action_6 _ = happyReduce_38

action_7 _ = happyReduce_24

action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_2
action_8 (16) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (19) = happyShift action_9
action_8 (25) = happyShift action_10
action_8 (30) = happyShift action_11
action_8 (32) = happyShift action_12
action_8 (36) = happyShift action_13
action_8 (39) = happyShift action_14
action_8 (41) = happyShift action_15
action_8 (42) = happyShift action_16
action_8 (44) = happyShift action_17
action_8 (46) = happyShift action_18
action_8 (47) = happyShift action_19
action_8 (48) = happyShift action_20
action_8 (49) = happyShift action_21
action_8 (50) = happyShift action_22
action_8 (51) = happyShift action_23
action_8 (52) = happyShift action_24
action_8 (53) = happyShift action_25
action_8 (54) = happyShift action_26
action_8 (55) = happyShift action_27
action_8 (56) = happyShift action_28
action_8 (57) = happyShift action_29
action_8 (58) = happyShift action_30
action_8 (59) = happyShift action_31
action_8 (4) = happyGoto action_54
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (25) = happyShift action_53
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_2
action_10 (16) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (19) = happyShift action_9
action_10 (25) = happyShift action_10
action_10 (30) = happyShift action_11
action_10 (32) = happyShift action_12
action_10 (36) = happyShift action_13
action_10 (39) = happyShift action_14
action_10 (41) = happyShift action_15
action_10 (42) = happyShift action_16
action_10 (44) = happyShift action_17
action_10 (46) = happyShift action_18
action_10 (47) = happyShift action_19
action_10 (48) = happyShift action_20
action_10 (49) = happyShift action_21
action_10 (50) = happyShift action_22
action_10 (51) = happyShift action_23
action_10 (52) = happyShift action_24
action_10 (53) = happyShift action_25
action_10 (54) = happyShift action_26
action_10 (55) = happyShift action_27
action_10 (56) = happyShift action_28
action_10 (57) = happyShift action_29
action_10 (58) = happyShift action_30
action_10 (59) = happyShift action_31
action_10 (4) = happyGoto action_52
action_10 _ = happyFail (happyExpListPerState 10)

action_11 _ = happyReduce_36

action_12 (11) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (13) = happyShift action_6
action_12 (14) = happyShift action_2
action_12 (16) = happyShift action_7
action_12 (17) = happyShift action_8
action_12 (19) = happyShift action_9
action_12 (25) = happyShift action_10
action_12 (30) = happyShift action_11
action_12 (32) = happyShift action_12
action_12 (36) = happyShift action_13
action_12 (39) = happyShift action_14
action_12 (41) = happyShift action_15
action_12 (42) = happyShift action_16
action_12 (44) = happyShift action_17
action_12 (46) = happyShift action_18
action_12 (47) = happyShift action_19
action_12 (48) = happyShift action_20
action_12 (49) = happyShift action_21
action_12 (50) = happyShift action_22
action_12 (51) = happyShift action_23
action_12 (52) = happyShift action_24
action_12 (53) = happyShift action_25
action_12 (54) = happyShift action_26
action_12 (55) = happyShift action_27
action_12 (56) = happyShift action_28
action_12 (57) = happyShift action_29
action_12 (58) = happyShift action_30
action_12 (59) = happyShift action_31
action_12 (4) = happyGoto action_51
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (11) = happyShift action_4
action_13 (12) = happyShift action_5
action_13 (13) = happyShift action_6
action_13 (14) = happyShift action_2
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (19) = happyShift action_9
action_13 (25) = happyShift action_10
action_13 (30) = happyShift action_11
action_13 (32) = happyShift action_12
action_13 (36) = happyShift action_13
action_13 (39) = happyShift action_14
action_13 (41) = happyShift action_15
action_13 (42) = happyShift action_16
action_13 (44) = happyShift action_17
action_13 (46) = happyShift action_18
action_13 (47) = happyShift action_19
action_13 (48) = happyShift action_20
action_13 (49) = happyShift action_21
action_13 (50) = happyShift action_22
action_13 (51) = happyShift action_23
action_13 (52) = happyShift action_24
action_13 (53) = happyShift action_25
action_13 (54) = happyShift action_26
action_13 (55) = happyShift action_27
action_13 (56) = happyShift action_28
action_13 (57) = happyShift action_29
action_13 (58) = happyShift action_30
action_13 (59) = happyShift action_31
action_13 (4) = happyGoto action_50
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (14) = happyShift action_2
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (19) = happyShift action_9
action_14 (25) = happyShift action_10
action_14 (30) = happyShift action_11
action_14 (32) = happyShift action_12
action_14 (36) = happyShift action_13
action_14 (39) = happyShift action_14
action_14 (41) = happyShift action_15
action_14 (42) = happyShift action_16
action_14 (44) = happyShift action_17
action_14 (46) = happyShift action_18
action_14 (47) = happyShift action_19
action_14 (48) = happyShift action_20
action_14 (49) = happyShift action_21
action_14 (50) = happyShift action_22
action_14 (51) = happyShift action_23
action_14 (52) = happyShift action_24
action_14 (53) = happyShift action_25
action_14 (54) = happyShift action_26
action_14 (55) = happyShift action_27
action_14 (56) = happyShift action_28
action_14 (57) = happyShift action_29
action_14 (58) = happyShift action_30
action_14 (59) = happyShift action_31
action_14 (4) = happyGoto action_49
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (13) = happyShift action_6
action_15 (14) = happyShift action_2
action_15 (16) = happyShift action_7
action_15 (17) = happyShift action_8
action_15 (19) = happyShift action_9
action_15 (25) = happyShift action_10
action_15 (30) = happyShift action_11
action_15 (32) = happyShift action_12
action_15 (36) = happyShift action_13
action_15 (39) = happyShift action_14
action_15 (41) = happyShift action_15
action_15 (42) = happyShift action_16
action_15 (44) = happyShift action_17
action_15 (46) = happyShift action_18
action_15 (47) = happyShift action_19
action_15 (48) = happyShift action_20
action_15 (49) = happyShift action_21
action_15 (50) = happyShift action_22
action_15 (51) = happyShift action_23
action_15 (52) = happyShift action_24
action_15 (53) = happyShift action_25
action_15 (54) = happyShift action_26
action_15 (55) = happyShift action_27
action_15 (56) = happyShift action_28
action_15 (57) = happyShift action_29
action_15 (58) = happyShift action_30
action_15 (59) = happyShift action_31
action_15 (4) = happyGoto action_48
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (25) = happyShift action_47
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_46
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (14) = happyShift action_2
action_18 (16) = happyShift action_7
action_18 (17) = happyShift action_8
action_18 (19) = happyShift action_9
action_18 (25) = happyShift action_10
action_18 (30) = happyShift action_11
action_18 (32) = happyShift action_12
action_18 (36) = happyShift action_13
action_18 (39) = happyShift action_14
action_18 (41) = happyShift action_15
action_18 (42) = happyShift action_16
action_18 (44) = happyShift action_17
action_18 (46) = happyShift action_18
action_18 (47) = happyShift action_19
action_18 (48) = happyShift action_20
action_18 (49) = happyShift action_21
action_18 (50) = happyShift action_22
action_18 (51) = happyShift action_23
action_18 (52) = happyShift action_24
action_18 (53) = happyShift action_25
action_18 (54) = happyShift action_26
action_18 (55) = happyShift action_27
action_18 (56) = happyShift action_28
action_18 (57) = happyShift action_29
action_18 (58) = happyShift action_30
action_18 (59) = happyShift action_31
action_18 (4) = happyGoto action_45
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (13) = happyShift action_6
action_19 (14) = happyShift action_2
action_19 (16) = happyShift action_7
action_19 (17) = happyShift action_8
action_19 (19) = happyShift action_9
action_19 (25) = happyShift action_10
action_19 (30) = happyShift action_11
action_19 (32) = happyShift action_12
action_19 (36) = happyShift action_13
action_19 (39) = happyShift action_14
action_19 (41) = happyShift action_15
action_19 (42) = happyShift action_16
action_19 (44) = happyShift action_17
action_19 (46) = happyShift action_18
action_19 (47) = happyShift action_19
action_19 (48) = happyShift action_20
action_19 (49) = happyShift action_21
action_19 (50) = happyShift action_22
action_19 (51) = happyShift action_23
action_19 (52) = happyShift action_24
action_19 (53) = happyShift action_25
action_19 (54) = happyShift action_26
action_19 (55) = happyShift action_27
action_19 (56) = happyShift action_28
action_19 (57) = happyShift action_29
action_19 (58) = happyShift action_30
action_19 (59) = happyShift action_31
action_19 (4) = happyGoto action_44
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (14) = happyShift action_2
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (19) = happyShift action_9
action_20 (25) = happyShift action_10
action_20 (30) = happyShift action_11
action_20 (32) = happyShift action_12
action_20 (36) = happyShift action_13
action_20 (39) = happyShift action_14
action_20 (41) = happyShift action_15
action_20 (42) = happyShift action_16
action_20 (44) = happyShift action_17
action_20 (46) = happyShift action_18
action_20 (47) = happyShift action_19
action_20 (48) = happyShift action_20
action_20 (49) = happyShift action_21
action_20 (50) = happyShift action_22
action_20 (51) = happyShift action_23
action_20 (52) = happyShift action_24
action_20 (53) = happyShift action_25
action_20 (54) = happyShift action_26
action_20 (55) = happyShift action_27
action_20 (56) = happyShift action_28
action_20 (57) = happyShift action_29
action_20 (58) = happyShift action_30
action_20 (59) = happyShift action_31
action_20 (4) = happyGoto action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (14) = happyShift action_2
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (19) = happyShift action_9
action_21 (25) = happyShift action_10
action_21 (30) = happyShift action_11
action_21 (32) = happyShift action_12
action_21 (36) = happyShift action_13
action_21 (39) = happyShift action_14
action_21 (41) = happyShift action_15
action_21 (42) = happyShift action_16
action_21 (44) = happyShift action_17
action_21 (46) = happyShift action_18
action_21 (47) = happyShift action_19
action_21 (48) = happyShift action_20
action_21 (49) = happyShift action_21
action_21 (50) = happyShift action_22
action_21 (51) = happyShift action_23
action_21 (52) = happyShift action_24
action_21 (53) = happyShift action_25
action_21 (54) = happyShift action_26
action_21 (55) = happyShift action_27
action_21 (56) = happyShift action_28
action_21 (57) = happyShift action_29
action_21 (58) = happyShift action_30
action_21 (59) = happyShift action_31
action_21 (4) = happyGoto action_42
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (14) = happyShift action_2
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (19) = happyShift action_9
action_22 (25) = happyShift action_10
action_22 (30) = happyShift action_11
action_22 (32) = happyShift action_12
action_22 (36) = happyShift action_13
action_22 (39) = happyShift action_14
action_22 (41) = happyShift action_15
action_22 (42) = happyShift action_16
action_22 (44) = happyShift action_17
action_22 (46) = happyShift action_18
action_22 (47) = happyShift action_19
action_22 (48) = happyShift action_20
action_22 (49) = happyShift action_21
action_22 (50) = happyShift action_22
action_22 (51) = happyShift action_23
action_22 (52) = happyShift action_24
action_22 (53) = happyShift action_25
action_22 (54) = happyShift action_26
action_22 (55) = happyShift action_27
action_22 (56) = happyShift action_28
action_22 (57) = happyShift action_29
action_22 (58) = happyShift action_30
action_22 (59) = happyShift action_31
action_22 (4) = happyGoto action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_2
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (19) = happyShift action_9
action_23 (25) = happyShift action_10
action_23 (30) = happyShift action_11
action_23 (32) = happyShift action_12
action_23 (36) = happyShift action_13
action_23 (39) = happyShift action_14
action_23 (41) = happyShift action_15
action_23 (42) = happyShift action_16
action_23 (44) = happyShift action_17
action_23 (46) = happyShift action_18
action_23 (47) = happyShift action_19
action_23 (48) = happyShift action_20
action_23 (49) = happyShift action_21
action_23 (50) = happyShift action_22
action_23 (51) = happyShift action_23
action_23 (52) = happyShift action_24
action_23 (53) = happyShift action_25
action_23 (54) = happyShift action_26
action_23 (55) = happyShift action_27
action_23 (56) = happyShift action_28
action_23 (57) = happyShift action_29
action_23 (58) = happyShift action_30
action_23 (59) = happyShift action_31
action_23 (4) = happyGoto action_40
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (14) = happyShift action_2
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (19) = happyShift action_9
action_24 (25) = happyShift action_10
action_24 (30) = happyShift action_11
action_24 (32) = happyShift action_12
action_24 (36) = happyShift action_13
action_24 (39) = happyShift action_14
action_24 (41) = happyShift action_15
action_24 (42) = happyShift action_16
action_24 (44) = happyShift action_17
action_24 (46) = happyShift action_18
action_24 (47) = happyShift action_19
action_24 (48) = happyShift action_20
action_24 (49) = happyShift action_21
action_24 (50) = happyShift action_22
action_24 (51) = happyShift action_23
action_24 (52) = happyShift action_24
action_24 (53) = happyShift action_25
action_24 (54) = happyShift action_26
action_24 (55) = happyShift action_27
action_24 (56) = happyShift action_28
action_24 (57) = happyShift action_29
action_24 (58) = happyShift action_30
action_24 (59) = happyShift action_31
action_24 (4) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (14) = happyShift action_2
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (19) = happyShift action_9
action_25 (25) = happyShift action_10
action_25 (30) = happyShift action_11
action_25 (32) = happyShift action_12
action_25 (36) = happyShift action_13
action_25 (39) = happyShift action_14
action_25 (41) = happyShift action_15
action_25 (42) = happyShift action_16
action_25 (44) = happyShift action_17
action_25 (46) = happyShift action_18
action_25 (47) = happyShift action_19
action_25 (48) = happyShift action_20
action_25 (49) = happyShift action_21
action_25 (50) = happyShift action_22
action_25 (51) = happyShift action_23
action_25 (52) = happyShift action_24
action_25 (53) = happyShift action_25
action_25 (54) = happyShift action_26
action_25 (55) = happyShift action_27
action_25 (56) = happyShift action_28
action_25 (57) = happyShift action_29
action_25 (58) = happyShift action_30
action_25 (59) = happyShift action_31
action_25 (4) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (14) = happyShift action_2
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (19) = happyShift action_9
action_26 (25) = happyShift action_10
action_26 (30) = happyShift action_11
action_26 (32) = happyShift action_12
action_26 (36) = happyShift action_13
action_26 (39) = happyShift action_14
action_26 (41) = happyShift action_15
action_26 (42) = happyShift action_16
action_26 (44) = happyShift action_17
action_26 (46) = happyShift action_18
action_26 (47) = happyShift action_19
action_26 (48) = happyShift action_20
action_26 (49) = happyShift action_21
action_26 (50) = happyShift action_22
action_26 (51) = happyShift action_23
action_26 (52) = happyShift action_24
action_26 (53) = happyShift action_25
action_26 (54) = happyShift action_26
action_26 (55) = happyShift action_27
action_26 (56) = happyShift action_28
action_26 (57) = happyShift action_29
action_26 (58) = happyShift action_30
action_26 (59) = happyShift action_31
action_26 (4) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (14) = happyShift action_2
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (19) = happyShift action_9
action_27 (25) = happyShift action_10
action_27 (30) = happyShift action_11
action_27 (32) = happyShift action_12
action_27 (36) = happyShift action_13
action_27 (39) = happyShift action_14
action_27 (41) = happyShift action_15
action_27 (42) = happyShift action_16
action_27 (44) = happyShift action_17
action_27 (46) = happyShift action_18
action_27 (47) = happyShift action_19
action_27 (48) = happyShift action_20
action_27 (49) = happyShift action_21
action_27 (50) = happyShift action_22
action_27 (51) = happyShift action_23
action_27 (52) = happyShift action_24
action_27 (53) = happyShift action_25
action_27 (54) = happyShift action_26
action_27 (55) = happyShift action_27
action_27 (56) = happyShift action_28
action_27 (57) = happyShift action_29
action_27 (58) = happyShift action_30
action_27 (59) = happyShift action_31
action_27 (4) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (13) = happyShift action_6
action_28 (14) = happyShift action_2
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (19) = happyShift action_9
action_28 (25) = happyShift action_10
action_28 (30) = happyShift action_11
action_28 (32) = happyShift action_12
action_28 (36) = happyShift action_13
action_28 (39) = happyShift action_14
action_28 (41) = happyShift action_15
action_28 (42) = happyShift action_16
action_28 (44) = happyShift action_17
action_28 (46) = happyShift action_18
action_28 (47) = happyShift action_19
action_28 (48) = happyShift action_20
action_28 (49) = happyShift action_21
action_28 (50) = happyShift action_22
action_28 (51) = happyShift action_23
action_28 (52) = happyShift action_24
action_28 (53) = happyShift action_25
action_28 (54) = happyShift action_26
action_28 (55) = happyShift action_27
action_28 (56) = happyShift action_28
action_28 (57) = happyShift action_29
action_28 (58) = happyShift action_30
action_28 (59) = happyShift action_31
action_28 (4) = happyGoto action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (14) = happyShift action_2
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (19) = happyShift action_9
action_29 (25) = happyShift action_10
action_29 (30) = happyShift action_11
action_29 (32) = happyShift action_12
action_29 (36) = happyShift action_13
action_29 (39) = happyShift action_14
action_29 (41) = happyShift action_15
action_29 (42) = happyShift action_16
action_29 (44) = happyShift action_17
action_29 (46) = happyShift action_18
action_29 (47) = happyShift action_19
action_29 (48) = happyShift action_20
action_29 (49) = happyShift action_21
action_29 (50) = happyShift action_22
action_29 (51) = happyShift action_23
action_29 (52) = happyShift action_24
action_29 (53) = happyShift action_25
action_29 (54) = happyShift action_26
action_29 (55) = happyShift action_27
action_29 (56) = happyShift action_28
action_29 (57) = happyShift action_29
action_29 (58) = happyShift action_30
action_29 (59) = happyShift action_31
action_29 (4) = happyGoto action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (14) = happyShift action_2
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (19) = happyShift action_9
action_30 (25) = happyShift action_10
action_30 (30) = happyShift action_11
action_30 (32) = happyShift action_12
action_30 (36) = happyShift action_13
action_30 (39) = happyShift action_14
action_30 (41) = happyShift action_15
action_30 (42) = happyShift action_16
action_30 (44) = happyShift action_17
action_30 (46) = happyShift action_18
action_30 (47) = happyShift action_19
action_30 (48) = happyShift action_20
action_30 (49) = happyShift action_21
action_30 (50) = happyShift action_22
action_30 (51) = happyShift action_23
action_30 (52) = happyShift action_24
action_30 (53) = happyShift action_25
action_30 (54) = happyShift action_26
action_30 (55) = happyShift action_27
action_30 (56) = happyShift action_28
action_30 (57) = happyShift action_29
action_30 (58) = happyShift action_30
action_30 (59) = happyShift action_31
action_30 (4) = happyGoto action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (14) = happyShift action_2
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (19) = happyShift action_9
action_31 (25) = happyShift action_10
action_31 (30) = happyShift action_11
action_31 (32) = happyShift action_12
action_31 (36) = happyShift action_13
action_31 (39) = happyShift action_14
action_31 (41) = happyShift action_15
action_31 (42) = happyShift action_16
action_31 (44) = happyShift action_17
action_31 (46) = happyShift action_18
action_31 (47) = happyShift action_19
action_31 (48) = happyShift action_20
action_31 (49) = happyShift action_21
action_31 (50) = happyShift action_22
action_31 (51) = happyShift action_23
action_31 (52) = happyShift action_24
action_31 (53) = happyShift action_25
action_31 (54) = happyShift action_26
action_31 (55) = happyShift action_27
action_31 (56) = happyShift action_28
action_31 (57) = happyShift action_29
action_31 (58) = happyShift action_30
action_31 (59) = happyShift action_31
action_31 (4) = happyGoto action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (14) = happyShift action_2
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (19) = happyShift action_9
action_32 (21) = happyShift action_57
action_32 (22) = happyShift action_58
action_32 (25) = happyShift action_10
action_32 (30) = happyShift action_11
action_32 (31) = happyShift action_59
action_32 (32) = happyShift action_12
action_32 (36) = happyShift action_13
action_32 (37) = happyShift action_60
action_32 (38) = happyShift action_61
action_32 (39) = happyShift action_62
action_32 (40) = happyShift action_63
action_32 (41) = happyShift action_15
action_32 (42) = happyShift action_16
action_32 (44) = happyShift action_17
action_32 (45) = happyShift action_64
action_32 (46) = happyShift action_18
action_32 (47) = happyShift action_19
action_32 (48) = happyShift action_20
action_32 (49) = happyShift action_21
action_32 (50) = happyShift action_22
action_32 (51) = happyShift action_23
action_32 (52) = happyShift action_24
action_32 (53) = happyShift action_25
action_32 (54) = happyShift action_26
action_32 (55) = happyShift action_27
action_32 (56) = happyShift action_28
action_32 (57) = happyShift action_29
action_32 (58) = happyShift action_30
action_32 (59) = happyShift action_31
action_32 (4) = happyGoto action_87
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (16) = happyShift action_7
action_33 (19) = happyShift action_9
action_33 (21) = happyShift action_57
action_33 (22) = happyShift action_58
action_33 (25) = happyShift action_10
action_33 (30) = happyShift action_11
action_33 (31) = happyShift action_59
action_33 (32) = happyShift action_12
action_33 (36) = happyShift action_13
action_33 (37) = happyShift action_60
action_33 (38) = happyShift action_61
action_33 (39) = happyShift action_62
action_33 (40) = happyShift action_63
action_33 (41) = happyShift action_15
action_33 (42) = happyShift action_16
action_33 (44) = happyShift action_17
action_33 (45) = happyShift action_64
action_33 (46) = happyShift action_18
action_33 (47) = happyShift action_19
action_33 (59) = happyShift action_31
action_33 (4) = happyGoto action_56
action_33 _ = happyReduce_15

action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (14) = happyShift action_2
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (19) = happyShift action_9
action_34 (21) = happyShift action_57
action_34 (22) = happyShift action_58
action_34 (25) = happyShift action_10
action_34 (30) = happyShift action_11
action_34 (31) = happyShift action_59
action_34 (32) = happyShift action_12
action_34 (36) = happyShift action_13
action_34 (37) = happyShift action_60
action_34 (38) = happyShift action_61
action_34 (39) = happyShift action_62
action_34 (40) = happyShift action_63
action_34 (41) = happyShift action_15
action_34 (42) = happyShift action_16
action_34 (44) = happyShift action_17
action_34 (45) = happyShift action_64
action_34 (46) = happyShift action_18
action_34 (47) = happyShift action_19
action_34 (48) = happyShift action_20
action_34 (49) = happyShift action_21
action_34 (50) = happyShift action_22
action_34 (51) = happyShift action_23
action_34 (52) = happyShift action_24
action_34 (53) = happyShift action_25
action_34 (54) = happyShift action_26
action_34 (55) = happyShift action_27
action_34 (56) = happyShift action_28
action_34 (57) = happyShift action_29
action_34 (58) = happyShift action_30
action_34 (59) = happyShift action_31
action_34 (4) = happyGoto action_86
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (16) = happyShift action_7
action_35 (19) = happyShift action_9
action_35 (21) = happyShift action_57
action_35 (22) = happyShift action_58
action_35 (25) = happyShift action_10
action_35 (30) = happyShift action_11
action_35 (31) = happyShift action_59
action_35 (32) = happyShift action_12
action_35 (36) = happyShift action_13
action_35 (37) = happyShift action_60
action_35 (38) = happyShift action_61
action_35 (39) = happyShift action_62
action_35 (40) = happyShift action_63
action_35 (41) = happyShift action_15
action_35 (42) = happyShift action_16
action_35 (44) = happyShift action_17
action_35 (45) = happyShift action_64
action_35 (46) = happyShift action_18
action_35 (47) = happyShift action_19
action_35 (58) = happyShift action_30
action_35 (59) = happyShift action_31
action_35 (4) = happyGoto action_56
action_35 _ = happyReduce_22

action_36 (11) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (13) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (19) = happyShift action_9
action_36 (21) = happyShift action_57
action_36 (22) = happyShift action_58
action_36 (25) = happyShift action_10
action_36 (30) = happyShift action_11
action_36 (31) = happyShift action_59
action_36 (32) = happyShift action_12
action_36 (36) = happyShift action_13
action_36 (37) = happyShift action_60
action_36 (38) = happyShift action_61
action_36 (39) = happyShift action_62
action_36 (40) = happyShift action_63
action_36 (41) = happyShift action_15
action_36 (42) = happyShift action_16
action_36 (44) = happyShift action_17
action_36 (45) = happyShift action_64
action_36 (46) = happyShift action_18
action_36 (47) = happyShift action_19
action_36 (50) = happyShift action_22
action_36 (53) = happyShift action_25
action_36 (56) = happyShift action_28
action_36 (58) = happyShift action_30
action_36 (59) = happyShift action_31
action_36 (4) = happyGoto action_56
action_36 _ = happyReduce_20

action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (14) = happyShift action_2
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (19) = happyShift action_9
action_37 (21) = happyShift action_57
action_37 (22) = happyShift action_58
action_37 (25) = happyShift action_10
action_37 (30) = happyShift action_11
action_37 (31) = happyShift action_59
action_37 (32) = happyShift action_12
action_37 (36) = happyShift action_13
action_37 (37) = happyShift action_60
action_37 (38) = happyShift action_61
action_37 (39) = happyShift action_62
action_37 (40) = happyShift action_63
action_37 (41) = happyShift action_15
action_37 (42) = happyShift action_16
action_37 (44) = happyShift action_17
action_37 (45) = happyShift action_64
action_37 (46) = happyShift action_18
action_37 (47) = happyShift action_19
action_37 (48) = happyShift action_20
action_37 (49) = happyShift action_21
action_37 (50) = happyShift action_22
action_37 (51) = happyShift action_23
action_37 (52) = happyShift action_24
action_37 (53) = happyShift action_25
action_37 (54) = happyShift action_26
action_37 (55) = happyShift action_27
action_37 (56) = happyShift action_28
action_37 (57) = happyShift action_29
action_37 (58) = happyShift action_30
action_37 (59) = happyShift action_31
action_37 (4) = happyGoto action_85
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (14) = happyShift action_2
action_38 (16) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (19) = happyShift action_9
action_38 (21) = happyShift action_57
action_38 (22) = happyShift action_58
action_38 (25) = happyShift action_10
action_38 (30) = happyShift action_11
action_38 (31) = happyShift action_59
action_38 (32) = happyShift action_12
action_38 (36) = happyShift action_13
action_38 (37) = happyShift action_60
action_38 (38) = happyShift action_61
action_38 (39) = happyShift action_62
action_38 (40) = happyShift action_63
action_38 (41) = happyShift action_15
action_38 (42) = happyShift action_16
action_38 (44) = happyShift action_17
action_38 (45) = happyShift action_64
action_38 (46) = happyShift action_18
action_38 (47) = happyShift action_19
action_38 (48) = happyShift action_20
action_38 (49) = happyShift action_21
action_38 (50) = happyShift action_22
action_38 (51) = happyShift action_23
action_38 (52) = happyShift action_24
action_38 (53) = happyShift action_25
action_38 (54) = happyShift action_26
action_38 (55) = happyShift action_27
action_38 (56) = happyShift action_28
action_38 (57) = happyShift action_29
action_38 (58) = happyShift action_30
action_38 (59) = happyShift action_31
action_38 (4) = happyGoto action_84
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (11) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (13) = happyShift action_6
action_39 (14) = happyShift action_2
action_39 (16) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (19) = happyShift action_9
action_39 (21) = happyShift action_57
action_39 (22) = happyShift action_58
action_39 (25) = happyShift action_10
action_39 (30) = happyShift action_11
action_39 (31) = happyShift action_59
action_39 (32) = happyShift action_12
action_39 (36) = happyShift action_13
action_39 (37) = happyShift action_60
action_39 (38) = happyShift action_61
action_39 (39) = happyShift action_62
action_39 (40) = happyShift action_63
action_39 (41) = happyShift action_15
action_39 (42) = happyShift action_16
action_39 (44) = happyShift action_17
action_39 (45) = happyShift action_64
action_39 (46) = happyShift action_18
action_39 (47) = happyShift action_19
action_39 (48) = happyShift action_20
action_39 (49) = happyShift action_21
action_39 (50) = happyShift action_22
action_39 (51) = happyShift action_23
action_39 (52) = happyShift action_24
action_39 (53) = happyShift action_25
action_39 (54) = happyShift action_26
action_39 (55) = happyShift action_27
action_39 (56) = happyShift action_28
action_39 (57) = happyShift action_29
action_39 (58) = happyShift action_30
action_39 (59) = happyShift action_31
action_39 (4) = happyGoto action_83
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (16) = happyShift action_7
action_40 (19) = happyShift action_9
action_40 (21) = happyShift action_57
action_40 (22) = happyShift action_58
action_40 (25) = happyShift action_10
action_40 (30) = happyShift action_11
action_40 (31) = happyShift action_59
action_40 (32) = happyShift action_12
action_40 (36) = happyShift action_13
action_40 (37) = happyShift action_60
action_40 (38) = happyShift action_61
action_40 (39) = happyShift action_62
action_40 (40) = happyShift action_63
action_40 (41) = happyShift action_15
action_40 (42) = happyShift action_16
action_40 (44) = happyShift action_17
action_40 (45) = happyShift action_64
action_40 (46) = happyShift action_18
action_40 (47) = happyShift action_19
action_40 (50) = happyShift action_22
action_40 (53) = happyShift action_25
action_40 (55) = happyShift action_27
action_40 (56) = happyShift action_28
action_40 (58) = happyShift action_30
action_40 (59) = happyShift action_31
action_40 (4) = happyGoto action_56
action_40 _ = happyReduce_26

action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (14) = happyShift action_2
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (19) = happyShift action_9
action_41 (21) = happyShift action_57
action_41 (22) = happyShift action_58
action_41 (25) = happyShift action_10
action_41 (30) = happyShift action_11
action_41 (31) = happyShift action_59
action_41 (32) = happyShift action_12
action_41 (36) = happyShift action_13
action_41 (37) = happyShift action_60
action_41 (38) = happyShift action_61
action_41 (39) = happyShift action_62
action_41 (40) = happyShift action_63
action_41 (41) = happyShift action_15
action_41 (42) = happyShift action_16
action_41 (44) = happyShift action_17
action_41 (45) = happyShift action_64
action_41 (46) = happyShift action_18
action_41 (47) = happyShift action_19
action_41 (48) = happyShift action_20
action_41 (49) = happyShift action_21
action_41 (50) = happyShift action_22
action_41 (51) = happyShift action_23
action_41 (52) = happyShift action_24
action_41 (53) = happyShift action_25
action_41 (54) = happyShift action_26
action_41 (55) = happyShift action_27
action_41 (56) = happyShift action_28
action_41 (57) = happyShift action_29
action_41 (58) = happyShift action_30
action_41 (59) = happyShift action_31
action_41 (4) = happyGoto action_82
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_4
action_42 (12) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (16) = happyShift action_7
action_42 (19) = happyShift action_9
action_42 (21) = happyShift action_57
action_42 (22) = happyShift action_58
action_42 (25) = happyShift action_10
action_42 (30) = happyShift action_11
action_42 (31) = happyShift action_59
action_42 (32) = happyShift action_12
action_42 (36) = happyShift action_13
action_42 (37) = happyShift action_60
action_42 (38) = happyShift action_61
action_42 (39) = happyShift action_62
action_42 (40) = happyShift action_63
action_42 (41) = happyShift action_15
action_42 (42) = happyShift action_16
action_42 (44) = happyShift action_17
action_42 (45) = happyShift action_64
action_42 (46) = happyShift action_18
action_42 (47) = happyShift action_19
action_42 (49) = happyShift action_21
action_42 (50) = happyShift action_22
action_42 (51) = happyShift action_23
action_42 (53) = happyShift action_25
action_42 (55) = happyShift action_27
action_42 (56) = happyShift action_28
action_42 (58) = happyShift action_30
action_42 (59) = happyShift action_31
action_42 (4) = happyGoto action_56
action_42 _ = happyReduce_18

action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (16) = happyShift action_7
action_43 (19) = happyShift action_9
action_43 (21) = happyShift action_57
action_43 (22) = happyShift action_58
action_43 (25) = happyShift action_10
action_43 (30) = happyShift action_11
action_43 (31) = happyShift action_59
action_43 (32) = happyShift action_12
action_43 (36) = happyShift action_13
action_43 (37) = happyShift action_60
action_43 (38) = happyShift action_61
action_43 (39) = happyShift action_62
action_43 (40) = happyShift action_63
action_43 (41) = happyShift action_15
action_43 (42) = happyShift action_16
action_43 (44) = happyShift action_17
action_43 (45) = happyShift action_64
action_43 (46) = happyShift action_18
action_43 (47) = happyShift action_19
action_43 (49) = happyShift action_21
action_43 (50) = happyShift action_22
action_43 (51) = happyShift action_23
action_43 (53) = happyShift action_25
action_43 (55) = happyShift action_27
action_43 (56) = happyShift action_28
action_43 (58) = happyShift action_30
action_43 (59) = happyShift action_31
action_43 (4) = happyGoto action_56
action_43 _ = happyReduce_17

action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (16) = happyShift action_7
action_44 (19) = happyShift action_9
action_44 (21) = happyShift action_57
action_44 (22) = happyShift action_58
action_44 (25) = happyShift action_10
action_44 (30) = happyShift action_11
action_44 (31) = happyShift action_59
action_44 (32) = happyShift action_12
action_44 (36) = happyShift action_13
action_44 (37) = happyShift action_60
action_44 (38) = happyShift action_61
action_44 (39) = happyShift action_62
action_44 (40) = happyShift action_63
action_44 (42) = happyShift action_16
action_44 (44) = happyShift action_17
action_44 (45) = happyShift action_64
action_44 (47) = happyShift action_19
action_44 (4) = happyGoto action_56
action_44 _ = happyReduce_25

action_45 (11) = happyShift action_4
action_45 (12) = happyShift action_5
action_45 (13) = happyShift action_6
action_45 (14) = happyShift action_2
action_45 (16) = happyShift action_7
action_45 (17) = happyShift action_8
action_45 (19) = happyShift action_9
action_45 (21) = happyShift action_57
action_45 (22) = happyShift action_58
action_45 (25) = happyShift action_10
action_45 (30) = happyShift action_11
action_45 (31) = happyShift action_59
action_45 (32) = happyShift action_12
action_45 (36) = happyShift action_13
action_45 (37) = happyShift action_60
action_45 (38) = happyShift action_61
action_45 (39) = happyShift action_62
action_45 (40) = happyShift action_63
action_45 (41) = happyShift action_15
action_45 (42) = happyShift action_16
action_45 (44) = happyShift action_17
action_45 (45) = happyShift action_64
action_45 (46) = happyShift action_18
action_45 (47) = happyShift action_19
action_45 (48) = happyShift action_20
action_45 (49) = happyShift action_21
action_45 (50) = happyShift action_22
action_45 (51) = happyShift action_23
action_45 (52) = happyShift action_24
action_45 (53) = happyShift action_25
action_45 (54) = happyShift action_26
action_45 (55) = happyShift action_27
action_45 (56) = happyShift action_28
action_45 (57) = happyShift action_29
action_45 (58) = happyShift action_30
action_45 (59) = happyShift action_31
action_45 (4) = happyGoto action_81
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (11) = happyShift action_80
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (30) = happyShift action_79
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_4
action_48 (12) = happyShift action_5
action_48 (13) = happyShift action_6
action_48 (16) = happyShift action_7
action_48 (19) = happyShift action_9
action_48 (21) = happyShift action_57
action_48 (22) = happyShift action_58
action_48 (25) = happyShift action_10
action_48 (30) = happyShift action_11
action_48 (31) = happyShift action_59
action_48 (32) = happyShift action_12
action_48 (36) = happyShift action_13
action_48 (37) = happyShift action_60
action_48 (38) = happyShift action_61
action_48 (39) = happyShift action_62
action_48 (40) = happyShift action_63
action_48 (41) = happyShift action_15
action_48 (42) = happyShift action_16
action_48 (44) = happyShift action_17
action_48 (45) = happyShift action_64
action_48 (47) = happyShift action_19
action_48 (59) = happyShift action_31
action_48 (4) = happyGoto action_56
action_48 _ = happyReduce_8

action_49 (11) = happyShift action_4
action_49 (12) = happyShift action_5
action_49 (13) = happyShift action_6
action_49 (16) = happyShift action_7
action_49 (19) = happyShift action_9
action_49 (21) = happyShift action_57
action_49 (22) = happyShift action_58
action_49 (25) = happyShift action_10
action_49 (30) = happyShift action_11
action_49 (31) = happyShift action_59
action_49 (32) = happyShift action_12
action_49 (36) = happyShift action_13
action_49 (37) = happyShift action_60
action_49 (38) = happyShift action_61
action_49 (39) = happyShift action_62
action_49 (40) = happyShift action_63
action_49 (41) = happyShift action_15
action_49 (42) = happyShift action_16
action_49 (44) = happyShift action_17
action_49 (45) = happyShift action_64
action_49 (46) = happyShift action_18
action_49 (47) = happyShift action_19
action_49 (59) = happyShift action_31
action_49 (4) = happyGoto action_56
action_49 _ = happyReduce_10

action_50 (11) = happyShift action_4
action_50 (12) = happyShift action_5
action_50 (13) = happyShift action_6
action_50 (16) = happyShift action_7
action_50 (19) = happyShift action_9
action_50 (21) = happyShift action_57
action_50 (22) = happyShift action_58
action_50 (25) = happyShift action_10
action_50 (30) = happyShift action_11
action_50 (31) = happyShift action_59
action_50 (32) = happyShift action_12
action_50 (37) = happyShift action_60
action_50 (38) = happyShift action_61
action_50 (39) = happyShift action_62
action_50 (40) = happyShift action_63
action_50 (42) = happyShift action_16
action_50 (44) = happyShift action_17
action_50 (45) = happyShift action_64
action_50 (4) = happyGoto action_56
action_50 _ = happyReduce_14

action_51 (11) = happyShift action_4
action_51 (12) = happyShift action_5
action_51 (13) = happyShift action_6
action_51 (14) = happyShift action_2
action_51 (16) = happyShift action_7
action_51 (17) = happyShift action_8
action_51 (19) = happyShift action_9
action_51 (21) = happyShift action_57
action_51 (22) = happyShift action_58
action_51 (25) = happyShift action_10
action_51 (30) = happyShift action_11
action_51 (31) = happyShift action_59
action_51 (32) = happyShift action_12
action_51 (34) = happyShift action_78
action_51 (36) = happyShift action_13
action_51 (37) = happyShift action_60
action_51 (38) = happyShift action_61
action_51 (39) = happyShift action_62
action_51 (40) = happyShift action_63
action_51 (41) = happyShift action_15
action_51 (42) = happyShift action_16
action_51 (44) = happyShift action_17
action_51 (45) = happyShift action_64
action_51 (46) = happyShift action_18
action_51 (47) = happyShift action_19
action_51 (48) = happyShift action_20
action_51 (49) = happyShift action_21
action_51 (50) = happyShift action_22
action_51 (51) = happyShift action_23
action_51 (52) = happyShift action_24
action_51 (53) = happyShift action_25
action_51 (54) = happyShift action_26
action_51 (55) = happyShift action_27
action_51 (56) = happyShift action_28
action_51 (57) = happyShift action_29
action_51 (58) = happyShift action_30
action_51 (59) = happyShift action_31
action_51 (4) = happyGoto action_56
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (11) = happyShift action_4
action_52 (12) = happyShift action_5
action_52 (13) = happyShift action_6
action_52 (14) = happyShift action_2
action_52 (16) = happyShift action_7
action_52 (17) = happyShift action_8
action_52 (19) = happyShift action_9
action_52 (21) = happyShift action_57
action_52 (22) = happyShift action_58
action_52 (25) = happyShift action_10
action_52 (26) = happyShift action_77
action_52 (30) = happyShift action_11
action_52 (31) = happyShift action_59
action_52 (32) = happyShift action_12
action_52 (36) = happyShift action_13
action_52 (37) = happyShift action_60
action_52 (38) = happyShift action_61
action_52 (39) = happyShift action_62
action_52 (40) = happyShift action_63
action_52 (41) = happyShift action_15
action_52 (42) = happyShift action_16
action_52 (44) = happyShift action_17
action_52 (45) = happyShift action_64
action_52 (46) = happyShift action_18
action_52 (47) = happyShift action_19
action_52 (48) = happyShift action_20
action_52 (49) = happyShift action_21
action_52 (50) = happyShift action_22
action_52 (51) = happyShift action_23
action_52 (52) = happyShift action_24
action_52 (53) = happyShift action_25
action_52 (54) = happyShift action_26
action_52 (55) = happyShift action_27
action_52 (56) = happyShift action_28
action_52 (57) = happyShift action_29
action_52 (58) = happyShift action_30
action_52 (59) = happyShift action_31
action_52 (4) = happyGoto action_56
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (30) = happyShift action_76
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (11) = happyShift action_4
action_54 (12) = happyShift action_5
action_54 (13) = happyShift action_6
action_54 (16) = happyShift action_7
action_54 (17) = happyShift action_8
action_54 (19) = happyShift action_9
action_54 (21) = happyShift action_57
action_54 (22) = happyShift action_58
action_54 (25) = happyShift action_10
action_54 (30) = happyShift action_11
action_54 (31) = happyShift action_59
action_54 (32) = happyShift action_12
action_54 (36) = happyShift action_13
action_54 (37) = happyShift action_60
action_54 (38) = happyShift action_61
action_54 (39) = happyShift action_62
action_54 (40) = happyShift action_63
action_54 (41) = happyShift action_15
action_54 (42) = happyShift action_16
action_54 (44) = happyShift action_17
action_54 (45) = happyShift action_64
action_54 (46) = happyShift action_18
action_54 (47) = happyShift action_19
action_54 (48) = happyShift action_20
action_54 (49) = happyShift action_21
action_54 (50) = happyShift action_22
action_54 (51) = happyShift action_23
action_54 (52) = happyShift action_24
action_54 (53) = happyShift action_25
action_54 (54) = happyShift action_26
action_54 (55) = happyShift action_27
action_54 (56) = happyShift action_28
action_54 (57) = happyShift action_29
action_54 (58) = happyShift action_30
action_54 (59) = happyShift action_31
action_54 (4) = happyGoto action_56
action_54 _ = happyReduce_11

action_55 (11) = happyShift action_4
action_55 (12) = happyShift action_5
action_55 (13) = happyShift action_6
action_55 (14) = happyShift action_2
action_55 (16) = happyShift action_7
action_55 (17) = happyShift action_8
action_55 (19) = happyShift action_9
action_55 (25) = happyShift action_10
action_55 (30) = happyShift action_11
action_55 (32) = happyShift action_12
action_55 (36) = happyShift action_13
action_55 (39) = happyShift action_14
action_55 (41) = happyShift action_15
action_55 (42) = happyShift action_16
action_55 (44) = happyShift action_17
action_55 (46) = happyShift action_18
action_55 (47) = happyShift action_19
action_55 (48) = happyShift action_20
action_55 (49) = happyShift action_21
action_55 (50) = happyShift action_22
action_55 (51) = happyShift action_23
action_55 (52) = happyShift action_24
action_55 (53) = happyShift action_25
action_55 (54) = happyShift action_26
action_55 (55) = happyShift action_27
action_55 (56) = happyShift action_28
action_55 (57) = happyShift action_29
action_55 (58) = happyShift action_30
action_55 (59) = happyShift action_31
action_55 (4) = happyGoto action_75
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (16) = happyShift action_7
action_56 (42) = happyShift action_16
action_56 (4) = happyGoto action_56
action_56 _ = happyReduce_12

action_57 (11) = happyShift action_4
action_57 (12) = happyShift action_5
action_57 (13) = happyShift action_6
action_57 (14) = happyShift action_2
action_57 (16) = happyShift action_7
action_57 (17) = happyShift action_8
action_57 (19) = happyShift action_9
action_57 (25) = happyShift action_10
action_57 (30) = happyShift action_11
action_57 (32) = happyShift action_12
action_57 (36) = happyShift action_13
action_57 (39) = happyShift action_14
action_57 (41) = happyShift action_15
action_57 (42) = happyShift action_16
action_57 (44) = happyShift action_17
action_57 (46) = happyShift action_18
action_57 (47) = happyShift action_19
action_57 (48) = happyShift action_20
action_57 (49) = happyShift action_21
action_57 (50) = happyShift action_22
action_57 (51) = happyShift action_23
action_57 (52) = happyShift action_24
action_57 (53) = happyShift action_25
action_57 (54) = happyShift action_26
action_57 (55) = happyShift action_27
action_57 (56) = happyShift action_28
action_57 (57) = happyShift action_29
action_57 (58) = happyShift action_30
action_57 (59) = happyShift action_31
action_57 (4) = happyGoto action_74
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (11) = happyShift action_4
action_58 (12) = happyShift action_5
action_58 (13) = happyShift action_6
action_58 (14) = happyShift action_2
action_58 (16) = happyShift action_7
action_58 (17) = happyShift action_8
action_58 (19) = happyShift action_9
action_58 (25) = happyShift action_10
action_58 (30) = happyShift action_11
action_58 (32) = happyShift action_12
action_58 (36) = happyShift action_13
action_58 (39) = happyShift action_14
action_58 (41) = happyShift action_15
action_58 (42) = happyShift action_16
action_58 (44) = happyShift action_17
action_58 (46) = happyShift action_18
action_58 (47) = happyShift action_19
action_58 (48) = happyShift action_20
action_58 (49) = happyShift action_21
action_58 (50) = happyShift action_22
action_58 (51) = happyShift action_23
action_58 (52) = happyShift action_24
action_58 (53) = happyShift action_25
action_58 (54) = happyShift action_26
action_58 (55) = happyShift action_27
action_58 (56) = happyShift action_28
action_58 (57) = happyShift action_29
action_58 (58) = happyShift action_30
action_58 (59) = happyShift action_31
action_58 (4) = happyGoto action_73
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (11) = happyShift action_4
action_59 (12) = happyShift action_5
action_59 (13) = happyShift action_6
action_59 (14) = happyShift action_2
action_59 (16) = happyShift action_7
action_59 (17) = happyShift action_8
action_59 (19) = happyShift action_9
action_59 (25) = happyShift action_10
action_59 (30) = happyShift action_11
action_59 (32) = happyShift action_12
action_59 (36) = happyShift action_13
action_59 (39) = happyShift action_14
action_59 (41) = happyShift action_15
action_59 (42) = happyShift action_16
action_59 (44) = happyShift action_17
action_59 (46) = happyShift action_18
action_59 (47) = happyShift action_19
action_59 (48) = happyShift action_20
action_59 (49) = happyShift action_21
action_59 (50) = happyShift action_22
action_59 (51) = happyShift action_23
action_59 (52) = happyShift action_24
action_59 (53) = happyShift action_25
action_59 (54) = happyShift action_26
action_59 (55) = happyShift action_27
action_59 (56) = happyShift action_28
action_59 (57) = happyShift action_29
action_59 (58) = happyShift action_30
action_59 (59) = happyShift action_31
action_59 (4) = happyGoto action_72
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (11) = happyShift action_4
action_60 (12) = happyShift action_5
action_60 (13) = happyShift action_6
action_60 (14) = happyShift action_2
action_60 (16) = happyShift action_7
action_60 (17) = happyShift action_8
action_60 (19) = happyShift action_9
action_60 (25) = happyShift action_10
action_60 (30) = happyShift action_11
action_60 (32) = happyShift action_12
action_60 (36) = happyShift action_13
action_60 (39) = happyShift action_14
action_60 (41) = happyShift action_15
action_60 (42) = happyShift action_16
action_60 (44) = happyShift action_17
action_60 (46) = happyShift action_18
action_60 (47) = happyShift action_19
action_60 (48) = happyShift action_20
action_60 (49) = happyShift action_21
action_60 (50) = happyShift action_22
action_60 (51) = happyShift action_23
action_60 (52) = happyShift action_24
action_60 (53) = happyShift action_25
action_60 (54) = happyShift action_26
action_60 (55) = happyShift action_27
action_60 (56) = happyShift action_28
action_60 (57) = happyShift action_29
action_60 (58) = happyShift action_30
action_60 (59) = happyShift action_31
action_60 (4) = happyGoto action_71
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (11) = happyShift action_4
action_61 (12) = happyShift action_5
action_61 (13) = happyShift action_6
action_61 (14) = happyShift action_2
action_61 (16) = happyShift action_7
action_61 (17) = happyShift action_8
action_61 (19) = happyShift action_9
action_61 (25) = happyShift action_10
action_61 (30) = happyShift action_11
action_61 (32) = happyShift action_12
action_61 (36) = happyShift action_13
action_61 (39) = happyShift action_14
action_61 (41) = happyShift action_15
action_61 (42) = happyShift action_16
action_61 (44) = happyShift action_17
action_61 (46) = happyShift action_18
action_61 (47) = happyShift action_19
action_61 (48) = happyShift action_20
action_61 (49) = happyShift action_21
action_61 (50) = happyShift action_22
action_61 (51) = happyShift action_23
action_61 (52) = happyShift action_24
action_61 (53) = happyShift action_25
action_61 (54) = happyShift action_26
action_61 (55) = happyShift action_27
action_61 (56) = happyShift action_28
action_61 (57) = happyShift action_29
action_61 (58) = happyShift action_30
action_61 (59) = happyShift action_31
action_61 (4) = happyGoto action_70
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (11) = happyShift action_4
action_62 (12) = happyShift action_5
action_62 (13) = happyShift action_6
action_62 (14) = happyShift action_2
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (19) = happyShift action_9
action_62 (25) = happyShift action_10
action_62 (30) = happyShift action_11
action_62 (32) = happyShift action_12
action_62 (36) = happyShift action_13
action_62 (39) = happyShift action_14
action_62 (41) = happyShift action_15
action_62 (42) = happyShift action_16
action_62 (44) = happyShift action_17
action_62 (46) = happyShift action_18
action_62 (47) = happyShift action_19
action_62 (48) = happyShift action_20
action_62 (49) = happyShift action_21
action_62 (50) = happyShift action_22
action_62 (51) = happyShift action_23
action_62 (52) = happyShift action_24
action_62 (53) = happyShift action_25
action_62 (54) = happyShift action_26
action_62 (55) = happyShift action_27
action_62 (56) = happyShift action_28
action_62 (57) = happyShift action_29
action_62 (58) = happyShift action_30
action_62 (59) = happyShift action_31
action_62 (4) = happyGoto action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_4
action_63 (12) = happyShift action_5
action_63 (13) = happyShift action_6
action_63 (14) = happyShift action_2
action_63 (16) = happyShift action_7
action_63 (17) = happyShift action_8
action_63 (19) = happyShift action_9
action_63 (25) = happyShift action_10
action_63 (30) = happyShift action_11
action_63 (32) = happyShift action_12
action_63 (36) = happyShift action_13
action_63 (39) = happyShift action_14
action_63 (41) = happyShift action_15
action_63 (42) = happyShift action_16
action_63 (44) = happyShift action_17
action_63 (46) = happyShift action_18
action_63 (47) = happyShift action_19
action_63 (48) = happyShift action_20
action_63 (49) = happyShift action_21
action_63 (50) = happyShift action_22
action_63 (51) = happyShift action_23
action_63 (52) = happyShift action_24
action_63 (53) = happyShift action_25
action_63 (54) = happyShift action_26
action_63 (55) = happyShift action_27
action_63 (56) = happyShift action_28
action_63 (57) = happyShift action_29
action_63 (58) = happyShift action_30
action_63 (59) = happyShift action_31
action_63 (4) = happyGoto action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (11) = happyShift action_4
action_64 (12) = happyShift action_5
action_64 (13) = happyShift action_6
action_64 (14) = happyShift action_2
action_64 (16) = happyShift action_7
action_64 (17) = happyShift action_8
action_64 (19) = happyShift action_9
action_64 (25) = happyShift action_10
action_64 (30) = happyShift action_11
action_64 (32) = happyShift action_12
action_64 (36) = happyShift action_13
action_64 (39) = happyShift action_14
action_64 (41) = happyShift action_15
action_64 (42) = happyShift action_16
action_64 (44) = happyShift action_17
action_64 (46) = happyShift action_18
action_64 (47) = happyShift action_19
action_64 (48) = happyShift action_20
action_64 (49) = happyShift action_21
action_64 (50) = happyShift action_22
action_64 (51) = happyShift action_23
action_64 (52) = happyShift action_24
action_64 (53) = happyShift action_25
action_64 (54) = happyShift action_26
action_64 (55) = happyShift action_27
action_64 (56) = happyShift action_28
action_64 (57) = happyShift action_29
action_64 (58) = happyShift action_30
action_64 (59) = happyShift action_31
action_64 (4) = happyGoto action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_4
action_65 (12) = happyShift action_5
action_65 (13) = happyShift action_6
action_65 (14) = happyShift action_2
action_65 (15) = happyShift action_66
action_65 (16) = happyShift action_7
action_65 (17) = happyShift action_8
action_65 (19) = happyShift action_9
action_65 (21) = happyShift action_57
action_65 (22) = happyShift action_58
action_65 (25) = happyShift action_10
action_65 (30) = happyShift action_11
action_65 (31) = happyShift action_59
action_65 (32) = happyShift action_12
action_65 (36) = happyShift action_13
action_65 (37) = happyShift action_60
action_65 (38) = happyShift action_61
action_65 (39) = happyShift action_62
action_65 (40) = happyShift action_63
action_65 (41) = happyShift action_15
action_65 (42) = happyShift action_16
action_65 (44) = happyShift action_17
action_65 (45) = happyShift action_64
action_65 (46) = happyShift action_18
action_65 (47) = happyShift action_19
action_65 (48) = happyShift action_20
action_65 (49) = happyShift action_21
action_65 (50) = happyShift action_22
action_65 (51) = happyShift action_23
action_65 (52) = happyShift action_24
action_65 (53) = happyShift action_25
action_65 (54) = happyShift action_26
action_65 (55) = happyShift action_27
action_65 (56) = happyShift action_28
action_65 (57) = happyShift action_29
action_65 (58) = happyShift action_30
action_65 (59) = happyShift action_31
action_65 (4) = happyGoto action_56
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_1

action_67 (16) = happyShift action_7
action_67 (21) = happyShift action_57
action_67 (22) = happyShift action_58
action_67 (31) = happyShift action_59
action_67 (37) = happyShift action_60
action_67 (38) = happyShift action_61
action_67 (39) = happyShift action_62
action_67 (40) = happyShift action_63
action_67 (42) = happyShift action_16
action_67 (4) = happyGoto action_56
action_67 _ = happyReduce_27

action_68 (16) = happyShift action_7
action_68 (21) = happyShift action_57
action_68 (22) = happyShift action_58
action_68 (31) = happyShift action_59
action_68 (42) = happyShift action_16
action_68 (4) = happyGoto action_56
action_68 _ = happyReduce_31

action_69 (16) = happyShift action_7
action_69 (21) = happyShift action_57
action_69 (22) = happyShift action_58
action_69 (31) = happyShift action_59
action_69 (38) = happyShift action_61
action_69 (40) = happyShift action_63
action_69 (42) = happyShift action_16
action_69 (4) = happyGoto action_56
action_69 _ = happyReduce_29

action_70 (16) = happyShift action_7
action_70 (21) = happyShift action_57
action_70 (22) = happyShift action_58
action_70 (31) = happyShift action_59
action_70 (42) = happyShift action_16
action_70 (4) = happyGoto action_56
action_70 _ = happyReduce_30

action_71 (16) = happyShift action_7
action_71 (21) = happyShift action_57
action_71 (22) = happyShift action_58
action_71 (31) = happyShift action_59
action_71 (38) = happyShift action_61
action_71 (40) = happyShift action_63
action_71 (42) = happyShift action_16
action_71 (4) = happyGoto action_56
action_71 _ = happyReduce_28

action_72 (16) = happyShift action_7
action_72 (31) = happyShift action_59
action_72 (42) = happyShift action_16
action_72 (4) = happyGoto action_56
action_72 _ = happyReduce_9

action_73 (16) = happyShift action_7
action_73 (31) = happyShift action_59
action_73 (42) = happyShift action_16
action_73 (4) = happyGoto action_56
action_73 _ = happyReduce_33

action_74 (16) = happyShift action_7
action_74 (31) = happyShift action_59
action_74 (42) = happyShift action_16
action_74 (4) = happyGoto action_56
action_74 _ = happyReduce_32

action_75 (16) = happyShift action_7
action_75 (42) = happyShift action_16
action_75 (4) = happyGoto action_56
action_75 _ = happyReduce_34

action_76 (24) = happyShift action_91
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_39

action_78 (11) = happyShift action_4
action_78 (12) = happyShift action_5
action_78 (13) = happyShift action_6
action_78 (14) = happyShift action_2
action_78 (16) = happyShift action_7
action_78 (17) = happyShift action_8
action_78 (19) = happyShift action_9
action_78 (25) = happyShift action_10
action_78 (30) = happyShift action_11
action_78 (32) = happyShift action_12
action_78 (36) = happyShift action_13
action_78 (39) = happyShift action_14
action_78 (41) = happyShift action_15
action_78 (42) = happyShift action_16
action_78 (44) = happyShift action_17
action_78 (46) = happyShift action_18
action_78 (47) = happyShift action_19
action_78 (48) = happyShift action_20
action_78 (49) = happyShift action_21
action_78 (50) = happyShift action_22
action_78 (51) = happyShift action_23
action_78 (52) = happyShift action_24
action_78 (53) = happyShift action_25
action_78 (54) = happyShift action_26
action_78 (55) = happyShift action_27
action_78 (56) = happyShift action_28
action_78 (57) = happyShift action_29
action_78 (58) = happyShift action_30
action_78 (59) = happyShift action_31
action_78 (4) = happyGoto action_90
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (24) = happyShift action_89
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (11) = happyShift action_4
action_80 (12) = happyShift action_5
action_80 (13) = happyShift action_6
action_80 (14) = happyShift action_2
action_80 (16) = happyShift action_7
action_80 (17) = happyShift action_8
action_80 (19) = happyShift action_9
action_80 (25) = happyShift action_10
action_80 (30) = happyShift action_11
action_80 (32) = happyShift action_12
action_80 (36) = happyShift action_13
action_80 (39) = happyShift action_14
action_80 (41) = happyShift action_15
action_80 (42) = happyShift action_16
action_80 (44) = happyShift action_17
action_80 (46) = happyShift action_18
action_80 (47) = happyShift action_19
action_80 (48) = happyShift action_20
action_80 (49) = happyShift action_21
action_80 (50) = happyShift action_22
action_80 (51) = happyShift action_23
action_80 (52) = happyShift action_24
action_80 (53) = happyShift action_25
action_80 (54) = happyShift action_26
action_80 (55) = happyShift action_27
action_80 (56) = happyShift action_28
action_80 (57) = happyShift action_29
action_80 (58) = happyShift action_30
action_80 (59) = happyShift action_31
action_80 (4) = happyGoto action_88
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (14) = happyReduce_12
action_81 (15) = happyReduce_23
action_81 (16) = happyShift action_7
action_81 (17) = happyReduce_12
action_81 (19) = happyReduce_12
action_81 (20) = happyReduce_23
action_81 (26) = happyReduce_23
action_81 (31) = happyReduce_12
action_81 (32) = happyReduce_12
action_81 (33) = happyReduce_23
action_81 (34) = happyReduce_23
action_81 (35) = happyReduce_23
action_81 (36) = happyReduce_12
action_81 (41) = happyReduce_12
action_81 (42) = happyShift action_16
action_81 (44) = happyReduce_12
action_81 (46) = happyReduce_12
action_81 (48) = happyReduce_12
action_81 (49) = happyReduce_12
action_81 (50) = happyReduce_12
action_81 (52) = happyReduce_12
action_81 (53) = happyReduce_12
action_81 (54) = happyReduce_12
action_81 (55) = happyReduce_12
action_81 (56) = happyReduce_12
action_81 (57) = happyReduce_12
action_81 (58) = happyReduce_12
action_81 (59) = happyReduce_12
action_81 (60) = happyReduce_23
action_81 (4) = happyGoto action_56
action_81 _ = happyReduce_12

action_82 (14) = happyReduce_12
action_82 (15) = happyReduce_19
action_82 (16) = happyShift action_7
action_82 (17) = happyReduce_12
action_82 (19) = happyReduce_12
action_82 (20) = happyReduce_19
action_82 (26) = happyReduce_19
action_82 (31) = happyReduce_12
action_82 (32) = happyReduce_12
action_82 (33) = happyReduce_19
action_82 (34) = happyReduce_19
action_82 (35) = happyReduce_19
action_82 (36) = happyReduce_12
action_82 (41) = happyReduce_12
action_82 (42) = happyShift action_16
action_82 (44) = happyReduce_12
action_82 (48) = happyReduce_12
action_82 (49) = happyReduce_12
action_82 (50) = happyReduce_12
action_82 (52) = happyReduce_12
action_82 (54) = happyReduce_12
action_82 (57) = happyReduce_12
action_82 (58) = happyReduce_12
action_82 (59) = happyReduce_12
action_82 (60) = happyReduce_19
action_82 (4) = happyGoto action_56
action_82 _ = happyReduce_12

action_83 (15) = happyReduce_2
action_83 (16) = happyShift action_7
action_83 (20) = happyReduce_2
action_83 (26) = happyReduce_2
action_83 (33) = happyReduce_2
action_83 (34) = happyReduce_2
action_83 (35) = happyReduce_2
action_83 (42) = happyShift action_16
action_83 (60) = happyReduce_2
action_83 (4) = happyGoto action_56
action_83 _ = happyReduce_12

action_84 (14) = happyReduce_12
action_84 (15) = happyReduce_21
action_84 (16) = happyShift action_7
action_84 (17) = happyReduce_12
action_84 (19) = happyReduce_12
action_84 (20) = happyReduce_21
action_84 (26) = happyReduce_21
action_84 (31) = happyReduce_12
action_84 (32) = happyReduce_12
action_84 (33) = happyReduce_21
action_84 (34) = happyReduce_21
action_84 (35) = happyReduce_21
action_84 (36) = happyReduce_12
action_84 (41) = happyReduce_12
action_84 (42) = happyShift action_16
action_84 (44) = happyReduce_12
action_84 (48) = happyReduce_12
action_84 (49) = happyReduce_12
action_84 (50) = happyReduce_12
action_84 (52) = happyReduce_12
action_84 (53) = happyReduce_12
action_84 (54) = happyReduce_12
action_84 (55) = happyReduce_12
action_84 (57) = happyReduce_12
action_84 (58) = happyReduce_12
action_84 (59) = happyReduce_12
action_84 (60) = happyReduce_21
action_84 (4) = happyGoto action_56
action_84 _ = happyReduce_12

action_85 (15) = happyReduce_7
action_85 (16) = happyShift action_7
action_85 (20) = happyReduce_7
action_85 (26) = happyReduce_7
action_85 (33) = happyReduce_7
action_85 (34) = happyReduce_7
action_85 (35) = happyReduce_7
action_85 (42) = happyShift action_16
action_85 (60) = happyReduce_7
action_85 (4) = happyGoto action_56
action_85 _ = happyReduce_12

action_86 (15) = happyReduce_6
action_86 (16) = happyShift action_7
action_86 (20) = happyReduce_6
action_86 (26) = happyReduce_6
action_86 (33) = happyReduce_6
action_86 (34) = happyReduce_6
action_86 (35) = happyReduce_6
action_86 (42) = happyShift action_16
action_86 (60) = happyReduce_6
action_86 (4) = happyGoto action_56
action_86 _ = happyReduce_12

action_87 (15) = happyReduce_4
action_87 (16) = happyShift action_7
action_87 (20) = happyReduce_4
action_87 (26) = happyReduce_4
action_87 (33) = happyReduce_4
action_87 (34) = happyReduce_4
action_87 (35) = happyReduce_4
action_87 (42) = happyShift action_16
action_87 (60) = happyReduce_4
action_87 (4) = happyGoto action_56
action_87 _ = happyReduce_12

action_88 (11) = happyFail []
action_88 (12) = happyFail []
action_88 (13) = happyFail []
action_88 (16) = happyShift action_7
action_88 (21) = happyShift action_57
action_88 (22) = happyShift action_58
action_88 (25) = happyFail []
action_88 (30) = happyFail []
action_88 (31) = happyShift action_59
action_88 (37) = happyShift action_60
action_88 (38) = happyShift action_61
action_88 (39) = happyShift action_62
action_88 (40) = happyShift action_63
action_88 (42) = happyShift action_16
action_88 (45) = happyShift action_64
action_88 (4) = happyGoto action_56
action_88 _ = happyReduce_16

action_89 (6) = happyShift action_93
action_89 (7) = happyShift action_94
action_89 (8) = happyShift action_95
action_89 (9) = happyShift action_96
action_89 (10) = happyShift action_97
action_89 (5) = happyGoto action_99
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (11) = happyShift action_4
action_90 (12) = happyShift action_5
action_90 (13) = happyShift action_6
action_90 (14) = happyShift action_2
action_90 (16) = happyShift action_7
action_90 (17) = happyShift action_8
action_90 (19) = happyShift action_9
action_90 (21) = happyShift action_57
action_90 (22) = happyShift action_58
action_90 (25) = happyShift action_10
action_90 (30) = happyShift action_11
action_90 (31) = happyShift action_59
action_90 (32) = happyShift action_12
action_90 (33) = happyShift action_98
action_90 (36) = happyShift action_13
action_90 (37) = happyShift action_60
action_90 (38) = happyShift action_61
action_90 (39) = happyShift action_62
action_90 (40) = happyShift action_63
action_90 (41) = happyShift action_15
action_90 (42) = happyShift action_16
action_90 (44) = happyShift action_17
action_90 (45) = happyShift action_64
action_90 (46) = happyShift action_18
action_90 (47) = happyShift action_19
action_90 (48) = happyShift action_20
action_90 (49) = happyShift action_21
action_90 (50) = happyShift action_22
action_90 (51) = happyShift action_23
action_90 (52) = happyShift action_24
action_90 (53) = happyShift action_25
action_90 (54) = happyShift action_26
action_90 (55) = happyShift action_27
action_90 (56) = happyShift action_28
action_90 (57) = happyShift action_29
action_90 (58) = happyShift action_30
action_90 (59) = happyShift action_31
action_90 (4) = happyGoto action_56
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (6) = happyShift action_93
action_91 (7) = happyShift action_94
action_91 (8) = happyShift action_95
action_91 (9) = happyShift action_96
action_91 (10) = happyShift action_97
action_91 (5) = happyGoto action_92
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (26) = happyShift action_103
action_92 (43) = happyShift action_101
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_40

action_94 _ = happyReduce_41

action_95 _ = happyReduce_43

action_96 _ = happyReduce_44

action_97 _ = happyReduce_45

action_98 (11) = happyShift action_4
action_98 (12) = happyShift action_5
action_98 (13) = happyShift action_6
action_98 (14) = happyShift action_2
action_98 (16) = happyShift action_7
action_98 (17) = happyShift action_8
action_98 (19) = happyShift action_9
action_98 (25) = happyShift action_10
action_98 (30) = happyShift action_11
action_98 (32) = happyShift action_12
action_98 (36) = happyShift action_13
action_98 (39) = happyShift action_14
action_98 (41) = happyShift action_15
action_98 (42) = happyShift action_16
action_98 (44) = happyShift action_17
action_98 (46) = happyShift action_18
action_98 (47) = happyShift action_19
action_98 (48) = happyShift action_20
action_98 (49) = happyShift action_21
action_98 (50) = happyShift action_22
action_98 (51) = happyShift action_23
action_98 (52) = happyShift action_24
action_98 (53) = happyShift action_25
action_98 (54) = happyShift action_26
action_98 (55) = happyShift action_27
action_98 (56) = happyShift action_28
action_98 (57) = happyShift action_29
action_98 (58) = happyShift action_30
action_98 (59) = happyShift action_31
action_98 (4) = happyGoto action_102
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (26) = happyShift action_100
action_99 (43) = happyShift action_101
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (11) = happyShift action_4
action_100 (12) = happyShift action_5
action_100 (13) = happyShift action_6
action_100 (14) = happyShift action_2
action_100 (16) = happyShift action_7
action_100 (17) = happyShift action_8
action_100 (19) = happyShift action_9
action_100 (25) = happyShift action_10
action_100 (30) = happyShift action_11
action_100 (32) = happyShift action_12
action_100 (36) = happyShift action_13
action_100 (39) = happyShift action_14
action_100 (41) = happyShift action_15
action_100 (42) = happyShift action_16
action_100 (44) = happyShift action_17
action_100 (46) = happyShift action_18
action_100 (47) = happyShift action_19
action_100 (48) = happyShift action_20
action_100 (49) = happyShift action_21
action_100 (50) = happyShift action_22
action_100 (51) = happyShift action_23
action_100 (52) = happyShift action_24
action_100 (53) = happyShift action_25
action_100 (54) = happyShift action_26
action_100 (55) = happyShift action_27
action_100 (56) = happyShift action_28
action_100 (57) = happyShift action_29
action_100 (58) = happyShift action_30
action_100 (59) = happyShift action_31
action_100 (4) = happyGoto action_107
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (6) = happyShift action_93
action_101 (7) = happyShift action_94
action_101 (8) = happyShift action_95
action_101 (9) = happyShift action_96
action_101 (10) = happyShift action_97
action_101 (5) = happyGoto action_106
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (11) = happyShift action_4
action_102 (12) = happyShift action_5
action_102 (13) = happyShift action_6
action_102 (14) = happyShift action_2
action_102 (16) = happyShift action_7
action_102 (17) = happyShift action_8
action_102 (19) = happyShift action_9
action_102 (21) = happyShift action_57
action_102 (22) = happyShift action_58
action_102 (25) = happyShift action_10
action_102 (30) = happyShift action_11
action_102 (31) = happyShift action_59
action_102 (32) = happyShift action_12
action_102 (35) = happyShift action_105
action_102 (36) = happyShift action_13
action_102 (37) = happyShift action_60
action_102 (38) = happyShift action_61
action_102 (39) = happyShift action_62
action_102 (40) = happyShift action_63
action_102 (41) = happyShift action_15
action_102 (42) = happyShift action_16
action_102 (44) = happyShift action_17
action_102 (45) = happyShift action_64
action_102 (46) = happyShift action_18
action_102 (47) = happyShift action_19
action_102 (48) = happyShift action_20
action_102 (49) = happyShift action_21
action_102 (50) = happyShift action_22
action_102 (51) = happyShift action_23
action_102 (52) = happyShift action_24
action_102 (53) = happyShift action_25
action_102 (54) = happyShift action_26
action_102 (55) = happyShift action_27
action_102 (56) = happyShift action_28
action_102 (57) = happyShift action_29
action_102 (58) = happyShift action_30
action_102 (59) = happyShift action_31
action_102 (4) = happyGoto action_56
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (23) = happyShift action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (11) = happyShift action_4
action_104 (12) = happyShift action_5
action_104 (13) = happyShift action_6
action_104 (14) = happyShift action_2
action_104 (16) = happyShift action_7
action_104 (17) = happyShift action_8
action_104 (19) = happyShift action_9
action_104 (25) = happyShift action_10
action_104 (30) = happyShift action_11
action_104 (32) = happyShift action_12
action_104 (36) = happyShift action_13
action_104 (39) = happyShift action_14
action_104 (41) = happyShift action_15
action_104 (42) = happyShift action_16
action_104 (44) = happyShift action_17
action_104 (46) = happyShift action_18
action_104 (47) = happyShift action_19
action_104 (48) = happyShift action_20
action_104 (49) = happyShift action_21
action_104 (50) = happyShift action_22
action_104 (51) = happyShift action_23
action_104 (52) = happyShift action_24
action_104 (53) = happyShift action_25
action_104 (54) = happyShift action_26
action_104 (55) = happyShift action_27
action_104 (56) = happyShift action_28
action_104 (57) = happyShift action_29
action_104 (58) = happyShift action_30
action_104 (59) = happyShift action_31
action_104 (4) = happyGoto action_108
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_3

action_106 _ = happyReduce_42

action_107 (11) = happyFail []
action_107 (12) = happyFail []
action_107 (13) = happyFail []
action_107 (16) = happyShift action_7
action_107 (21) = happyShift action_57
action_107 (22) = happyShift action_58
action_107 (25) = happyFail []
action_107 (30) = happyFail []
action_107 (31) = happyShift action_59
action_107 (37) = happyShift action_60
action_107 (38) = happyShift action_61
action_107 (39) = happyShift action_62
action_107 (40) = happyShift action_63
action_107 (42) = happyShift action_16
action_107 (45) = happyShift action_64
action_107 (4) = happyGoto action_56
action_107 _ = happyReduce_13

action_108 (11) = happyShift action_4
action_108 (12) = happyShift action_5
action_108 (13) = happyShift action_6
action_108 (14) = happyShift action_2
action_108 (16) = happyShift action_7
action_108 (17) = happyShift action_8
action_108 (19) = happyShift action_9
action_108 (20) = happyShift action_109
action_108 (21) = happyShift action_57
action_108 (22) = happyShift action_58
action_108 (25) = happyShift action_10
action_108 (30) = happyShift action_11
action_108 (31) = happyShift action_59
action_108 (32) = happyShift action_12
action_108 (36) = happyShift action_13
action_108 (37) = happyShift action_60
action_108 (38) = happyShift action_61
action_108 (39) = happyShift action_62
action_108 (40) = happyShift action_63
action_108 (41) = happyShift action_15
action_108 (42) = happyShift action_16
action_108 (44) = happyShift action_17
action_108 (45) = happyShift action_64
action_108 (46) = happyShift action_18
action_108 (47) = happyShift action_19
action_108 (48) = happyShift action_20
action_108 (49) = happyShift action_21
action_108 (50) = happyShift action_22
action_108 (51) = happyShift action_23
action_108 (52) = happyShift action_24
action_108 (53) = happyShift action_25
action_108 (54) = happyShift action_26
action_108 (55) = happyShift action_27
action_108 (56) = happyShift action_28
action_108 (57) = happyShift action_29
action_108 (58) = happyShift action_30
action_108 (59) = happyShift action_31
action_108 (4) = happyGoto action_56
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (11) = happyShift action_4
action_109 (12) = happyShift action_5
action_109 (13) = happyShift action_6
action_109 (14) = happyShift action_2
action_109 (16) = happyShift action_7
action_109 (17) = happyShift action_8
action_109 (19) = happyShift action_9
action_109 (25) = happyShift action_10
action_109 (30) = happyShift action_11
action_109 (32) = happyShift action_12
action_109 (36) = happyShift action_13
action_109 (39) = happyShift action_14
action_109 (41) = happyShift action_15
action_109 (42) = happyShift action_16
action_109 (44) = happyShift action_17
action_109 (46) = happyShift action_18
action_109 (47) = happyShift action_19
action_109 (48) = happyShift action_20
action_109 (49) = happyShift action_21
action_109 (50) = happyShift action_22
action_109 (51) = happyShift action_23
action_109 (52) = happyShift action_24
action_109 (53) = happyShift action_25
action_109 (54) = happyShift action_26
action_109 (55) = happyShift action_27
action_109 (56) = happyShift action_28
action_109 (57) = happyShift action_29
action_109 (58) = happyShift action_30
action_109 (59) = happyShift action_31
action_109 (4) = happyGoto action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (11) = happyShift action_4
action_110 (12) = happyShift action_5
action_110 (13) = happyShift action_6
action_110 (14) = happyShift action_2
action_110 (16) = happyShift action_7
action_110 (17) = happyShift action_8
action_110 (19) = happyShift action_9
action_110 (21) = happyShift action_57
action_110 (22) = happyShift action_58
action_110 (25) = happyShift action_10
action_110 (30) = happyShift action_11
action_110 (31) = happyShift action_59
action_110 (32) = happyShift action_12
action_110 (36) = happyShift action_13
action_110 (37) = happyShift action_60
action_110 (38) = happyShift action_61
action_110 (39) = happyShift action_62
action_110 (40) = happyShift action_63
action_110 (41) = happyShift action_15
action_110 (42) = happyShift action_16
action_110 (44) = happyShift action_17
action_110 (45) = happyShift action_64
action_110 (46) = happyShift action_18
action_110 (47) = happyShift action_19
action_110 (48) = happyShift action_20
action_110 (49) = happyShift action_21
action_110 (50) = happyShift action_22
action_110 (51) = happyShift action_23
action_110 (52) = happyShift action_24
action_110 (53) = happyShift action_25
action_110 (54) = happyShift action_26
action_110 (55) = happyShift action_27
action_110 (56) = happyShift action_28
action_110 (57) = happyShift action_29
action_110 (58) = happyShift action_30
action_110 (59) = happyShift action_31
action_110 (4) = happyGoto action_56
action_110 _ = happyReduce_5

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmBody happy_var_2
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmMap happy_var_2 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 7 4 happyReduction_3
happyReduction_3 (_ `HappyStk`
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

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmWhile happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happyReduce 10 4 happyReduction_5
happyReduction_5 ((HappyAbsSyn4  happy_var_10) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmLet happy_var_3 happy_var_5 happy_var_8 happy_var_10
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmZipLines happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmListsArith happy_var_2 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLength happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLine happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmPrint happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmApp happy_var_1 happy_var_2
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_7) `HappyStk`
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

happyReduce_14 = happySpecReduce_2  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReverse happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmReverseLists happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_3)) `HappyStk`
	(HappyTerminal (TokenInt _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TmPush happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmHead happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmLast happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmTake happy_var_2 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSumLists happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmTakeRepeat happy_var_2 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmFibSequence happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSplitAt happy_var_2 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  4 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn4
		 (TmGetStream
	)

happyReduce_25 = happySpecReduce_2  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmDuplicate happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSum happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMerge happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  4 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  4 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  4 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  4 happyReduction_33
happyReduction_33 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  4 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  4 happyReduction_35
happyReduction_35 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_1  4 happyReduction_36
happyReduction_36 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  4 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_38 = happySpecReduce_1  4 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_39 = happySpecReduce_3  4 happyReduction_39
happyReduction_39 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  5 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_41 = happySpecReduce_1  5 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_42 = happySpecReduce_3  5 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn5
		 (TyInts
	)

happyReduce_44 = happySpecReduce_1  5 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn5
		 (TyLine
	)

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn5
		 (TyLam
	)

happyNewToken action sts stk [] =
	action 60 60 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenTypeBool _ -> cont 6;
	TokenTypeInt _ -> cont 7;
	TokenTypeInts _ -> cont 8;
	TokenTypeLine _ -> cont 9;
	TokenTypeLam _ -> cont 10;
	TokenInt _ happy_dollar_dollar -> cont 11;
	TokenTrue _ -> cont 12;
	TokenFalse _ -> cont 13;
	TokenBegin _ -> cont 14;
	TokenEnd _ -> cont 15;
	TokenGetStream _ -> cont 16;
	TokenPrint _ -> cont 17;
	TokenEOL _ -> cont 18;
	TokenLet _ -> cont 19;
	TokenIn _ -> cont 20;
	TokenLT _ -> cont 21;
	TokenGT _ -> cont 22;
	TokenEq _ -> cont 23;
	TokenCol _ -> cont 24;
	TokenLParen _ -> cont 25;
	TokenRParen _ -> cont 26;
	TokenLBrckt _ -> cont 27;
	TokenRBrckt _ -> cont 28;
	TokenComma _ -> cont 29;
	TokenVar _ happy_dollar_dollar -> cont 30;
	TokenSemiCol _ -> cont 31;
	TokenIf _ -> cont 32;
	TokenElse _ -> cont 33;
	TokenThen _ -> cont 34;
	TokenFi _ -> cont 35;
	TokenReverse _ -> cont 36;
	TokenAdd _ -> cont 37;
	TokenMult _ -> cont 38;
	TokenSub _ -> cont 39;
	TokenDiv _ -> cont 40;
	TokenLength _ -> cont 41;
	TokenLambda _ -> cont 42;
	TokenArr _ -> cont 43;
	TokenPush _ -> cont 44;
	TokenMerge _ -> cont 45;
	TokenSplitAt _ -> cont 46;
	TokenDuplicate _ -> cont 47;
	TokenHead _ -> cont 48;
	TokenLast _ -> cont 49;
	TokenTake _ -> cont 50;
	TokenSum _ -> cont 51;
	TokenMap _ -> cont 52;
	TokenTakeRepeat _ -> cont 53;
	TokenListsArith _ -> cont 54;
	TokenSumLists _ -> cont 55;
	TokenFibSequence _ -> cont 56;
	TokenZipLines _ -> cont 57;
	TokenReverseLists _ -> cont 58;
	TokenWhile _ -> cont 59;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 60 tk tks = happyError' (tks, explist)
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

type TyEnvironment = [ (String, Expr) ]
type Environment = [ (String, Expr) ]


data DataType =TyBool | TyInt | TyFun DataType DataType | TyInts | TyLine | TyLam
              deriving(Show, Eq)


data Expr =  TmInts Int Expr | TmGt Expr Expr | TmLt Expr Expr | TmAdd Expr Expr | TmSub Expr Expr | TmMult Expr Expr | TmDiv Expr Expr              
            | TmGetStream | TmReverse Expr | TmLength Expr | TmInt Int | TmTrue | TmFalse | TmPush Int Int Expr | TmHead Expr | TmLast Expr 
            | TmSum Expr | TmTake Expr Expr| TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr 
            | TmTakeRepeat Expr Expr | TmSumLists Expr | TmFibSequence Expr |TmLine Expr Expr | TmLambda String DataType Expr |  TmApp Expr Expr 
            | Cl String DataType Expr Environment | TmBody Expr  | TmIf Expr Expr Expr | TmWhile Expr Expr | TmLet String DataType Expr Expr | TmZipLines Expr Expr 
            | TmMap Expr Expr | TmListsArith Expr Expr | TmReverseLists Expr | Negate Expr 
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

