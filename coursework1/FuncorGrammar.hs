{-# OPTIONS_GHC -w #-}
module FuncorGrammar where
import FuncorTokens
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
 action_110,
 action_111,
 action_112,
 action_113,
 action_114,
 action_115 :: () => Int -> ({-HappyReduction (HappyIdentity) = -}
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
 happyReduce_45,
 happyReduce_46,
 happyReduce_47 :: () => ({-HappyReduction (HappyIdentity) = -}
	   Int 
	-> (LexerToken)
	-> HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)
	-> [HappyState (LexerToken) (HappyStk HappyAbsSyn -> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)] 
	-> HappyStk HappyAbsSyn 
	-> [(LexerToken)] -> (HappyIdentity) HappyAbsSyn)

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,1200) ([48128,16907,54929,8191,2048,0,0,0,48064,5152,64873,511,44784,50953,65503,127,0,32,0,0,0,0,0,0,0,0,0,4096,0,0,0,48128,16907,54929,8191,61184,20610,62884,2047,0,32,0,0,12016,17672,65370,127,0,0,0,0,33519,42064,65525,49159,8379,26900,65533,61441,2094,23109,32767,48128,16907,54929,8191,0,128,0,0,64,0,0,0,12016,17672,65370,127,3004,37186,65494,31,33519,42064,65525,49159,8379,26900,65533,61441,2094,23109,32767,48128,16907,54929,8191,61184,20610,62884,2047,48064,5152,64873,511,12016,17672,65370,127,3004,37186,65494,31,33519,42064,65525,49159,8379,26900,65533,61441,2094,23109,32767,48128,16907,54929,8191,61184,20610,62884,2047,48064,7206,65407,511,41072,50953,975,64,27580,61890,65527,31,0,0,0,49152,9857,16156,32783,28673,2464,53191,25747,48128,49771,63473,8191,61184,28826,65020,2047,48064,7206,65407,511,41072,50953,37839,102,27580,61890,65527,31,39431,64624,27580,49158,9857,16156,39663,28673,2464,51143,2,48128,49771,63473,8191,256,0,0,0,0,1024,0,0,41072,50953,719,64,26652,61890,243,16,39431,30832,12,49152,9915,32604,65535,61441,6574,57287,32767,0,16384,0,0,34560,28826,64764,1919,0,0,0,0,0,0,0,0,3004,37186,65494,31,0,0,0,49152,8379,26900,65533,61441,2094,23109,32767,48128,16907,54929,8191,61184,20610,62884,2047,48064,5152,64873,511,12016,17672,65370,127,3004,37186,65494,31,33519,42064,65525,49159,9919,32540,65535,1,0,0,0,0,32864,480,0,0,8216,0,0,0,2054,20,0,32768,513,0,0,24576,16512,1,0,0,32,0,0,0,8,0,0,0,2,0,0,0,0,0,0,64,0,0,0,0,0,0,12016,17672,65370,127,0,1,0,0,33519,42064,65525,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6144,30752,8,15872,0,0,0,61440,2478,57295,32767,992,0,0,0,0,256,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,61440,2094,23109,32767,0,1024,2048,0,61184,20610,62884,2047,62,0,0,0,44784,59145,65503,127,32768,0,0,0,33519,42064,65525,7,0,0,0,0,0,0,0,0,32864,8672,0,61184,28830,65020,2047,48064,5152,64873,511,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","DataType","Bool","Int","Ints","Line","Lam","int","true","false","begin","end","getSequence","getDfSequence","print","'\\n'","let","in","'<'","'>'","'='","':'","'('","')'","'{'","'}'","','","var","';'","if","else","then","fi","reverse","'+'","'*'","'-'","'/'","length","lam","arr","push","'++'","splitAt","duplicate","head","last","take","sum","map","takeRepeat","listsArith","sumLists","fibSequence","Sequence","zipLines","reverseLists","while","%eof"]
        bit_start = st * 62
        bit_end = (st + 1) * 62
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..61]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_2
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (26) = happyShift action_11
action_0 (31) = happyShift action_12
action_0 (33) = happyShift action_13
action_0 (37) = happyShift action_14
action_0 (40) = happyShift action_15
action_0 (42) = happyShift action_16
action_0 (43) = happyShift action_17
action_0 (45) = happyShift action_18
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
action_0 (60) = happyShift action_32
action_0 (61) = happyShift action_33
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
action_2 (18) = happyShift action_9
action_2 (20) = happyShift action_10
action_2 (26) = happyShift action_11
action_2 (31) = happyShift action_12
action_2 (33) = happyShift action_13
action_2 (37) = happyShift action_14
action_2 (40) = happyShift action_15
action_2 (42) = happyShift action_16
action_2 (43) = happyShift action_17
action_2 (45) = happyShift action_18
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
action_2 (60) = happyShift action_32
action_2 (61) = happyShift action_33
action_2 (4) = happyGoto action_70
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_4
action_3 (12) = happyShift action_5
action_3 (13) = happyShift action_6
action_3 (14) = happyShift action_2
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (18) = happyShift action_9
action_3 (20) = happyShift action_10
action_3 (22) = happyShift action_62
action_3 (23) = happyShift action_63
action_3 (26) = happyShift action_11
action_3 (31) = happyShift action_12
action_3 (32) = happyShift action_64
action_3 (33) = happyShift action_13
action_3 (37) = happyShift action_14
action_3 (38) = happyShift action_65
action_3 (39) = happyShift action_66
action_3 (40) = happyShift action_67
action_3 (41) = happyShift action_68
action_3 (42) = happyShift action_16
action_3 (43) = happyShift action_17
action_3 (45) = happyShift action_18
action_3 (46) = happyShift action_69
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
action_3 (60) = happyShift action_32
action_3 (61) = happyShift action_33
action_3 (62) = happyAccept
action_3 (4) = happyGoto action_61
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (30) = happyShift action_60
action_4 _ = happyReduce_37

action_5 _ = happyReduce_39

action_6 _ = happyReduce_40

action_7 (11) = happyShift action_59
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_2
action_8 (16) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (18) = happyShift action_9
action_8 (20) = happyShift action_10
action_8 (26) = happyShift action_11
action_8 (31) = happyShift action_12
action_8 (33) = happyShift action_13
action_8 (37) = happyShift action_14
action_8 (40) = happyShift action_15
action_8 (42) = happyShift action_16
action_8 (43) = happyShift action_17
action_8 (45) = happyShift action_18
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
action_8 (60) = happyShift action_32
action_8 (61) = happyShift action_33
action_8 (4) = happyGoto action_58
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_2
action_9 (16) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (18) = happyShift action_9
action_9 (20) = happyShift action_10
action_9 (26) = happyShift action_11
action_9 (31) = happyShift action_12
action_9 (33) = happyShift action_13
action_9 (37) = happyShift action_14
action_9 (40) = happyShift action_15
action_9 (42) = happyShift action_16
action_9 (43) = happyShift action_17
action_9 (45) = happyShift action_18
action_9 (47) = happyShift action_19
action_9 (48) = happyShift action_20
action_9 (49) = happyShift action_21
action_9 (50) = happyShift action_22
action_9 (51) = happyShift action_23
action_9 (52) = happyShift action_24
action_9 (53) = happyShift action_25
action_9 (54) = happyShift action_26
action_9 (55) = happyShift action_27
action_9 (56) = happyShift action_28
action_9 (57) = happyShift action_29
action_9 (58) = happyShift action_30
action_9 (59) = happyShift action_31
action_9 (60) = happyShift action_32
action_9 (61) = happyShift action_33
action_9 (4) = happyGoto action_57
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (26) = happyShift action_56
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (11) = happyShift action_4
action_11 (12) = happyShift action_5
action_11 (13) = happyShift action_6
action_11 (14) = happyShift action_2
action_11 (16) = happyShift action_7
action_11 (17) = happyShift action_8
action_11 (18) = happyShift action_9
action_11 (20) = happyShift action_10
action_11 (26) = happyShift action_11
action_11 (31) = happyShift action_12
action_11 (33) = happyShift action_13
action_11 (37) = happyShift action_14
action_11 (40) = happyShift action_15
action_11 (42) = happyShift action_16
action_11 (43) = happyShift action_17
action_11 (45) = happyShift action_18
action_11 (47) = happyShift action_19
action_11 (48) = happyShift action_20
action_11 (49) = happyShift action_21
action_11 (50) = happyShift action_22
action_11 (51) = happyShift action_23
action_11 (52) = happyShift action_24
action_11 (53) = happyShift action_25
action_11 (54) = happyShift action_26
action_11 (55) = happyShift action_27
action_11 (56) = happyShift action_28
action_11 (57) = happyShift action_29
action_11 (58) = happyShift action_30
action_11 (59) = happyShift action_31
action_11 (60) = happyShift action_32
action_11 (61) = happyShift action_33
action_11 (4) = happyGoto action_55
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_38

action_13 (11) = happyShift action_4
action_13 (12) = happyShift action_5
action_13 (13) = happyShift action_6
action_13 (14) = happyShift action_2
action_13 (16) = happyShift action_7
action_13 (17) = happyShift action_8
action_13 (18) = happyShift action_9
action_13 (20) = happyShift action_10
action_13 (26) = happyShift action_11
action_13 (31) = happyShift action_12
action_13 (33) = happyShift action_13
action_13 (37) = happyShift action_14
action_13 (40) = happyShift action_15
action_13 (42) = happyShift action_16
action_13 (43) = happyShift action_17
action_13 (45) = happyShift action_18
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
action_13 (60) = happyShift action_32
action_13 (61) = happyShift action_33
action_13 (4) = happyGoto action_54
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (14) = happyShift action_2
action_14 (16) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (18) = happyShift action_9
action_14 (20) = happyShift action_10
action_14 (26) = happyShift action_11
action_14 (31) = happyShift action_12
action_14 (33) = happyShift action_13
action_14 (37) = happyShift action_14
action_14 (40) = happyShift action_15
action_14 (42) = happyShift action_16
action_14 (43) = happyShift action_17
action_14 (45) = happyShift action_18
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
action_14 (60) = happyShift action_32
action_14 (61) = happyShift action_33
action_14 (4) = happyGoto action_53
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (13) = happyShift action_6
action_15 (14) = happyShift action_2
action_15 (16) = happyShift action_7
action_15 (17) = happyShift action_8
action_15 (18) = happyShift action_9
action_15 (20) = happyShift action_10
action_15 (26) = happyShift action_11
action_15 (31) = happyShift action_12
action_15 (33) = happyShift action_13
action_15 (37) = happyShift action_14
action_15 (40) = happyShift action_15
action_15 (42) = happyShift action_16
action_15 (43) = happyShift action_17
action_15 (45) = happyShift action_18
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
action_15 (60) = happyShift action_32
action_15 (61) = happyShift action_33
action_15 (4) = happyGoto action_52
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_2
action_16 (16) = happyShift action_7
action_16 (17) = happyShift action_8
action_16 (18) = happyShift action_9
action_16 (20) = happyShift action_10
action_16 (26) = happyShift action_11
action_16 (31) = happyShift action_12
action_16 (33) = happyShift action_13
action_16 (37) = happyShift action_14
action_16 (40) = happyShift action_15
action_16 (42) = happyShift action_16
action_16 (43) = happyShift action_17
action_16 (45) = happyShift action_18
action_16 (47) = happyShift action_19
action_16 (48) = happyShift action_20
action_16 (49) = happyShift action_21
action_16 (50) = happyShift action_22
action_16 (51) = happyShift action_23
action_16 (52) = happyShift action_24
action_16 (53) = happyShift action_25
action_16 (54) = happyShift action_26
action_16 (55) = happyShift action_27
action_16 (56) = happyShift action_28
action_16 (57) = happyShift action_29
action_16 (58) = happyShift action_30
action_16 (59) = happyShift action_31
action_16 (60) = happyShift action_32
action_16 (61) = happyShift action_33
action_16 (4) = happyGoto action_51
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (26) = happyShift action_50
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_49
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (13) = happyShift action_6
action_19 (14) = happyShift action_2
action_19 (16) = happyShift action_7
action_19 (17) = happyShift action_8
action_19 (18) = happyShift action_9
action_19 (20) = happyShift action_10
action_19 (26) = happyShift action_11
action_19 (31) = happyShift action_12
action_19 (33) = happyShift action_13
action_19 (37) = happyShift action_14
action_19 (40) = happyShift action_15
action_19 (42) = happyShift action_16
action_19 (43) = happyShift action_17
action_19 (45) = happyShift action_18
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
action_19 (60) = happyShift action_32
action_19 (61) = happyShift action_33
action_19 (4) = happyGoto action_48
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (14) = happyShift action_2
action_20 (16) = happyShift action_7
action_20 (17) = happyShift action_8
action_20 (18) = happyShift action_9
action_20 (20) = happyShift action_10
action_20 (26) = happyShift action_11
action_20 (31) = happyShift action_12
action_20 (33) = happyShift action_13
action_20 (37) = happyShift action_14
action_20 (40) = happyShift action_15
action_20 (42) = happyShift action_16
action_20 (43) = happyShift action_17
action_20 (45) = happyShift action_18
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
action_20 (60) = happyShift action_32
action_20 (61) = happyShift action_33
action_20 (4) = happyGoto action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (14) = happyShift action_2
action_21 (16) = happyShift action_7
action_21 (17) = happyShift action_8
action_21 (18) = happyShift action_9
action_21 (20) = happyShift action_10
action_21 (26) = happyShift action_11
action_21 (31) = happyShift action_12
action_21 (33) = happyShift action_13
action_21 (37) = happyShift action_14
action_21 (40) = happyShift action_15
action_21 (42) = happyShift action_16
action_21 (43) = happyShift action_17
action_21 (45) = happyShift action_18
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
action_21 (60) = happyShift action_32
action_21 (61) = happyShift action_33
action_21 (4) = happyGoto action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (14) = happyShift action_2
action_22 (16) = happyShift action_7
action_22 (17) = happyShift action_8
action_22 (18) = happyShift action_9
action_22 (20) = happyShift action_10
action_22 (26) = happyShift action_11
action_22 (31) = happyShift action_12
action_22 (33) = happyShift action_13
action_22 (37) = happyShift action_14
action_22 (40) = happyShift action_15
action_22 (42) = happyShift action_16
action_22 (43) = happyShift action_17
action_22 (45) = happyShift action_18
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
action_22 (60) = happyShift action_32
action_22 (61) = happyShift action_33
action_22 (4) = happyGoto action_45
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_2
action_23 (16) = happyShift action_7
action_23 (17) = happyShift action_8
action_23 (18) = happyShift action_9
action_23 (20) = happyShift action_10
action_23 (26) = happyShift action_11
action_23 (31) = happyShift action_12
action_23 (33) = happyShift action_13
action_23 (37) = happyShift action_14
action_23 (40) = happyShift action_15
action_23 (42) = happyShift action_16
action_23 (43) = happyShift action_17
action_23 (45) = happyShift action_18
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
action_23 (60) = happyShift action_32
action_23 (61) = happyShift action_33
action_23 (4) = happyGoto action_44
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (14) = happyShift action_2
action_24 (16) = happyShift action_7
action_24 (17) = happyShift action_8
action_24 (18) = happyShift action_9
action_24 (20) = happyShift action_10
action_24 (26) = happyShift action_11
action_24 (31) = happyShift action_12
action_24 (33) = happyShift action_13
action_24 (37) = happyShift action_14
action_24 (40) = happyShift action_15
action_24 (42) = happyShift action_16
action_24 (43) = happyShift action_17
action_24 (45) = happyShift action_18
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
action_24 (60) = happyShift action_32
action_24 (61) = happyShift action_33
action_24 (4) = happyGoto action_43
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (14) = happyShift action_2
action_25 (16) = happyShift action_7
action_25 (17) = happyShift action_8
action_25 (18) = happyShift action_9
action_25 (20) = happyShift action_10
action_25 (26) = happyShift action_11
action_25 (31) = happyShift action_12
action_25 (33) = happyShift action_13
action_25 (37) = happyShift action_14
action_25 (40) = happyShift action_15
action_25 (42) = happyShift action_16
action_25 (43) = happyShift action_17
action_25 (45) = happyShift action_18
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
action_25 (60) = happyShift action_32
action_25 (61) = happyShift action_33
action_25 (4) = happyGoto action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (14) = happyShift action_2
action_26 (16) = happyShift action_7
action_26 (17) = happyShift action_8
action_26 (18) = happyShift action_9
action_26 (20) = happyShift action_10
action_26 (26) = happyShift action_11
action_26 (31) = happyShift action_12
action_26 (33) = happyShift action_13
action_26 (37) = happyShift action_14
action_26 (40) = happyShift action_15
action_26 (42) = happyShift action_16
action_26 (43) = happyShift action_17
action_26 (45) = happyShift action_18
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
action_26 (60) = happyShift action_32
action_26 (61) = happyShift action_33
action_26 (4) = happyGoto action_41
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (11) = happyShift action_4
action_27 (12) = happyShift action_5
action_27 (13) = happyShift action_6
action_27 (14) = happyShift action_2
action_27 (16) = happyShift action_7
action_27 (17) = happyShift action_8
action_27 (18) = happyShift action_9
action_27 (20) = happyShift action_10
action_27 (26) = happyShift action_11
action_27 (31) = happyShift action_12
action_27 (33) = happyShift action_13
action_27 (37) = happyShift action_14
action_27 (40) = happyShift action_15
action_27 (42) = happyShift action_16
action_27 (43) = happyShift action_17
action_27 (45) = happyShift action_18
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
action_27 (60) = happyShift action_32
action_27 (61) = happyShift action_33
action_27 (4) = happyGoto action_40
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (11) = happyShift action_4
action_28 (12) = happyShift action_5
action_28 (13) = happyShift action_6
action_28 (14) = happyShift action_2
action_28 (16) = happyShift action_7
action_28 (17) = happyShift action_8
action_28 (18) = happyShift action_9
action_28 (20) = happyShift action_10
action_28 (26) = happyShift action_11
action_28 (31) = happyShift action_12
action_28 (33) = happyShift action_13
action_28 (37) = happyShift action_14
action_28 (40) = happyShift action_15
action_28 (42) = happyShift action_16
action_28 (43) = happyShift action_17
action_28 (45) = happyShift action_18
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
action_28 (60) = happyShift action_32
action_28 (61) = happyShift action_33
action_28 (4) = happyGoto action_39
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_4
action_29 (12) = happyShift action_5
action_29 (13) = happyShift action_6
action_29 (14) = happyShift action_2
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (20) = happyShift action_10
action_29 (26) = happyShift action_11
action_29 (31) = happyShift action_12
action_29 (33) = happyShift action_13
action_29 (37) = happyShift action_14
action_29 (40) = happyShift action_15
action_29 (42) = happyShift action_16
action_29 (43) = happyShift action_17
action_29 (45) = happyShift action_18
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
action_29 (60) = happyShift action_32
action_29 (61) = happyShift action_33
action_29 (4) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (11) = happyShift action_4
action_30 (12) = happyShift action_5
action_30 (13) = happyShift action_6
action_30 (14) = happyShift action_2
action_30 (16) = happyShift action_7
action_30 (17) = happyShift action_8
action_30 (18) = happyShift action_9
action_30 (20) = happyShift action_10
action_30 (26) = happyShift action_11
action_30 (31) = happyShift action_12
action_30 (33) = happyShift action_13
action_30 (37) = happyShift action_14
action_30 (40) = happyShift action_15
action_30 (42) = happyShift action_16
action_30 (43) = happyShift action_17
action_30 (45) = happyShift action_18
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
action_30 (60) = happyShift action_32
action_30 (61) = happyShift action_33
action_30 (4) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_4
action_31 (12) = happyShift action_5
action_31 (13) = happyShift action_6
action_31 (14) = happyShift action_2
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (18) = happyShift action_9
action_31 (20) = happyShift action_10
action_31 (26) = happyShift action_11
action_31 (31) = happyShift action_12
action_31 (33) = happyShift action_13
action_31 (37) = happyShift action_14
action_31 (40) = happyShift action_15
action_31 (42) = happyShift action_16
action_31 (43) = happyShift action_17
action_31 (45) = happyShift action_18
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
action_31 (60) = happyShift action_32
action_31 (61) = happyShift action_33
action_31 (4) = happyGoto action_36
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (14) = happyShift action_2
action_32 (16) = happyShift action_7
action_32 (17) = happyShift action_8
action_32 (18) = happyShift action_9
action_32 (20) = happyShift action_10
action_32 (26) = happyShift action_11
action_32 (31) = happyShift action_12
action_32 (33) = happyShift action_13
action_32 (37) = happyShift action_14
action_32 (40) = happyShift action_15
action_32 (42) = happyShift action_16
action_32 (43) = happyShift action_17
action_32 (45) = happyShift action_18
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
action_32 (60) = happyShift action_32
action_32 (61) = happyShift action_33
action_32 (4) = happyGoto action_35
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (14) = happyShift action_2
action_33 (16) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (18) = happyShift action_9
action_33 (20) = happyShift action_10
action_33 (26) = happyShift action_11
action_33 (31) = happyShift action_12
action_33 (33) = happyShift action_13
action_33 (37) = happyShift action_14
action_33 (40) = happyShift action_15
action_33 (42) = happyShift action_16
action_33 (43) = happyShift action_17
action_33 (45) = happyShift action_18
action_33 (47) = happyShift action_19
action_33 (48) = happyShift action_20
action_33 (49) = happyShift action_21
action_33 (50) = happyShift action_22
action_33 (51) = happyShift action_23
action_33 (52) = happyShift action_24
action_33 (53) = happyShift action_25
action_33 (54) = happyShift action_26
action_33 (55) = happyShift action_27
action_33 (56) = happyShift action_28
action_33 (57) = happyShift action_29
action_33 (58) = happyShift action_30
action_33 (59) = happyShift action_31
action_33 (60) = happyShift action_32
action_33 (61) = happyShift action_33
action_33 (4) = happyGoto action_34
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (14) = happyShift action_2
action_34 (16) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (18) = happyShift action_9
action_34 (20) = happyShift action_10
action_34 (22) = happyShift action_62
action_34 (23) = happyShift action_63
action_34 (26) = happyShift action_11
action_34 (31) = happyShift action_12
action_34 (32) = happyShift action_64
action_34 (33) = happyShift action_13
action_34 (37) = happyShift action_14
action_34 (38) = happyShift action_65
action_34 (39) = happyShift action_66
action_34 (40) = happyShift action_67
action_34 (41) = happyShift action_68
action_34 (42) = happyShift action_16
action_34 (43) = happyShift action_17
action_34 (45) = happyShift action_18
action_34 (46) = happyShift action_69
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
action_34 (60) = happyShift action_32
action_34 (61) = happyShift action_33
action_34 (4) = happyGoto action_92
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (17) = happyShift action_8
action_35 (20) = happyShift action_10
action_35 (22) = happyShift action_62
action_35 (23) = happyShift action_63
action_35 (26) = happyShift action_11
action_35 (31) = happyShift action_12
action_35 (32) = happyShift action_64
action_35 (33) = happyShift action_13
action_35 (37) = happyShift action_14
action_35 (38) = happyShift action_65
action_35 (39) = happyShift action_66
action_35 (40) = happyShift action_67
action_35 (41) = happyShift action_68
action_35 (42) = happyShift action_16
action_35 (43) = happyShift action_17
action_35 (45) = happyShift action_18
action_35 (46) = happyShift action_69
action_35 (47) = happyShift action_19
action_35 (48) = happyShift action_20
action_35 (58) = happyShift action_30
action_35 (61) = happyShift action_33
action_35 (4) = happyGoto action_61
action_35 _ = happyReduce_15

action_36 (11) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (13) = happyShift action_6
action_36 (14) = happyShift action_2
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (20) = happyShift action_10
action_36 (22) = happyShift action_62
action_36 (23) = happyShift action_63
action_36 (26) = happyShift action_11
action_36 (31) = happyShift action_12
action_36 (32) = happyShift action_64
action_36 (33) = happyShift action_13
action_36 (37) = happyShift action_14
action_36 (38) = happyShift action_65
action_36 (39) = happyShift action_66
action_36 (40) = happyShift action_67
action_36 (41) = happyShift action_68
action_36 (42) = happyShift action_16
action_36 (43) = happyShift action_17
action_36 (45) = happyShift action_18
action_36 (46) = happyShift action_69
action_36 (47) = happyShift action_19
action_36 (48) = happyShift action_20
action_36 (49) = happyShift action_21
action_36 (50) = happyShift action_22
action_36 (51) = happyShift action_23
action_36 (52) = happyShift action_24
action_36 (53) = happyShift action_25
action_36 (54) = happyShift action_26
action_36 (55) = happyShift action_27
action_36 (56) = happyShift action_28
action_36 (57) = happyShift action_29
action_36 (58) = happyShift action_30
action_36 (59) = happyShift action_31
action_36 (60) = happyShift action_32
action_36 (61) = happyShift action_33
action_36 (4) = happyGoto action_91
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (14) = happyShift action_2
action_37 (16) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (18) = happyShift action_9
action_37 (20) = happyShift action_10
action_37 (22) = happyShift action_62
action_37 (23) = happyShift action_63
action_37 (26) = happyShift action_11
action_37 (31) = happyShift action_12
action_37 (32) = happyShift action_64
action_37 (33) = happyShift action_13
action_37 (37) = happyShift action_14
action_37 (38) = happyShift action_65
action_37 (39) = happyShift action_66
action_37 (40) = happyShift action_67
action_37 (41) = happyShift action_68
action_37 (42) = happyShift action_16
action_37 (43) = happyShift action_17
action_37 (45) = happyShift action_18
action_37 (46) = happyShift action_69
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
action_37 (60) = happyShift action_32
action_37 (61) = happyShift action_33
action_37 (4) = happyGoto action_61
action_37 _ = happyReduce_23

action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (17) = happyShift action_8
action_38 (20) = happyShift action_10
action_38 (22) = happyShift action_62
action_38 (23) = happyShift action_63
action_38 (26) = happyShift action_11
action_38 (31) = happyShift action_12
action_38 (32) = happyShift action_64
action_38 (33) = happyShift action_13
action_38 (37) = happyShift action_14
action_38 (38) = happyShift action_65
action_38 (39) = happyShift action_66
action_38 (40) = happyShift action_67
action_38 (41) = happyShift action_68
action_38 (42) = happyShift action_16
action_38 (43) = happyShift action_17
action_38 (45) = happyShift action_18
action_38 (46) = happyShift action_69
action_38 (47) = happyShift action_19
action_38 (48) = happyShift action_20
action_38 (58) = happyShift action_30
action_38 (60) = happyShift action_32
action_38 (61) = happyShift action_33
action_38 (4) = happyGoto action_61
action_38 _ = happyReduce_22

action_39 (11) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (13) = happyShift action_6
action_39 (17) = happyShift action_8
action_39 (20) = happyShift action_10
action_39 (22) = happyShift action_62
action_39 (23) = happyShift action_63
action_39 (26) = happyShift action_11
action_39 (31) = happyShift action_12
action_39 (32) = happyShift action_64
action_39 (33) = happyShift action_13
action_39 (37) = happyShift action_14
action_39 (38) = happyShift action_65
action_39 (39) = happyShift action_66
action_39 (40) = happyShift action_67
action_39 (41) = happyShift action_68
action_39 (42) = happyShift action_16
action_39 (43) = happyShift action_17
action_39 (45) = happyShift action_18
action_39 (46) = happyShift action_69
action_39 (47) = happyShift action_19
action_39 (48) = happyShift action_20
action_39 (51) = happyShift action_23
action_39 (54) = happyShift action_26
action_39 (57) = happyShift action_29
action_39 (58) = happyShift action_30
action_39 (60) = happyShift action_32
action_39 (61) = happyShift action_33
action_39 (4) = happyGoto action_61
action_39 _ = happyReduce_20

action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (14) = happyShift action_2
action_40 (16) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (18) = happyShift action_9
action_40 (20) = happyShift action_10
action_40 (22) = happyShift action_62
action_40 (23) = happyShift action_63
action_40 (26) = happyShift action_11
action_40 (31) = happyShift action_12
action_40 (32) = happyShift action_64
action_40 (33) = happyShift action_13
action_40 (37) = happyShift action_14
action_40 (38) = happyShift action_65
action_40 (39) = happyShift action_66
action_40 (40) = happyShift action_67
action_40 (41) = happyShift action_68
action_40 (42) = happyShift action_16
action_40 (43) = happyShift action_17
action_40 (45) = happyShift action_18
action_40 (46) = happyShift action_69
action_40 (47) = happyShift action_19
action_40 (48) = happyShift action_20
action_40 (49) = happyShift action_21
action_40 (50) = happyShift action_22
action_40 (51) = happyShift action_23
action_40 (52) = happyShift action_24
action_40 (53) = happyShift action_25
action_40 (54) = happyShift action_26
action_40 (55) = happyShift action_27
action_40 (56) = happyShift action_28
action_40 (57) = happyShift action_29
action_40 (58) = happyShift action_30
action_40 (59) = happyShift action_31
action_40 (60) = happyShift action_32
action_40 (61) = happyShift action_33
action_40 (4) = happyGoto action_90
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (14) = happyShift action_2
action_41 (16) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (18) = happyShift action_9
action_41 (20) = happyShift action_10
action_41 (22) = happyShift action_62
action_41 (23) = happyShift action_63
action_41 (26) = happyShift action_11
action_41 (31) = happyShift action_12
action_41 (32) = happyShift action_64
action_41 (33) = happyShift action_13
action_41 (37) = happyShift action_14
action_41 (38) = happyShift action_65
action_41 (39) = happyShift action_66
action_41 (40) = happyShift action_67
action_41 (41) = happyShift action_68
action_41 (42) = happyShift action_16
action_41 (43) = happyShift action_17
action_41 (45) = happyShift action_18
action_41 (46) = happyShift action_69
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
action_41 (60) = happyShift action_32
action_41 (61) = happyShift action_33
action_41 (4) = happyGoto action_89
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (11) = happyShift action_4
action_42 (12) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (14) = happyShift action_2
action_42 (16) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (18) = happyShift action_9
action_42 (20) = happyShift action_10
action_42 (22) = happyShift action_62
action_42 (23) = happyShift action_63
action_42 (26) = happyShift action_11
action_42 (31) = happyShift action_12
action_42 (32) = happyShift action_64
action_42 (33) = happyShift action_13
action_42 (37) = happyShift action_14
action_42 (38) = happyShift action_65
action_42 (39) = happyShift action_66
action_42 (40) = happyShift action_67
action_42 (41) = happyShift action_68
action_42 (42) = happyShift action_16
action_42 (43) = happyShift action_17
action_42 (45) = happyShift action_18
action_42 (46) = happyShift action_69
action_42 (47) = happyShift action_19
action_42 (48) = happyShift action_20
action_42 (49) = happyShift action_21
action_42 (50) = happyShift action_22
action_42 (51) = happyShift action_23
action_42 (52) = happyShift action_24
action_42 (53) = happyShift action_25
action_42 (54) = happyShift action_26
action_42 (55) = happyShift action_27
action_42 (56) = happyShift action_28
action_42 (57) = happyShift action_29
action_42 (58) = happyShift action_30
action_42 (59) = happyShift action_31
action_42 (60) = happyShift action_32
action_42 (61) = happyShift action_33
action_42 (4) = happyGoto action_88
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (17) = happyShift action_8
action_43 (20) = happyShift action_10
action_43 (22) = happyShift action_62
action_43 (23) = happyShift action_63
action_43 (26) = happyShift action_11
action_43 (31) = happyShift action_12
action_43 (32) = happyShift action_64
action_43 (33) = happyShift action_13
action_43 (37) = happyShift action_14
action_43 (38) = happyShift action_65
action_43 (39) = happyShift action_66
action_43 (40) = happyShift action_67
action_43 (41) = happyShift action_68
action_43 (42) = happyShift action_16
action_43 (43) = happyShift action_17
action_43 (45) = happyShift action_18
action_43 (46) = happyShift action_69
action_43 (47) = happyShift action_19
action_43 (48) = happyShift action_20
action_43 (51) = happyShift action_23
action_43 (54) = happyShift action_26
action_43 (56) = happyShift action_28
action_43 (57) = happyShift action_29
action_43 (58) = happyShift action_30
action_43 (60) = happyShift action_32
action_43 (61) = happyShift action_33
action_43 (4) = happyGoto action_61
action_43 _ = happyReduce_28

action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_2
action_44 (16) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (18) = happyShift action_9
action_44 (20) = happyShift action_10
action_44 (22) = happyShift action_62
action_44 (23) = happyShift action_63
action_44 (26) = happyShift action_11
action_44 (31) = happyShift action_12
action_44 (32) = happyShift action_64
action_44 (33) = happyShift action_13
action_44 (37) = happyShift action_14
action_44 (38) = happyShift action_65
action_44 (39) = happyShift action_66
action_44 (40) = happyShift action_67
action_44 (41) = happyShift action_68
action_44 (42) = happyShift action_16
action_44 (43) = happyShift action_17
action_44 (45) = happyShift action_18
action_44 (46) = happyShift action_69
action_44 (47) = happyShift action_19
action_44 (48) = happyShift action_20
action_44 (49) = happyShift action_21
action_44 (50) = happyShift action_22
action_44 (51) = happyShift action_23
action_44 (52) = happyShift action_24
action_44 (53) = happyShift action_25
action_44 (54) = happyShift action_26
action_44 (55) = happyShift action_27
action_44 (56) = happyShift action_28
action_44 (57) = happyShift action_29
action_44 (58) = happyShift action_30
action_44 (59) = happyShift action_31
action_44 (60) = happyShift action_32
action_44 (61) = happyShift action_33
action_44 (4) = happyGoto action_87
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (11) = happyShift action_4
action_45 (12) = happyShift action_5
action_45 (13) = happyShift action_6
action_45 (17) = happyShift action_8
action_45 (20) = happyShift action_10
action_45 (22) = happyShift action_62
action_45 (23) = happyShift action_63
action_45 (26) = happyShift action_11
action_45 (31) = happyShift action_12
action_45 (32) = happyShift action_64
action_45 (33) = happyShift action_13
action_45 (37) = happyShift action_14
action_45 (38) = happyShift action_65
action_45 (39) = happyShift action_66
action_45 (40) = happyShift action_67
action_45 (41) = happyShift action_68
action_45 (42) = happyShift action_16
action_45 (43) = happyShift action_17
action_45 (45) = happyShift action_18
action_45 (46) = happyShift action_69
action_45 (47) = happyShift action_19
action_45 (48) = happyShift action_20
action_45 (50) = happyShift action_22
action_45 (51) = happyShift action_23
action_45 (52) = happyShift action_24
action_45 (54) = happyShift action_26
action_45 (56) = happyShift action_28
action_45 (57) = happyShift action_29
action_45 (58) = happyShift action_30
action_45 (60) = happyShift action_32
action_45 (61) = happyShift action_33
action_45 (4) = happyGoto action_61
action_45 _ = happyReduce_18

action_46 (11) = happyShift action_4
action_46 (12) = happyShift action_5
action_46 (13) = happyShift action_6
action_46 (17) = happyShift action_8
action_46 (20) = happyShift action_10
action_46 (22) = happyShift action_62
action_46 (23) = happyShift action_63
action_46 (26) = happyShift action_11
action_46 (31) = happyShift action_12
action_46 (32) = happyShift action_64
action_46 (33) = happyShift action_13
action_46 (37) = happyShift action_14
action_46 (38) = happyShift action_65
action_46 (39) = happyShift action_66
action_46 (40) = happyShift action_67
action_46 (41) = happyShift action_68
action_46 (42) = happyShift action_16
action_46 (43) = happyShift action_17
action_46 (45) = happyShift action_18
action_46 (46) = happyShift action_69
action_46 (47) = happyShift action_19
action_46 (48) = happyShift action_20
action_46 (50) = happyShift action_22
action_46 (51) = happyShift action_23
action_46 (52) = happyShift action_24
action_46 (54) = happyShift action_26
action_46 (56) = happyShift action_28
action_46 (57) = happyShift action_29
action_46 (58) = happyShift action_30
action_46 (60) = happyShift action_32
action_46 (61) = happyShift action_33
action_46 (4) = happyGoto action_61
action_46 _ = happyReduce_17

action_47 (11) = happyShift action_4
action_47 (12) = happyShift action_5
action_47 (13) = happyShift action_6
action_47 (17) = happyShift action_8
action_47 (20) = happyShift action_10
action_47 (22) = happyShift action_62
action_47 (23) = happyShift action_63
action_47 (26) = happyShift action_11
action_47 (31) = happyShift action_12
action_47 (32) = happyShift action_64
action_47 (33) = happyShift action_13
action_47 (37) = happyShift action_14
action_47 (38) = happyShift action_65
action_47 (39) = happyShift action_66
action_47 (40) = happyShift action_67
action_47 (41) = happyShift action_68
action_47 (43) = happyShift action_17
action_47 (45) = happyShift action_18
action_47 (46) = happyShift action_69
action_47 (48) = happyShift action_20
action_47 (58) = happyShift action_30
action_47 (4) = happyGoto action_61
action_47 _ = happyReduce_27

action_48 (11) = happyShift action_4
action_48 (12) = happyShift action_5
action_48 (13) = happyShift action_6
action_48 (14) = happyShift action_2
action_48 (16) = happyShift action_7
action_48 (17) = happyShift action_8
action_48 (18) = happyShift action_9
action_48 (20) = happyShift action_10
action_48 (22) = happyShift action_62
action_48 (23) = happyShift action_63
action_48 (26) = happyShift action_11
action_48 (31) = happyShift action_12
action_48 (32) = happyShift action_64
action_48 (33) = happyShift action_13
action_48 (37) = happyShift action_14
action_48 (38) = happyShift action_65
action_48 (39) = happyShift action_66
action_48 (40) = happyShift action_67
action_48 (41) = happyShift action_68
action_48 (42) = happyShift action_16
action_48 (43) = happyShift action_17
action_48 (45) = happyShift action_18
action_48 (46) = happyShift action_69
action_48 (47) = happyShift action_19
action_48 (48) = happyShift action_20
action_48 (49) = happyShift action_21
action_48 (50) = happyShift action_22
action_48 (51) = happyShift action_23
action_48 (52) = happyShift action_24
action_48 (53) = happyShift action_25
action_48 (54) = happyShift action_26
action_48 (55) = happyShift action_27
action_48 (56) = happyShift action_28
action_48 (57) = happyShift action_29
action_48 (58) = happyShift action_30
action_48 (59) = happyShift action_31
action_48 (60) = happyShift action_32
action_48 (61) = happyShift action_33
action_48 (4) = happyGoto action_86
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (11) = happyShift action_85
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_84
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_4
action_51 (12) = happyShift action_5
action_51 (13) = happyShift action_6
action_51 (17) = happyShift action_8
action_51 (20) = happyShift action_10
action_51 (22) = happyShift action_62
action_51 (23) = happyShift action_63
action_51 (26) = happyShift action_11
action_51 (31) = happyShift action_12
action_51 (32) = happyShift action_64
action_51 (33) = happyShift action_13
action_51 (37) = happyShift action_14
action_51 (38) = happyShift action_65
action_51 (39) = happyShift action_66
action_51 (40) = happyShift action_67
action_51 (41) = happyShift action_68
action_51 (42) = happyShift action_16
action_51 (43) = happyShift action_17
action_51 (45) = happyShift action_18
action_51 (46) = happyShift action_69
action_51 (48) = happyShift action_20
action_51 (58) = happyShift action_30
action_51 (61) = happyShift action_33
action_51 (4) = happyGoto action_61
action_51 _ = happyReduce_8

action_52 (11) = happyShift action_4
action_52 (12) = happyShift action_5
action_52 (13) = happyShift action_6
action_52 (17) = happyShift action_8
action_52 (20) = happyShift action_10
action_52 (22) = happyShift action_62
action_52 (23) = happyShift action_63
action_52 (26) = happyShift action_11
action_52 (31) = happyShift action_12
action_52 (32) = happyShift action_64
action_52 (33) = happyShift action_13
action_52 (37) = happyShift action_14
action_52 (38) = happyShift action_65
action_52 (39) = happyShift action_66
action_52 (40) = happyShift action_67
action_52 (41) = happyShift action_68
action_52 (42) = happyShift action_16
action_52 (43) = happyShift action_17
action_52 (45) = happyShift action_18
action_52 (46) = happyShift action_69
action_52 (47) = happyShift action_19
action_52 (48) = happyShift action_20
action_52 (58) = happyShift action_30
action_52 (61) = happyShift action_33
action_52 (4) = happyGoto action_61
action_52 _ = happyReduce_10

action_53 (11) = happyShift action_4
action_53 (12) = happyShift action_5
action_53 (13) = happyShift action_6
action_53 (17) = happyShift action_8
action_53 (20) = happyShift action_10
action_53 (22) = happyShift action_62
action_53 (23) = happyShift action_63
action_53 (26) = happyShift action_11
action_53 (31) = happyShift action_12
action_53 (32) = happyShift action_64
action_53 (33) = happyShift action_13
action_53 (38) = happyShift action_65
action_53 (39) = happyShift action_66
action_53 (40) = happyShift action_67
action_53 (41) = happyShift action_68
action_53 (43) = happyShift action_17
action_53 (45) = happyShift action_18
action_53 (46) = happyShift action_69
action_53 (58) = happyShift action_30
action_53 (4) = happyGoto action_61
action_53 _ = happyReduce_14

action_54 (11) = happyShift action_4
action_54 (12) = happyShift action_5
action_54 (13) = happyShift action_6
action_54 (14) = happyShift action_2
action_54 (16) = happyShift action_7
action_54 (17) = happyShift action_8
action_54 (18) = happyShift action_9
action_54 (20) = happyShift action_10
action_54 (22) = happyShift action_62
action_54 (23) = happyShift action_63
action_54 (26) = happyShift action_11
action_54 (31) = happyShift action_12
action_54 (32) = happyShift action_64
action_54 (33) = happyShift action_13
action_54 (35) = happyShift action_83
action_54 (37) = happyShift action_14
action_54 (38) = happyShift action_65
action_54 (39) = happyShift action_66
action_54 (40) = happyShift action_67
action_54 (41) = happyShift action_68
action_54 (42) = happyShift action_16
action_54 (43) = happyShift action_17
action_54 (45) = happyShift action_18
action_54 (46) = happyShift action_69
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
action_54 (60) = happyShift action_32
action_54 (61) = happyShift action_33
action_54 (4) = happyGoto action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (11) = happyShift action_4
action_55 (12) = happyShift action_5
action_55 (13) = happyShift action_6
action_55 (14) = happyShift action_2
action_55 (16) = happyShift action_7
action_55 (17) = happyShift action_8
action_55 (18) = happyShift action_9
action_55 (20) = happyShift action_10
action_55 (22) = happyShift action_62
action_55 (23) = happyShift action_63
action_55 (26) = happyShift action_11
action_55 (27) = happyShift action_82
action_55 (31) = happyShift action_12
action_55 (32) = happyShift action_64
action_55 (33) = happyShift action_13
action_55 (37) = happyShift action_14
action_55 (38) = happyShift action_65
action_55 (39) = happyShift action_66
action_55 (40) = happyShift action_67
action_55 (41) = happyShift action_68
action_55 (42) = happyShift action_16
action_55 (43) = happyShift action_17
action_55 (45) = happyShift action_18
action_55 (46) = happyShift action_69
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
action_55 (60) = happyShift action_32
action_55 (61) = happyShift action_33
action_55 (4) = happyGoto action_61
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (31) = happyShift action_81
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (11) = happyShift action_4
action_57 (12) = happyShift action_5
action_57 (13) = happyShift action_6
action_57 (17) = happyShift action_8
action_57 (18) = happyShift action_9
action_57 (20) = happyShift action_10
action_57 (22) = happyShift action_62
action_57 (23) = happyShift action_63
action_57 (26) = happyShift action_11
action_57 (31) = happyShift action_12
action_57 (32) = happyShift action_64
action_57 (33) = happyShift action_13
action_57 (37) = happyShift action_14
action_57 (38) = happyShift action_65
action_57 (39) = happyShift action_66
action_57 (40) = happyShift action_67
action_57 (41) = happyShift action_68
action_57 (42) = happyShift action_16
action_57 (43) = happyShift action_17
action_57 (45) = happyShift action_18
action_57 (46) = happyShift action_69
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
action_57 (60) = happyShift action_32
action_57 (61) = happyShift action_33
action_57 (4) = happyGoto action_61
action_57 _ = happyReduce_11

action_58 (11) = happyShift action_4
action_58 (12) = happyShift action_5
action_58 (13) = happyShift action_6
action_58 (14) = happyShift action_2
action_58 (16) = happyShift action_7
action_58 (17) = happyShift action_8
action_58 (18) = happyShift action_9
action_58 (20) = happyShift action_10
action_58 (22) = happyShift action_62
action_58 (23) = happyShift action_63
action_58 (26) = happyShift action_11
action_58 (31) = happyShift action_12
action_58 (32) = happyShift action_64
action_58 (33) = happyShift action_13
action_58 (37) = happyShift action_14
action_58 (38) = happyShift action_65
action_58 (39) = happyShift action_66
action_58 (40) = happyShift action_67
action_58 (41) = happyShift action_68
action_58 (42) = happyShift action_16
action_58 (43) = happyShift action_17
action_58 (45) = happyShift action_18
action_58 (46) = happyShift action_69
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
action_58 (60) = happyShift action_32
action_58 (61) = happyShift action_33
action_58 (4) = happyGoto action_61
action_58 _ = happyReduce_24

action_59 _ = happyReduce_26

action_60 (11) = happyShift action_4
action_60 (12) = happyShift action_5
action_60 (13) = happyShift action_6
action_60 (14) = happyShift action_2
action_60 (16) = happyShift action_7
action_60 (17) = happyShift action_8
action_60 (18) = happyShift action_9
action_60 (20) = happyShift action_10
action_60 (26) = happyShift action_11
action_60 (31) = happyShift action_12
action_60 (33) = happyShift action_13
action_60 (37) = happyShift action_14
action_60 (40) = happyShift action_15
action_60 (42) = happyShift action_16
action_60 (43) = happyShift action_17
action_60 (45) = happyShift action_18
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
action_60 (60) = happyShift action_32
action_60 (61) = happyShift action_33
action_60 (4) = happyGoto action_80
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (17) = happyShift action_8
action_61 (43) = happyShift action_17
action_61 (58) = happyShift action_30
action_61 (4) = happyGoto action_61
action_61 _ = happyReduce_12

action_62 (11) = happyShift action_4
action_62 (12) = happyShift action_5
action_62 (13) = happyShift action_6
action_62 (14) = happyShift action_2
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (18) = happyShift action_9
action_62 (20) = happyShift action_10
action_62 (26) = happyShift action_11
action_62 (31) = happyShift action_12
action_62 (33) = happyShift action_13
action_62 (37) = happyShift action_14
action_62 (40) = happyShift action_15
action_62 (42) = happyShift action_16
action_62 (43) = happyShift action_17
action_62 (45) = happyShift action_18
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
action_62 (60) = happyShift action_32
action_62 (61) = happyShift action_33
action_62 (4) = happyGoto action_79
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_4
action_63 (12) = happyShift action_5
action_63 (13) = happyShift action_6
action_63 (14) = happyShift action_2
action_63 (16) = happyShift action_7
action_63 (17) = happyShift action_8
action_63 (18) = happyShift action_9
action_63 (20) = happyShift action_10
action_63 (26) = happyShift action_11
action_63 (31) = happyShift action_12
action_63 (33) = happyShift action_13
action_63 (37) = happyShift action_14
action_63 (40) = happyShift action_15
action_63 (42) = happyShift action_16
action_63 (43) = happyShift action_17
action_63 (45) = happyShift action_18
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
action_63 (60) = happyShift action_32
action_63 (61) = happyShift action_33
action_63 (4) = happyGoto action_78
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (11) = happyShift action_4
action_64 (12) = happyShift action_5
action_64 (13) = happyShift action_6
action_64 (14) = happyShift action_2
action_64 (16) = happyShift action_7
action_64 (17) = happyShift action_8
action_64 (18) = happyShift action_9
action_64 (20) = happyShift action_10
action_64 (26) = happyShift action_11
action_64 (31) = happyShift action_12
action_64 (33) = happyShift action_13
action_64 (37) = happyShift action_14
action_64 (40) = happyShift action_15
action_64 (42) = happyShift action_16
action_64 (43) = happyShift action_17
action_64 (45) = happyShift action_18
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
action_64 (60) = happyShift action_32
action_64 (61) = happyShift action_33
action_64 (4) = happyGoto action_77
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (11) = happyShift action_4
action_65 (12) = happyShift action_5
action_65 (13) = happyShift action_6
action_65 (14) = happyShift action_2
action_65 (16) = happyShift action_7
action_65 (17) = happyShift action_8
action_65 (18) = happyShift action_9
action_65 (20) = happyShift action_10
action_65 (26) = happyShift action_11
action_65 (31) = happyShift action_12
action_65 (33) = happyShift action_13
action_65 (37) = happyShift action_14
action_65 (40) = happyShift action_15
action_65 (42) = happyShift action_16
action_65 (43) = happyShift action_17
action_65 (45) = happyShift action_18
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
action_65 (60) = happyShift action_32
action_65 (61) = happyShift action_33
action_65 (4) = happyGoto action_76
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_4
action_66 (12) = happyShift action_5
action_66 (13) = happyShift action_6
action_66 (14) = happyShift action_2
action_66 (16) = happyShift action_7
action_66 (17) = happyShift action_8
action_66 (18) = happyShift action_9
action_66 (20) = happyShift action_10
action_66 (26) = happyShift action_11
action_66 (31) = happyShift action_12
action_66 (33) = happyShift action_13
action_66 (37) = happyShift action_14
action_66 (40) = happyShift action_15
action_66 (42) = happyShift action_16
action_66 (43) = happyShift action_17
action_66 (45) = happyShift action_18
action_66 (47) = happyShift action_19
action_66 (48) = happyShift action_20
action_66 (49) = happyShift action_21
action_66 (50) = happyShift action_22
action_66 (51) = happyShift action_23
action_66 (52) = happyShift action_24
action_66 (53) = happyShift action_25
action_66 (54) = happyShift action_26
action_66 (55) = happyShift action_27
action_66 (56) = happyShift action_28
action_66 (57) = happyShift action_29
action_66 (58) = happyShift action_30
action_66 (59) = happyShift action_31
action_66 (60) = happyShift action_32
action_66 (61) = happyShift action_33
action_66 (4) = happyGoto action_75
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (11) = happyShift action_4
action_67 (12) = happyShift action_5
action_67 (13) = happyShift action_6
action_67 (14) = happyShift action_2
action_67 (16) = happyShift action_7
action_67 (17) = happyShift action_8
action_67 (18) = happyShift action_9
action_67 (20) = happyShift action_10
action_67 (26) = happyShift action_11
action_67 (31) = happyShift action_12
action_67 (33) = happyShift action_13
action_67 (37) = happyShift action_14
action_67 (40) = happyShift action_15
action_67 (42) = happyShift action_16
action_67 (43) = happyShift action_17
action_67 (45) = happyShift action_18
action_67 (47) = happyShift action_19
action_67 (48) = happyShift action_20
action_67 (49) = happyShift action_21
action_67 (50) = happyShift action_22
action_67 (51) = happyShift action_23
action_67 (52) = happyShift action_24
action_67 (53) = happyShift action_25
action_67 (54) = happyShift action_26
action_67 (55) = happyShift action_27
action_67 (56) = happyShift action_28
action_67 (57) = happyShift action_29
action_67 (58) = happyShift action_30
action_67 (59) = happyShift action_31
action_67 (60) = happyShift action_32
action_67 (61) = happyShift action_33
action_67 (4) = happyGoto action_74
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (11) = happyShift action_4
action_68 (12) = happyShift action_5
action_68 (13) = happyShift action_6
action_68 (14) = happyShift action_2
action_68 (16) = happyShift action_7
action_68 (17) = happyShift action_8
action_68 (18) = happyShift action_9
action_68 (20) = happyShift action_10
action_68 (26) = happyShift action_11
action_68 (31) = happyShift action_12
action_68 (33) = happyShift action_13
action_68 (37) = happyShift action_14
action_68 (40) = happyShift action_15
action_68 (42) = happyShift action_16
action_68 (43) = happyShift action_17
action_68 (45) = happyShift action_18
action_68 (47) = happyShift action_19
action_68 (48) = happyShift action_20
action_68 (49) = happyShift action_21
action_68 (50) = happyShift action_22
action_68 (51) = happyShift action_23
action_68 (52) = happyShift action_24
action_68 (53) = happyShift action_25
action_68 (54) = happyShift action_26
action_68 (55) = happyShift action_27
action_68 (56) = happyShift action_28
action_68 (57) = happyShift action_29
action_68 (58) = happyShift action_30
action_68 (59) = happyShift action_31
action_68 (60) = happyShift action_32
action_68 (61) = happyShift action_33
action_68 (4) = happyGoto action_73
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (11) = happyShift action_4
action_69 (12) = happyShift action_5
action_69 (13) = happyShift action_6
action_69 (14) = happyShift action_2
action_69 (16) = happyShift action_7
action_69 (17) = happyShift action_8
action_69 (18) = happyShift action_9
action_69 (20) = happyShift action_10
action_69 (26) = happyShift action_11
action_69 (31) = happyShift action_12
action_69 (33) = happyShift action_13
action_69 (37) = happyShift action_14
action_69 (40) = happyShift action_15
action_69 (42) = happyShift action_16
action_69 (43) = happyShift action_17
action_69 (45) = happyShift action_18
action_69 (47) = happyShift action_19
action_69 (48) = happyShift action_20
action_69 (49) = happyShift action_21
action_69 (50) = happyShift action_22
action_69 (51) = happyShift action_23
action_69 (52) = happyShift action_24
action_69 (53) = happyShift action_25
action_69 (54) = happyShift action_26
action_69 (55) = happyShift action_27
action_69 (56) = happyShift action_28
action_69 (57) = happyShift action_29
action_69 (58) = happyShift action_30
action_69 (59) = happyShift action_31
action_69 (60) = happyShift action_32
action_69 (61) = happyShift action_33
action_69 (4) = happyGoto action_72
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (11) = happyShift action_4
action_70 (12) = happyShift action_5
action_70 (13) = happyShift action_6
action_70 (14) = happyShift action_2
action_70 (15) = happyShift action_71
action_70 (16) = happyShift action_7
action_70 (17) = happyShift action_8
action_70 (18) = happyShift action_9
action_70 (20) = happyShift action_10
action_70 (22) = happyShift action_62
action_70 (23) = happyShift action_63
action_70 (26) = happyShift action_11
action_70 (31) = happyShift action_12
action_70 (32) = happyShift action_64
action_70 (33) = happyShift action_13
action_70 (37) = happyShift action_14
action_70 (38) = happyShift action_65
action_70 (39) = happyShift action_66
action_70 (40) = happyShift action_67
action_70 (41) = happyShift action_68
action_70 (42) = happyShift action_16
action_70 (43) = happyShift action_17
action_70 (45) = happyShift action_18
action_70 (46) = happyShift action_69
action_70 (47) = happyShift action_19
action_70 (48) = happyShift action_20
action_70 (49) = happyShift action_21
action_70 (50) = happyShift action_22
action_70 (51) = happyShift action_23
action_70 (52) = happyShift action_24
action_70 (53) = happyShift action_25
action_70 (54) = happyShift action_26
action_70 (55) = happyShift action_27
action_70 (56) = happyShift action_28
action_70 (57) = happyShift action_29
action_70 (58) = happyShift action_30
action_70 (59) = happyShift action_31
action_70 (60) = happyShift action_32
action_70 (61) = happyShift action_33
action_70 (4) = happyGoto action_61
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_1

action_72 (17) = happyShift action_8
action_72 (22) = happyShift action_62
action_72 (23) = happyShift action_63
action_72 (32) = happyShift action_64
action_72 (38) = happyShift action_65
action_72 (39) = happyShift action_66
action_72 (40) = happyShift action_67
action_72 (41) = happyShift action_68
action_72 (43) = happyShift action_17
action_72 (58) = happyShift action_30
action_72 (4) = happyGoto action_61
action_72 _ = happyReduce_29

action_73 (17) = happyShift action_8
action_73 (22) = happyShift action_62
action_73 (23) = happyShift action_63
action_73 (32) = happyShift action_64
action_73 (43) = happyShift action_17
action_73 (58) = happyShift action_30
action_73 (4) = happyGoto action_61
action_73 _ = happyReduce_33

action_74 (17) = happyShift action_8
action_74 (22) = happyShift action_62
action_74 (23) = happyShift action_63
action_74 (32) = happyShift action_64
action_74 (39) = happyShift action_66
action_74 (41) = happyShift action_68
action_74 (43) = happyShift action_17
action_74 (58) = happyShift action_30
action_74 (4) = happyGoto action_61
action_74 _ = happyReduce_31

action_75 (17) = happyShift action_8
action_75 (22) = happyShift action_62
action_75 (23) = happyShift action_63
action_75 (32) = happyShift action_64
action_75 (43) = happyShift action_17
action_75 (58) = happyShift action_30
action_75 (4) = happyGoto action_61
action_75 _ = happyReduce_32

action_76 (17) = happyShift action_8
action_76 (22) = happyShift action_62
action_76 (23) = happyShift action_63
action_76 (32) = happyShift action_64
action_76 (39) = happyShift action_66
action_76 (41) = happyShift action_68
action_76 (43) = happyShift action_17
action_76 (58) = happyShift action_30
action_76 (4) = happyGoto action_61
action_76 _ = happyReduce_30

action_77 (17) = happyShift action_8
action_77 (32) = happyShift action_64
action_77 (43) = happyShift action_17
action_77 (58) = happyShift action_30
action_77 (4) = happyGoto action_61
action_77 _ = happyReduce_9

action_78 (17) = happyShift action_8
action_78 (32) = happyShift action_64
action_78 (43) = happyShift action_17
action_78 (58) = happyShift action_30
action_78 (4) = happyGoto action_61
action_78 _ = happyReduce_35

action_79 (17) = happyShift action_8
action_79 (32) = happyShift action_64
action_79 (43) = happyShift action_17
action_79 (58) = happyShift action_30
action_79 (4) = happyGoto action_61
action_79 _ = happyReduce_34

action_80 (17) = happyShift action_8
action_80 (43) = happyShift action_17
action_80 (58) = happyShift action_30
action_80 (4) = happyGoto action_61
action_80 _ = happyReduce_36

action_81 (25) = happyShift action_96
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_41

action_83 (11) = happyShift action_4
action_83 (12) = happyShift action_5
action_83 (13) = happyShift action_6
action_83 (14) = happyShift action_2
action_83 (16) = happyShift action_7
action_83 (17) = happyShift action_8
action_83 (18) = happyShift action_9
action_83 (20) = happyShift action_10
action_83 (26) = happyShift action_11
action_83 (31) = happyShift action_12
action_83 (33) = happyShift action_13
action_83 (37) = happyShift action_14
action_83 (40) = happyShift action_15
action_83 (42) = happyShift action_16
action_83 (43) = happyShift action_17
action_83 (45) = happyShift action_18
action_83 (47) = happyShift action_19
action_83 (48) = happyShift action_20
action_83 (49) = happyShift action_21
action_83 (50) = happyShift action_22
action_83 (51) = happyShift action_23
action_83 (52) = happyShift action_24
action_83 (53) = happyShift action_25
action_83 (54) = happyShift action_26
action_83 (55) = happyShift action_27
action_83 (56) = happyShift action_28
action_83 (57) = happyShift action_29
action_83 (58) = happyShift action_30
action_83 (59) = happyShift action_31
action_83 (60) = happyShift action_32
action_83 (61) = happyShift action_33
action_83 (4) = happyGoto action_95
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (25) = happyShift action_94
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (11) = happyShift action_4
action_85 (12) = happyShift action_5
action_85 (13) = happyShift action_6
action_85 (14) = happyShift action_2
action_85 (16) = happyShift action_7
action_85 (17) = happyShift action_8
action_85 (18) = happyShift action_9
action_85 (20) = happyShift action_10
action_85 (26) = happyShift action_11
action_85 (31) = happyShift action_12
action_85 (33) = happyShift action_13
action_85 (37) = happyShift action_14
action_85 (40) = happyShift action_15
action_85 (42) = happyShift action_16
action_85 (43) = happyShift action_17
action_85 (45) = happyShift action_18
action_85 (47) = happyShift action_19
action_85 (48) = happyShift action_20
action_85 (49) = happyShift action_21
action_85 (50) = happyShift action_22
action_85 (51) = happyShift action_23
action_85 (52) = happyShift action_24
action_85 (53) = happyShift action_25
action_85 (54) = happyShift action_26
action_85 (55) = happyShift action_27
action_85 (56) = happyShift action_28
action_85 (57) = happyShift action_29
action_85 (58) = happyShift action_30
action_85 (59) = happyShift action_31
action_85 (60) = happyShift action_32
action_85 (61) = happyShift action_33
action_85 (4) = happyGoto action_93
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (14) = happyReduce_12
action_86 (15) = happyReduce_25
action_86 (17) = happyShift action_8
action_86 (18) = happyReduce_12
action_86 (20) = happyReduce_12
action_86 (21) = happyReduce_25
action_86 (27) = happyReduce_25
action_86 (32) = happyReduce_12
action_86 (33) = happyReduce_12
action_86 (34) = happyReduce_25
action_86 (35) = happyReduce_25
action_86 (36) = happyReduce_25
action_86 (37) = happyReduce_12
action_86 (42) = happyReduce_12
action_86 (43) = happyShift action_17
action_86 (45) = happyReduce_12
action_86 (47) = happyReduce_12
action_86 (49) = happyReduce_12
action_86 (50) = happyReduce_12
action_86 (51) = happyReduce_12
action_86 (53) = happyReduce_12
action_86 (54) = happyReduce_12
action_86 (55) = happyReduce_12
action_86 (56) = happyReduce_12
action_86 (57) = happyReduce_12
action_86 (58) = happyShift action_30
action_86 (59) = happyReduce_12
action_86 (60) = happyReduce_12
action_86 (61) = happyReduce_12
action_86 (62) = happyReduce_25
action_86 (4) = happyGoto action_61
action_86 _ = happyReduce_12

action_87 (14) = happyReduce_12
action_87 (15) = happyReduce_19
action_87 (17) = happyShift action_8
action_87 (18) = happyReduce_12
action_87 (20) = happyReduce_12
action_87 (21) = happyReduce_19
action_87 (27) = happyReduce_19
action_87 (32) = happyReduce_12
action_87 (33) = happyReduce_12
action_87 (34) = happyReduce_19
action_87 (35) = happyReduce_19
action_87 (36) = happyReduce_19
action_87 (37) = happyReduce_12
action_87 (42) = happyReduce_12
action_87 (43) = happyShift action_17
action_87 (45) = happyReduce_12
action_87 (49) = happyReduce_12
action_87 (50) = happyReduce_12
action_87 (51) = happyReduce_12
action_87 (53) = happyReduce_12
action_87 (55) = happyReduce_12
action_87 (58) = happyShift action_30
action_87 (59) = happyReduce_12
action_87 (60) = happyReduce_12
action_87 (61) = happyReduce_12
action_87 (62) = happyReduce_19
action_87 (4) = happyGoto action_61
action_87 _ = happyReduce_12

action_88 (15) = happyReduce_2
action_88 (17) = happyShift action_8
action_88 (21) = happyReduce_2
action_88 (27) = happyReduce_2
action_88 (34) = happyReduce_2
action_88 (35) = happyReduce_2
action_88 (36) = happyReduce_2
action_88 (43) = happyShift action_17
action_88 (58) = happyShift action_30
action_88 (62) = happyReduce_2
action_88 (4) = happyGoto action_61
action_88 _ = happyReduce_12

action_89 (14) = happyReduce_12
action_89 (15) = happyReduce_21
action_89 (17) = happyShift action_8
action_89 (18) = happyReduce_12
action_89 (20) = happyReduce_12
action_89 (21) = happyReduce_21
action_89 (27) = happyReduce_21
action_89 (32) = happyReduce_12
action_89 (33) = happyReduce_12
action_89 (34) = happyReduce_21
action_89 (35) = happyReduce_21
action_89 (36) = happyReduce_21
action_89 (37) = happyReduce_12
action_89 (42) = happyReduce_12
action_89 (43) = happyShift action_17
action_89 (45) = happyReduce_12
action_89 (49) = happyReduce_12
action_89 (50) = happyReduce_12
action_89 (51) = happyReduce_12
action_89 (53) = happyReduce_12
action_89 (54) = happyReduce_12
action_89 (55) = happyReduce_12
action_89 (56) = happyReduce_12
action_89 (58) = happyShift action_30
action_89 (59) = happyReduce_12
action_89 (60) = happyReduce_12
action_89 (61) = happyReduce_12
action_89 (62) = happyReduce_21
action_89 (4) = happyGoto action_61
action_89 _ = happyReduce_12

action_90 (15) = happyReduce_7
action_90 (17) = happyShift action_8
action_90 (21) = happyReduce_7
action_90 (27) = happyReduce_7
action_90 (34) = happyReduce_7
action_90 (35) = happyReduce_7
action_90 (36) = happyReduce_7
action_90 (43) = happyShift action_17
action_90 (58) = happyShift action_30
action_90 (62) = happyReduce_7
action_90 (4) = happyGoto action_61
action_90 _ = happyReduce_12

action_91 (15) = happyReduce_6
action_91 (17) = happyShift action_8
action_91 (21) = happyReduce_6
action_91 (27) = happyReduce_6
action_91 (34) = happyReduce_6
action_91 (35) = happyReduce_6
action_91 (36) = happyReduce_6
action_91 (43) = happyShift action_17
action_91 (58) = happyShift action_30
action_91 (62) = happyReduce_6
action_91 (4) = happyGoto action_61
action_91 _ = happyReduce_12

action_92 (15) = happyReduce_4
action_92 (17) = happyShift action_8
action_92 (21) = happyReduce_4
action_92 (27) = happyReduce_4
action_92 (34) = happyReduce_4
action_92 (35) = happyReduce_4
action_92 (36) = happyReduce_4
action_92 (43) = happyShift action_17
action_92 (58) = happyShift action_30
action_92 (62) = happyReduce_4
action_92 (4) = happyGoto action_61
action_92 _ = happyReduce_12

action_93 (11) = happyFail []
action_93 (12) = happyFail []
action_93 (13) = happyFail []
action_93 (17) = happyShift action_8
action_93 (22) = happyShift action_62
action_93 (23) = happyShift action_63
action_93 (26) = happyFail []
action_93 (31) = happyFail []
action_93 (32) = happyShift action_64
action_93 (38) = happyShift action_65
action_93 (39) = happyShift action_66
action_93 (40) = happyShift action_67
action_93 (41) = happyShift action_68
action_93 (43) = happyShift action_17
action_93 (46) = happyShift action_69
action_93 (58) = happyShift action_30
action_93 (4) = happyGoto action_61
action_93 _ = happyReduce_16

action_94 (6) = happyShift action_98
action_94 (7) = happyShift action_99
action_94 (8) = happyShift action_100
action_94 (9) = happyShift action_101
action_94 (10) = happyShift action_102
action_94 (5) = happyGoto action_104
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (11) = happyShift action_4
action_95 (12) = happyShift action_5
action_95 (13) = happyShift action_6
action_95 (14) = happyShift action_2
action_95 (16) = happyShift action_7
action_95 (17) = happyShift action_8
action_95 (18) = happyShift action_9
action_95 (20) = happyShift action_10
action_95 (22) = happyShift action_62
action_95 (23) = happyShift action_63
action_95 (26) = happyShift action_11
action_95 (31) = happyShift action_12
action_95 (32) = happyShift action_64
action_95 (33) = happyShift action_13
action_95 (34) = happyShift action_103
action_95 (37) = happyShift action_14
action_95 (38) = happyShift action_65
action_95 (39) = happyShift action_66
action_95 (40) = happyShift action_67
action_95 (41) = happyShift action_68
action_95 (42) = happyShift action_16
action_95 (43) = happyShift action_17
action_95 (45) = happyShift action_18
action_95 (46) = happyShift action_69
action_95 (47) = happyShift action_19
action_95 (48) = happyShift action_20
action_95 (49) = happyShift action_21
action_95 (50) = happyShift action_22
action_95 (51) = happyShift action_23
action_95 (52) = happyShift action_24
action_95 (53) = happyShift action_25
action_95 (54) = happyShift action_26
action_95 (55) = happyShift action_27
action_95 (56) = happyShift action_28
action_95 (57) = happyShift action_29
action_95 (58) = happyShift action_30
action_95 (59) = happyShift action_31
action_95 (60) = happyShift action_32
action_95 (61) = happyShift action_33
action_95 (4) = happyGoto action_61
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (6) = happyShift action_98
action_96 (7) = happyShift action_99
action_96 (8) = happyShift action_100
action_96 (9) = happyShift action_101
action_96 (10) = happyShift action_102
action_96 (5) = happyGoto action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (27) = happyShift action_108
action_97 (44) = happyShift action_106
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_42

action_99 _ = happyReduce_43

action_100 _ = happyReduce_45

action_101 _ = happyReduce_46

action_102 _ = happyReduce_47

action_103 (11) = happyShift action_4
action_103 (12) = happyShift action_5
action_103 (13) = happyShift action_6
action_103 (14) = happyShift action_2
action_103 (16) = happyShift action_7
action_103 (17) = happyShift action_8
action_103 (18) = happyShift action_9
action_103 (20) = happyShift action_10
action_103 (26) = happyShift action_11
action_103 (31) = happyShift action_12
action_103 (33) = happyShift action_13
action_103 (37) = happyShift action_14
action_103 (40) = happyShift action_15
action_103 (42) = happyShift action_16
action_103 (43) = happyShift action_17
action_103 (45) = happyShift action_18
action_103 (47) = happyShift action_19
action_103 (48) = happyShift action_20
action_103 (49) = happyShift action_21
action_103 (50) = happyShift action_22
action_103 (51) = happyShift action_23
action_103 (52) = happyShift action_24
action_103 (53) = happyShift action_25
action_103 (54) = happyShift action_26
action_103 (55) = happyShift action_27
action_103 (56) = happyShift action_28
action_103 (57) = happyShift action_29
action_103 (58) = happyShift action_30
action_103 (59) = happyShift action_31
action_103 (60) = happyShift action_32
action_103 (61) = happyShift action_33
action_103 (4) = happyGoto action_107
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (27) = happyShift action_105
action_104 (44) = happyShift action_106
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (11) = happyShift action_4
action_105 (12) = happyShift action_5
action_105 (13) = happyShift action_6
action_105 (14) = happyShift action_2
action_105 (16) = happyShift action_7
action_105 (17) = happyShift action_8
action_105 (18) = happyShift action_9
action_105 (20) = happyShift action_10
action_105 (26) = happyShift action_11
action_105 (31) = happyShift action_12
action_105 (33) = happyShift action_13
action_105 (37) = happyShift action_14
action_105 (40) = happyShift action_15
action_105 (42) = happyShift action_16
action_105 (43) = happyShift action_17
action_105 (45) = happyShift action_18
action_105 (47) = happyShift action_19
action_105 (48) = happyShift action_20
action_105 (49) = happyShift action_21
action_105 (50) = happyShift action_22
action_105 (51) = happyShift action_23
action_105 (52) = happyShift action_24
action_105 (53) = happyShift action_25
action_105 (54) = happyShift action_26
action_105 (55) = happyShift action_27
action_105 (56) = happyShift action_28
action_105 (57) = happyShift action_29
action_105 (58) = happyShift action_30
action_105 (59) = happyShift action_31
action_105 (60) = happyShift action_32
action_105 (61) = happyShift action_33
action_105 (4) = happyGoto action_112
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (6) = happyShift action_98
action_106 (7) = happyShift action_99
action_106 (8) = happyShift action_100
action_106 (9) = happyShift action_101
action_106 (10) = happyShift action_102
action_106 (5) = happyGoto action_111
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (11) = happyShift action_4
action_107 (12) = happyShift action_5
action_107 (13) = happyShift action_6
action_107 (14) = happyShift action_2
action_107 (16) = happyShift action_7
action_107 (17) = happyShift action_8
action_107 (18) = happyShift action_9
action_107 (20) = happyShift action_10
action_107 (22) = happyShift action_62
action_107 (23) = happyShift action_63
action_107 (26) = happyShift action_11
action_107 (31) = happyShift action_12
action_107 (32) = happyShift action_64
action_107 (33) = happyShift action_13
action_107 (36) = happyShift action_110
action_107 (37) = happyShift action_14
action_107 (38) = happyShift action_65
action_107 (39) = happyShift action_66
action_107 (40) = happyShift action_67
action_107 (41) = happyShift action_68
action_107 (42) = happyShift action_16
action_107 (43) = happyShift action_17
action_107 (45) = happyShift action_18
action_107 (46) = happyShift action_69
action_107 (47) = happyShift action_19
action_107 (48) = happyShift action_20
action_107 (49) = happyShift action_21
action_107 (50) = happyShift action_22
action_107 (51) = happyShift action_23
action_107 (52) = happyShift action_24
action_107 (53) = happyShift action_25
action_107 (54) = happyShift action_26
action_107 (55) = happyShift action_27
action_107 (56) = happyShift action_28
action_107 (57) = happyShift action_29
action_107 (58) = happyShift action_30
action_107 (59) = happyShift action_31
action_107 (60) = happyShift action_32
action_107 (61) = happyShift action_33
action_107 (4) = happyGoto action_61
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (24) = happyShift action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (11) = happyShift action_4
action_109 (12) = happyShift action_5
action_109 (13) = happyShift action_6
action_109 (14) = happyShift action_2
action_109 (16) = happyShift action_7
action_109 (17) = happyShift action_8
action_109 (18) = happyShift action_9
action_109 (20) = happyShift action_10
action_109 (26) = happyShift action_11
action_109 (31) = happyShift action_12
action_109 (33) = happyShift action_13
action_109 (37) = happyShift action_14
action_109 (40) = happyShift action_15
action_109 (42) = happyShift action_16
action_109 (43) = happyShift action_17
action_109 (45) = happyShift action_18
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
action_109 (60) = happyShift action_32
action_109 (61) = happyShift action_33
action_109 (4) = happyGoto action_113
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_3

action_111 _ = happyReduce_44

action_112 (11) = happyFail []
action_112 (12) = happyFail []
action_112 (13) = happyFail []
action_112 (17) = happyShift action_8
action_112 (22) = happyShift action_62
action_112 (23) = happyShift action_63
action_112 (26) = happyFail []
action_112 (31) = happyFail []
action_112 (32) = happyShift action_64
action_112 (38) = happyShift action_65
action_112 (39) = happyShift action_66
action_112 (40) = happyShift action_67
action_112 (41) = happyShift action_68
action_112 (43) = happyShift action_17
action_112 (46) = happyShift action_69
action_112 (58) = happyShift action_30
action_112 (4) = happyGoto action_61
action_112 _ = happyReduce_13

action_113 (11) = happyShift action_4
action_113 (12) = happyShift action_5
action_113 (13) = happyShift action_6
action_113 (14) = happyShift action_2
action_113 (16) = happyShift action_7
action_113 (17) = happyShift action_8
action_113 (18) = happyShift action_9
action_113 (20) = happyShift action_10
action_113 (21) = happyShift action_114
action_113 (22) = happyShift action_62
action_113 (23) = happyShift action_63
action_113 (26) = happyShift action_11
action_113 (31) = happyShift action_12
action_113 (32) = happyShift action_64
action_113 (33) = happyShift action_13
action_113 (37) = happyShift action_14
action_113 (38) = happyShift action_65
action_113 (39) = happyShift action_66
action_113 (40) = happyShift action_67
action_113 (41) = happyShift action_68
action_113 (42) = happyShift action_16
action_113 (43) = happyShift action_17
action_113 (45) = happyShift action_18
action_113 (46) = happyShift action_69
action_113 (47) = happyShift action_19
action_113 (48) = happyShift action_20
action_113 (49) = happyShift action_21
action_113 (50) = happyShift action_22
action_113 (51) = happyShift action_23
action_113 (52) = happyShift action_24
action_113 (53) = happyShift action_25
action_113 (54) = happyShift action_26
action_113 (55) = happyShift action_27
action_113 (56) = happyShift action_28
action_113 (57) = happyShift action_29
action_113 (58) = happyShift action_30
action_113 (59) = happyShift action_31
action_113 (60) = happyShift action_32
action_113 (61) = happyShift action_33
action_113 (4) = happyGoto action_61
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (11) = happyShift action_4
action_114 (12) = happyShift action_5
action_114 (13) = happyShift action_6
action_114 (14) = happyShift action_2
action_114 (16) = happyShift action_7
action_114 (17) = happyShift action_8
action_114 (18) = happyShift action_9
action_114 (20) = happyShift action_10
action_114 (26) = happyShift action_11
action_114 (31) = happyShift action_12
action_114 (33) = happyShift action_13
action_114 (37) = happyShift action_14
action_114 (40) = happyShift action_15
action_114 (42) = happyShift action_16
action_114 (43) = happyShift action_17
action_114 (45) = happyShift action_18
action_114 (47) = happyShift action_19
action_114 (48) = happyShift action_20
action_114 (49) = happyShift action_21
action_114 (50) = happyShift action_22
action_114 (51) = happyShift action_23
action_114 (52) = happyShift action_24
action_114 (53) = happyShift action_25
action_114 (54) = happyShift action_26
action_114 (55) = happyShift action_27
action_114 (56) = happyShift action_28
action_114 (57) = happyShift action_29
action_114 (58) = happyShift action_30
action_114 (59) = happyShift action_31
action_114 (60) = happyShift action_32
action_114 (61) = happyShift action_33
action_114 (4) = happyGoto action_115
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (11) = happyShift action_4
action_115 (12) = happyShift action_5
action_115 (13) = happyShift action_6
action_115 (14) = happyShift action_2
action_115 (16) = happyShift action_7
action_115 (17) = happyShift action_8
action_115 (18) = happyShift action_9
action_115 (20) = happyShift action_10
action_115 (22) = happyShift action_62
action_115 (23) = happyShift action_63
action_115 (26) = happyShift action_11
action_115 (31) = happyShift action_12
action_115 (32) = happyShift action_64
action_115 (33) = happyShift action_13
action_115 (37) = happyShift action_14
action_115 (38) = happyShift action_65
action_115 (39) = happyShift action_66
action_115 (40) = happyShift action_67
action_115 (41) = happyShift action_68
action_115 (42) = happyShift action_16
action_115 (43) = happyShift action_17
action_115 (45) = happyShift action_18
action_115 (46) = happyShift action_69
action_115 (47) = happyShift action_19
action_115 (48) = happyShift action_20
action_115 (49) = happyShift action_21
action_115 (50) = happyShift action_22
action_115 (51) = happyShift action_23
action_115 (52) = happyShift action_24
action_115 (53) = happyShift action_25
action_115 (54) = happyShift action_26
action_115 (55) = happyShift action_27
action_115 (56) = happyShift action_28
action_115 (57) = happyShift action_29
action_115 (58) = happyShift action_30
action_115 (59) = happyShift action_31
action_115 (60) = happyShift action_32
action_115 (61) = happyShift action_33
action_115 (4) = happyGoto action_61
action_115 _ = happyReduce_5

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

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSequence happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmGetDfSequence happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_3)
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSplitAt happy_var_2 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TmGetSequence happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  4 happyReduction_27
happyReduction_27 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmDuplicate happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_2  4 happyReduction_28
happyReduction_28 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (TmSum happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  4 happyReduction_29
happyReduction_29 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMerge happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  4 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmAdd happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  4 happyReduction_31
happyReduction_31 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmSub happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  4 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmMult happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  4 happyReduction_33
happyReduction_33 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmDiv happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  4 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmLt happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  4 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (TmGt happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  4 happyReduction_36
happyReduction_36 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInts happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  4 happyReduction_37
happyReduction_37 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmInt happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  4 happyReduction_38
happyReduction_38 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn4
		 (TmVar happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  4 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn4
		 (TmTrue
	)

happyReduce_40 = happySpecReduce_1  4 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn4
		 (TmFalse
	)

happyReduce_41 = happySpecReduce_3  4 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  5 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn5
		 (TyBool
	)

happyReduce_43 = happySpecReduce_1  5 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn5
		 (TyInt
	)

happyReduce_44 = happySpecReduce_3  5 happyReduction_44
happyReduction_44 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (TyFun happy_var_1 happy_var_3
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_1  5 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn5
		 (TyInts
	)

happyReduce_46 = happySpecReduce_1  5 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn5
		 (TyLine
	)

happyReduce_47 = happySpecReduce_1  5 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn5
		 (TyLam
	)

happyNewToken action sts stk [] =
	action 62 62 notHappyAtAll (HappyState action) sts stk []

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
	TokenGetSequence _ -> cont 16;
	TokenGetDfSequence _ -> cont 17;
	TokenPrint _ -> cont 18;
	TokenEOL _ -> cont 19;
	TokenLet _ -> cont 20;
	TokenIn _ -> cont 21;
	TokenLT _ -> cont 22;
	TokenGT _ -> cont 23;
	TokenEq _ -> cont 24;
	TokenCol _ -> cont 25;
	TokenLParen _ -> cont 26;
	TokenRParen _ -> cont 27;
	TokenLBrckt _ -> cont 28;
	TokenRBrckt _ -> cont 29;
	TokenComma _ -> cont 30;
	TokenVar _ happy_dollar_dollar -> cont 31;
	TokenSemiCol _ -> cont 32;
	TokenIf _ -> cont 33;
	TokenElse _ -> cont 34;
	TokenThen _ -> cont 35;
	TokenFi _ -> cont 36;
	TokenReverse _ -> cont 37;
	TokenAdd _ -> cont 38;
	TokenMult _ -> cont 39;
	TokenSub _ -> cont 40;
	TokenDiv _ -> cont 41;
	TokenLength _ -> cont 42;
	TokenLambda _ -> cont 43;
	TokenArr _ -> cont 44;
	TokenPush _ -> cont 45;
	TokenMerge _ -> cont 46;
	TokenSplitAt _ -> cont 47;
	TokenDuplicate _ -> cont 48;
	TokenHead _ -> cont 49;
	TokenLast _ -> cont 50;
	TokenTake _ -> cont 51;
	TokenSum _ -> cont 52;
	TokenMap _ -> cont 53;
	TokenTakeRepeat _ -> cont 54;
	TokenListsArith _ -> cont 55;
	TokenSumLists _ -> cont 56;
	TokenFibSequence _ -> cont 57;
	TokenSequence _ -> cont 58;
	TokenZipLines _ -> cont 59;
	TokenReverseLists _ -> cont 60;
	TokenWhile _ -> cont 61;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 62 tk tks = happyError' (tks, explist)
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
            | TmGetSequence Int | TmReverse Expr | TmLength Expr | TmInt Int | TmTrue | TmFalse | TmPush Int Int Expr | TmHead Expr | TmLast Expr 
            | TmSum Expr | TmTake Expr Expr| TmPrint Expr | TmEnd | TmVar String | TmMerge Expr Expr | TmSplitAt Expr Expr | TmDuplicate Expr 
            | TmTakeRepeat Expr Expr | TmSumLists Expr | TmFibSequence Expr |TmGetDfSequence Expr| TmSequence Expr |TmLine Expr Expr | TmLambda String DataType Expr |  TmApp Expr Expr 
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

